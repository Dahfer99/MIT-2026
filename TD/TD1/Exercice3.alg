<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER b" texte=""/>
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
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer la valeur de a&quot;" code="4#Entrer la valeur de a#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la valeur de b&quot;" code="4#Entrer la valeur de b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="x PREND_LA_VALEUR a" code="5#x#a#pasliste"/>
        <item algoitem="a PREND_LA_VALEUR b" code="5#a#b#pasliste"/>
        <item algoitem="b PREND_LA_VALEUR x" code="5#b#x#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur de a est maintenant : &quot;" code="4#La valeur de a est maintenant : #0"/>
        <item algoitem="AFFICHER a" code="3#a#1#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur de b est maintenant : &quot;" code="4#La valeur de b est maintenant : #0"/>
        <item algoitem="AFFICHER b" code="3#b#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la valeur de c&quot;" code="4#Entrer la valeur de c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="x PREND_LA_VALEUR a" code="5#x#a#pasliste"/>
        <item algoitem="a PREND_LA_VALEUR b" code="5#a#b#pasliste"/>
        <item algoitem="b PREND_LA_VALEUR c" code="5#b#c#pasliste"/>
        <item algoitem="c PREND_LA_VALEUR x" code="5#c#x#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur de a est maintenant :  &quot;" code="4#La valeur de a est maintenant :  #0"/>
        <item algoitem="AFFICHER a" code="3#a#1#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur de b est maintenant :  &quot;" code="4#La valeur de b est maintenant :  #0"/>
        <item algoitem="AFFICHER b" code="3#b#1#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur de c est maintenant :  &quot;" code="4#La valeur de c est maintenant :  #0"/>
        <item algoitem="AFFICHER c" code="3#c#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
