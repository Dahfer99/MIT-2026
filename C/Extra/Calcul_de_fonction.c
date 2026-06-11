

#include <stdio.h>
#include <math.h>
#include <stdlib.h>


#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif
#ifndef M_E
#define M_E  2.71828182845904523536
#endif

#define BOX 56

static const char *cur;    /* curseur courant dans l'expression   */
static double      X_VAL;  /* valeur de x fournie par l'utilisateur */
static const char *PROG;   /* argv[0] pour les messages d'erreur  */


/* Utilitaires caractères (remplacement de ctype.h) */
int    my_isdigit       (char c);
int    my_isalpha       (char c);
int    my_isalnum       (char c);

/* Utilitaires chaînes (remplacement de string.h) */
int    my_strcmp        (const char *a, const char *b);
int    my_strncmp       (const char *a, const char *b, int n);

/* Affichage et gestion d'erreurs */
void   skip_spaces      (void);
void   sep_line         (FILE *f, char c, int n);
void   print_guide      (void);
void   fatal_syntax     (const char *msg);
void   fatal_domain     (const char *msg);
void   expect           (char c);
void   print_result     (const char *expr, double x, double res);

/* Initialisation et validation */
void   validate_args    (int argc, char *argv[]);
double str_to_double    (const char *s);

/* Fonctions mathématiques avec vérification du domaine */
double apply_func       (const char *name, double arg);
double apply_pow        (double base, double exponent);

/* Parseur récursif descendant */
int    can_implicit_mult(void);
double parse_primary    (void);
double parse_power      (void);
double parse_unary      (void);
double parse_term       (void);
double parse_expr       (void);

/* Point d'entrée de l'évaluation */
double evaluate         (const char *expr, double x);


int my_isdigit(char c)
{
    return c >= '0' && c <= '9';
}

int my_isalpha(char c)
{
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}

int my_isalnum(char c)
{
    return my_isdigit(c) || my_isalpha(c);
}


int my_strcmp(const char *a, const char *b)
{
    while (*a && *a == *b) { a++; b++; }
    return (unsigned char)*a - (unsigned char)*b;
}

int my_strncmp(const char *a, const char *b, int n)
{
    while (n > 0) {
        if (*a != *b) return (unsigned char)*a - (unsigned char)*b;
        if (*a == '\0') return 0;
        a++; b++; n--;
    }
    return 0;
}


/* Saute les espaces et tabulations dans le flux courant */
void skip_spaces(void)
{
    while (*cur == ' ' || *cur == '\t')
        cur++;
}

/* Imprime une ligne de N caractères 'c' sur le flux f */
void sep_line(FILE *f, char c, int n)
{
    int i;
    fprintf(f, "  ");
    for (i = 0; i < n; i++) putc(c, f);
    putc('\n', f);
}

void print_guide(void)
{
    fprintf(stderr, "\n");
    sep_line(stderr, '-', BOX);
    fprintf(stderr, "  |%*s|\n", BOX-2, "");
    fprintf(stderr, "  |        GUIDE D'UTILISATION                        |\n");
    fprintf(stderr, "  |%*s|\n", BOX-2, "");
    sep_line(stderr, '-', BOX);
    fprintf(stderr, "  | Usage  : %s \"expression\" valeur_x\n", PROG);
    fprintf(stderr, "  |\n");
    fprintf(stderr, "  | Exemples :\n");
    fprintf(stderr, "  |   %s \"x**2+3x+1\"       1    ->  5\n",          PROG);
    fprintf(stderr, "  |   %s \"ln(cos(x)+2)\"    0    ->  1.0986...\n",   PROG);
    fprintf(stderr, "  |   %s \"pow(x,3)-2x+pi\"  2    ->  7.1415...\n",   PROG);
    fprintf(stderr, "  |   %s \"exp(-x**2)\"      0.5  ->  0.7788...\n",   PROG);
    fprintf(stderr, "  |   %s \"(x+1)(x-1)\"      3    ->  8\n",           PROG);
    fprintf(stderr, "  |\n");
    fprintf(stderr, "  | Operateurs        : +  -  *  /  ** (puissance)\n");
    fprintf(stderr, "  | Mult. implicite   : 3x   2cos(x)   (x+1)(x-1)\n");
    fprintf(stderr, "  |\n");
    fprintf(stderr, "  | Fonctions 1 arg   : ln  log10  cos  sin  tan  exp\n");
    fprintf(stderr, "  | Fonction  2 args  : pow(base, exposant)\n");
    fprintf(stderr, "  | Constantes        : pi   e\n");
    fprintf(stderr, "  |\n");
    fprintf(stderr, "  | Domaine verifie automatiquement :\n");
    fprintf(stderr, "  |   ln(x)    : x > 0  (x strictement positif)\n");
    fprintf(stderr, "  |   log10(x) : x > 0  (x strictement positif)\n");
    fprintf(stderr, "  |   tan(x)   : cos(x) != 0  (x != pi/2 + k*pi)\n");
    fprintf(stderr, "  |   pow(a,b) : a >= 0, ou b entier (sauf 0^0)\n");
    fprintf(stderr, "  |   division : denominateur != 0\n");
    sep_line(stderr, '-', BOX);
    fprintf(stderr, "\n");
}

void fatal_syntax(const char *msg)
{
    fprintf(stderr, "\n");
    sep_line(stderr, '=', BOX);
    fprintf(stderr, "  ERREUR DE SYNTAXE\n");
    sep_line(stderr, '-', BOX);
    fprintf(stderr, "  -> %s\n", msg);
    if (cur && *cur != '\0')
        fprintf(stderr, "  Contexte : '...%.30s'\n", cur);
    sep_line(stderr, '=', BOX);
    print_guide();
    exit(EXIT_FAILURE);
}

void fatal_domain(const char *msg)
{
    fprintf(stderr, "\n");
    sep_line(stderr, '=', BOX);
    fprintf(stderr, "  ERREUR DE DOMAINE\n");
    sep_line(stderr, '-', BOX);
    fprintf(stderr, "  -> %s\n", msg);
    sep_line(stderr, '=', BOX);
    fprintf(stderr, "\n");
    exit(EXIT_FAILURE);
}

void expect(char c)
{
    char buf[64];
    skip_spaces();
    if (*cur != c) {
        sprintf(buf, "Attendu '%c', mais '%c' a ete trouve",
                c, *cur ? *cur : '?');
        fatal_syntax(buf);
    }
    cur++;
}

void print_result(const char *expr, double x, double res)
{
    int i;
    fprintf(stdout, "\n");
    for (i = 0; i < BOX; i++) putchar('=');
    fprintf(stdout, "\n  f(x)   =  %s\n", expr);
    fprintf(stdout, "  f(%g)  =  %.10g\n", x, res);
    for (i = 0; i < BOX; i++) putchar('=');
    fprintf(stdout, "\n\n");
}

void validate_args(int argc, char *argv[])
{
    PROG = argv[0];
    if (argc != 3) {
        fprintf(stderr, "\n");
        sep_line(stderr, '=', BOX);
        fprintf(stderr, "  ERREUR : Nombre d'arguments incorrect.\n");
        sep_line(stderr, '-', BOX);
        fprintf(stderr, "  Reçu    : %d argument(s)\n", argc - 1);
        fprintf(stderr, "  Attendu : 2  (expression  et  valeur_x)\n");
        sep_line(stderr, '=', BOX);
        print_guide();
        exit(EXIT_FAILURE);
    }
}

double str_to_double(const char *s)
{
    char  *end;
    double v = strtod(s, &end);
    if (*end != '\0') {
        fprintf(stderr, "\n");
        sep_line(stderr, '=', BOX);
        fprintf(stderr, "  ERREUR : La valeur de x est invalide.\n");
        sep_line(stderr, '-', BOX);
        fprintf(stderr, "  '%s' n'est pas un nombre valide.\n", s);
        fprintf(stderr, "  Exemples acceptes : 1  -2  3.14  0.5  1e3\n");
        sep_line(stderr, '=', BOX);
        fprintf(stderr, "\n");
        exit(EXIT_FAILURE);
    }
    return v;
}


double apply_func(const char *name, double arg)
{
    if (my_strcmp(name, "ln") == 0) {
        if (arg <= 0.0)
            fatal_domain("ln(x) : x doit etre STRICTEMENT POSITIF (x > 0)");
        return log(arg);
    }
    if (my_strcmp(name, "log10") == 0) {
        if (arg <= 0.0)
            fatal_domain("log10(x) : x doit etre STRICTEMENT POSITIF (x > 0)");
        return log10(arg);
    }
    if (my_strcmp(name, "cos") == 0)
        return cos(arg);
    if (my_strcmp(name, "sin") == 0)
        return sin(arg);
    if (my_strcmp(name, "tan") == 0) {
        if (fabs(cos(arg)) < 1e-10)
            fatal_domain("tan(x) : INDEFINI quand cos(x)=0  (x = pi/2 + k*pi)");
        return tan(arg);
    }
    if (my_strcmp(name, "exp") == 0)
        return exp(arg);

    fatal_syntax("Nom de fonction inconnu — verifiez l'orthographe");
    return 0.0; /* jamais atteint */
}

double apply_pow(double base, double exponent)
{
    if (base == 0.0 && exponent == 0.0)
        fatal_domain("pow(0,0) : FORME INDETERMINEE");
    if (base == 0.0 && exponent < 0.0)
        fatal_domain("pow(0,b) : INDEFINI pour b < 0  (division par zero)");
    if (base < 0.0 && floor(exponent) != exponent)
        fatal_domain("pow(a,b) : a < 0 avec b non entier -> resultat COMPLEXE");
    return pow(base, exponent);
}


int can_implicit_mult(void)
{
    skip_spaces();

    /* Variable x */
    if (*cur == 'x')
        return 1;

    /* Parenthèse ouvrante : ex. (x+1)(x-1) ou 3(x+1) */
    if (*cur == '(')
        return 1;

    /* Constante e : 'e' non suivi d'une lettre ou d'un chiffre
     * (distingue 'e' de 'exp') */
    if (*cur == 'e' && !my_isalnum(cur[1]))
        return 1;

    /* Constante pi */
    if (my_strncmp(cur, "pi", 2) == 0 && !my_isalnum(cur[2]))
        return 1;

    /* Fonctions à 1 argument */
    if (my_strncmp(cur, "ln(",    3) == 0) return 1;
    if (my_strncmp(cur, "log10(", 6) == 0) return 1;
    if (my_strncmp(cur, "cos(",   4) == 0) return 1;
    if (my_strncmp(cur, "sin(",   4) == 0) return 1;
    if (my_strncmp(cur, "tan(",   4) == 0) return 1;
    if (my_strncmp(cur, "exp(",   4) == 0) return 1;

    /* Fonction à 2 arguments */
    if (my_strncmp(cur, "pow(",   4) == 0) return 1;

    return 0;
}

double parse_primary(void)
{
    /* Buffer pour le nom de la fonction (max : "log10\0" = 6 chars) */
    char   fname[8];
    int    fi;
    double val, a1, a2;

    skip_spaces();

    if (my_isdigit(*cur) || *cur == '.') {
        char *end;
        val  = strtod(cur, &end);
        cur  = end;
        return val;
    }

    if (*cur == 'x') {
        cur++;
        return X_VAL;
    }

    if (my_strncmp(cur, "pi", 2) == 0 && !my_isalnum(cur[2])) {
        cur += 2;
        return M_PI;
    }

    if (*cur == 'e' && !my_isalnum(cur[1])) {
        cur++;
        return M_E;
    }

    if (my_strncmp(cur, "pow(", 4) == 0) {
        cur += 4;
        a1 = parse_expr();
        expect(',');
        a2 = parse_expr();
        expect(')');
        return apply_pow(a1, a2);
    }

    fi = 0;
    while (fi < 7 && (my_isalpha(*cur) || (fi > 0 && my_isdigit(*cur))))
        fname[fi++] = *cur++;
    fname[fi] = '\0';
    if (fi > 0) {
        expect('(');
        val = parse_expr();
        expect(')');
        return apply_func(fname, val);
    }

    if (*cur == '(') {
        cur++;
        val = parse_expr();
        expect(')');
        return val;
    }

    fatal_syntax("Symbole inattendu — consultez le guide d'utilisation");
    return 0.0; /* jamais atteint */
}

double parse_power(void)
{
    double base, exponent;

    base = parse_primary();
    skip_spaces();
    if (*cur == '*' && cur[1] == '*') {
        cur += 2;
        exponent = parse_unary();   /* récursion → assoc. droite */
        return apply_pow(base, exponent);
    }
    return base;
}

double parse_unary(void)
{
    skip_spaces();
    if (*cur == '-') { cur++; return -parse_unary(); }
    if (*cur == '+') { cur++; return  parse_unary(); }
    return parse_power();
}

double parse_term(void)
{
    double val, d;

    val = parse_unary();
    while (1) {
        skip_spaces();
        if (*cur == '*' && cur[1] != '*') {
            /* Multiplication explicite */
            cur++;
            val *= parse_unary();
        } else if (*cur == '/') {
            /* Division avec vérification du dénominateur */
            cur++;
            d = parse_unary();
            if (d == 0.0)
                fatal_domain("Division par zero : le denominateur est nul");
            val /= d;
        } else if (can_implicit_mult()) {
            /* Multiplication implicite : 3x  2cos(x)  (x+1)(x-1) */
            val *= parse_unary();
        } else {
            break;
        }
    }
    return val;
}

double parse_expr(void)
{
    double val;

    val = parse_term();
    while (1) {
        skip_spaces();
        if      (*cur == '+') { cur++; val += parse_term(); }
        else if (*cur == '-') { cur++; val -= parse_term(); }
        else break;
    }
    return val;
}

double evaluate(const char *expr, double x)
{
    double result;

    cur    = expr;
    X_VAL  = x;
    result = parse_expr();

    skip_spaces();
    if (*cur != '\0')
        fatal_syntax("Caracteres inattendus apres la fin de l'expression");

    return result;
}


int main(int argc, char *argv[])
{
    double x;
    double result;

    validate_args(argc, argv);          /* valide les args + init PROG   */
    x      = str_to_double(argv[2]);    /* convertit argv[2] en double   */
    result = evaluate(argv[1], x);      /* évalue l'expression en x      */
    print_result(argv[1], x, result);   /* affiche le résultat encadré   */

    return 0;
}
