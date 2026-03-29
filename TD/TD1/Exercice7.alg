<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER max" texte="Afficher le maximum entre 3 valeur"/>
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
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer a&quot;" code="4#Entrer a#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer b&quot;" code="4#Entrer b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer c&quot;" code="4#Entrer c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="SI (a>b) ALORS" code="6#a>b">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="SI (a>c) ALORS" code="6#a>c">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR a" code="5#max#a#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="max PREND_LA_VALEUR c" code="5#max#c#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (b>c) ALORS" code="6#b>c">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="max PREND_LA_VALEUR b" code="5#max#b#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="max PREND_LA_VALEUR c" code="5#max#c#pasliste"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;Le maximum est &quot;" code="4#Le maximum est #0"/>
        <item algoitem="AFFICHER max" code="3#max#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
