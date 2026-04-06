<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;x2 = &quot;" texte="Résolution d'une équation du 2nd degré"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="delta EST_DU_TYPE NOMBRE" code="1#NOMBRE#delta"/>
        <item algoitem="sol1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#sol1"/>
        <item algoitem="sol2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#sol2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;L'équation est de la forme ax^2+bx+c=0&quot;" code="4#L'équation est de la forme ax^2+bx+c=0#1"/>
        <item algoitem="AFFICHER &quot;Entrer a&quot;" code="4#Entrer a#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer b&quot;" code="4#Entrer b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer c&quot;" code="4#Entrer c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="delta PREND_LA_VALEUR b*b-4*a*c" code="5#delta#b*b-4*a*c#pasliste"/>
        <item algoitem="SI (delta&lt;0) ALORS" code="6#delta&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;L'équation n'a pas de solution réel&quot;" code="4#L'équation n'a pas de solution réel#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="delta PREND_LA_VALEUR sqrt(delta)" code="5#delta#sqrt(delta)#pasliste"/>
                <item algoitem="SI (delta>0) ALORS" code="6#delta>0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;L'équation admet deux solutions&quot;" code="4#L'équation admet deux solutions#1"/>
                    <item algoitem="sol1 PREND_LA_VALEUR (-b-delta)/(2*a)" code="5#sol1#(-b-delta)/(2*a)#pasliste"/>
                    <item algoitem="sol2 PREND_LA_VALEUR (-b+delta)/(2*a)" code="5#sol2#(-b+delta)/(2*a)#pasliste"/>
                    <item algoitem="AFFICHER &quot;x1 = &quot;" code="4#x1 = #0"/>
                    <item algoitem="AFFICHER sol1" code="3#sol1#1#pasliste"/>
                    <item algoitem="AFFICHER &quot;x2 = &quot;" code="4#x2 = #0"/>
                    <item algoitem="AFFICHER sol2" code="3#sol2#0#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;L'équation admet une racine double&quot;" code="4#L'équation admet une racine double#1"/>
                        <item algoitem="sol1 PREND_LA_VALEUR (-b)/(2*a)" code="5#sol1#(-b)/(2*a)#pasliste"/>
                        <item algoitem="AFFICHER &quot;x1 = x2 = &quot;" code="4#x1 = x2 = #0"/>
                        <item algoitem="AFFICHER sol1" code="3#sol1#0#pasliste"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
