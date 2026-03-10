<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER y" texte="Coordonée d'un point d'une courbe"/>
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
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="y EST_DU_TYPE NOMBRE" code="1#NOMBRE#y"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;La fonction représentée par la courbe (C) est de la forme y=ax^2+bx+c où f(x)=y&quot;" code="4#La fonction représentée par la courbe (C) est de la forme y=ax^2+bx+c où f(x)=y#0"/>
        <item algoitem="AFFICHER &quot;Elle passe par un point quelconque d'abscisse x et d'ordonnée y&quot;" code="4#Elle passe par un point quelconque d'abscisse x et d'ordonnée y#0"/>
        <item algoitem="AFFICHER &quot;Entrer a&quot;" code="4#Entrer a#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer b&quot;" code="4#Entrer b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer c&quot;" code="4#Entrer c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer x&quot;" code="4#Entrer x#0"/>
        <item algoitem="LIRE x" code="2#x#pasliste"/>
        <item algoitem="y PREND_LA_VALEUR a*x*x+b*x+c" code="5#y#a*x*x+b*x+c#pasliste"/>
        <item algoitem="AFFICHER &quot;La courbe (C) passe par un point A d'abscisse &quot;" code="4#La courbe (C) passe par un point A d'abscisse #0"/>
        <item algoitem="AFFICHER x" code="3#x#0#pasliste"/>
        <item algoitem="AFFICHER &quot; et de ordonée &quot;" code="4# et de ordonée #0"/>
        <item algoitem="AFFICHER y" code="3#y#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
