<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="result PREND_LA_VALEUR result*a" texte="Calcul d'exposant"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="result EST_DU_TYPE NOMBRE" code="1#NOMBRE#result"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer le nombre&quot;" code="4#Entrer le nombre#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer l'exposant&quot;" code="4#Entrer l'exposant#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="SI (b&lt;0) ALORS" code="6#b&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;L'exposant doit être positif&quot;" code="4#L'exposant doit être positif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="result PREND_LA_VALEUR 1" code="5#result#1#pasliste"/>
                <item algoitem="POUR i ALLANT_DE 1 A b" code="12#i#1#b">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="result PREND_LA_VALEUR result*a" code="5#result#result*a#pasliste"/>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="AFFICHER a" code="3#a#0#pasliste"/>
                <item algoitem="AFFICHER &quot;^&quot;" code="4#^#0"/>
                <item algoitem="AFFICHER b" code="3#b#0#pasliste"/>
                <item algoitem="AFFICHER &quot;=&quot;" code="4#=#0"/>
                <item algoitem="AFFICHER result" code="3#result#0#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
