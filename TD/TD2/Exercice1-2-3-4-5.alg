<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Afficher la valeur su tableaux &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="T EST_DU_TYPE LISTE" code="1#LISTE#T"/>
        <item algoitem="A EST_DU_TYPE LISTE" code="1#LISTE#A"/>
        <item algoitem="TPOS EST_DU_TYPE LISTE" code="1#LISTE#TPOS"/>
        <item algoitem="TNEG EST_DU_TYPE LISTE" code="1#LISTE#TNEG"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="pmax EST_DU_TYPE NOMBRE" code="1#NOMBRE#pmax"/>
        <item algoitem="change EST_DU_TYPE NOMBRE" code="1#NOMBRE#change"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//Exercice 1" code="19#Exercice 1"/>
        <item algoitem="AFFICHER &quot;Entrer la dimension du tableaux&quot;" code="4#Entrer la dimension du tableaux#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="TANT_QUE (n>50) FAIRE" code="15#n>50">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;La dimension maximale est 50&quot;" code="4#La dimension maximale est 50#0"/>
            <item algoitem="LIRE n" code="2#n#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Afficher la valeur su tableaux &quot;" code="4#Afficher la valeur su tableaux #0"/>
            <item algoitem="AFFICHER i" code="3#i#1#pasliste"/>
            <item algoitem="LIRE T[i]" code="2#T#i"/>
            <item algoitem="somme PREND_LA_VALEUR somme+T[i]" code="5#somme#somme+T[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;somme = &quot;" code="4#somme = #0"/>
        <item algoitem="AFFICHER somme" code="3#somme#1#pasliste"/>
        <item algoitem="" code="103#commentaire"/>
        <item algoitem="//Exercice 2" code="19#Exercice 2"/>
        <item algoitem="max PREND_LA_VALEUR T[0]" code="5#max#T[0]#pasliste"/>
        <item algoitem="pmax PREND_LA_VALEUR 1" code="5#pmax#1#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (max&lt;T[i]) ALORS" code="6#max&lt;T[i]">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR T[i]" code="5#max#T[i]#pasliste"/>
                <item algoitem="pmax PREND_LA_VALEUR i+1" code="5#pmax#i+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Maximum = &quot;" code="4#Maximum = #0"/>
        <item algoitem="AFFICHER max" code="3#max#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Position du maximmum = &quot;" code="4#Position du maximmum = #0"/>
        <item algoitem="AFFICHER pmax" code="3#pmax#1#pasliste"/>
        <item algoitem="" code="103#commentaire"/>
        <item algoitem="//Exercice 3" code="19#Exercice 3"/>
        <item algoitem="change PREND_LA_VALEUR 1" code="5#change#1#pasliste"/>
        <item algoitem="TANT_QUE (change==1) FAIRE" code="15#change==1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
            <item algoitem="change PREND_LA_VALEUR 0" code="5#change#0#pasliste"/>
            <item algoitem="TANT_QUE (i&lt;=n-2) FAIRE" code="15#i&lt;=n-2">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="j PREND_LA_VALEUR T[i]" code="5#j#T[i]#pasliste"/>
                <item algoitem="k PREND_LA_VALEUR T[i+1]" code="5#k#T[i+1]#pasliste"/>
                <item algoitem="SI (T[i]==0) ALORS" code="6#T[i]==0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="T[i] PREND_LA_VALEUR k" code="5#T#k#i"/>
                    <item algoitem="T[i+1] PREND_LA_VALEUR j" code="5#T#j#i+1"/>
                    <item algoitem="change PREND_LA_VALEUR 1" code="5#change#1#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (T[i]==0) ALORS" code="6#T[i]==0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="c PREND_LA_VALEUR c+1" code="5#c#c+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="n PREND_LA_VALEUR n-c" code="5#n#n-c#pasliste"/>
        <item algoitem="AFFICHER &quot;Le resultat après la suppression des 0&quot;" code="4#Le resultat après la suppression des 0#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER T[i]" code="3#T#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="" code="103#commentaire"/>
        <item algoitem="//Exercice 4" code="19#Exercice 4"/>
        <item algoitem="j PREND_LA_VALEUR 0" code="5#j#0#pasliste"/>
        <item algoitem="k PREND_LA_VALEUR 0" code="5#k#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (T[i]>0) ALORS" code="6#T[i]>0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="TPOS[j] PREND_LA_VALEUR T[i]" code="5#TPOS#T[i]#j"/>
                <item algoitem="j PREND_LA_VALEUR j+1" code="5#j#j+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="TNEG[k] PREND_LA_VALEUR T[i]" code="5#TNEG#T[i]#k"/>
                    <item algoitem="k PREND_LA_VALEUR k+1" code="5#k#k+1#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Tableaux des nombres positifs&quot;" code="4#Tableaux des nombres positifs#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A j-1" code="12#i#0#j-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER TPOS[i]" code="3#TPOS#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Tableaux des nombres négatifs&quot;" code="4#Tableaux des nombres négatifs#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A k-1" code="12#i#0#k-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER TNEG[i]" code="3#TNEG#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="" code="103#commentaire"/>
        <item algoitem="//Exercice 5" code="19#Exercice 5"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="A[i] PREND_LA_VALEUR T[i]" code="5#A#T[i]#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="c PREND_LA_VALEUR 0" code="5#c#0#pasliste"/>
        <item algoitem="i PREND_LA_VALEUR n-1" code="5#i#n-1#pasliste"/>
        <item algoitem="TANT_QUE (i!=0) FAIRE" code="15#i!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="T[c] PREND_LA_VALEUR A[i]" code="5#T#A[i]#c"/>
            <item algoitem="c PREND_LA_VALEUR c+1" code="5#c#c+1#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR i-1" code="5#i#i-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Le tableaux inverses&quot;" code="4#Le tableaux inverses#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER T[i]" code="3#T#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
