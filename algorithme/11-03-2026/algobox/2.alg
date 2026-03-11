<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (d%2==0) ALORS" texte="Déterminer si le nombre de multiplication effectuer est paire ou impaire"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="d EST_DU_TYPE NOMBRE" code="1#NOMBRE#d"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="b PREND_LA_VALEUR 1" code="5#b#1#pasliste"/>
        <item algoitem="POUR c ALLANT_DE 1 A a" code="12#c#1#a">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="b PREND_LA_VALEUR b*c" code="5#b#b*c#pasliste"/>
            <item algoitem="d PREND_LA_VALEUR c" code="5#d#c#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="SI (d%2==0) ALORS" code="6#d%2==0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le nombre de multiplication effectuer est paire&quot;" code="4#Le nombre de multiplication effectuer est paire#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Le nombre de multiplication effectuer est impaire&quot;" code="4#Le nombre de multiplication effectuer est impaire#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
