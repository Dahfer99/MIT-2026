<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; cm&quot;" texte="Convertisseur de &quot;inch&quot; en &quot;cm&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="result EST_DU_TYPE NOMBRE" code="1#NOMBRE#result"/>
        <item algoitem="coef EST_DU_TYPE NOMBRE" code="1#NOMBRE#coef"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="coef PREND_LA_VALEUR 2.54" code="5#coef#2.54#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer une valeur en inch&quot;" code="4#Entrer une valeur en inch#0"/>
        <item algoitem="LIRE x" code="2#x#pasliste"/>
        <item algoitem="result PREND_LA_VALEUR x * coef" code="5#result#x * coef#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur en cm est de: &quot;" code="4#La valeur en cm est de: #0"/>
        <item algoitem="AFFICHER result" code="3#result#0#pasliste"/>
        <item algoitem="AFFICHER &quot; cm&quot;" code="4# cm#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
