<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="x PREND_LA_VALEUR t/a" texte=""/>
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
        <item algoitem="t EST_DU_TYPE NOMBRE" code="1#NOMBRE#t"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;L'équation du 1er degré est toujours de la forme ax+b=c&quot;" code="4#L'équation du 1er degré est toujours de la forme ax+b=c#0"/>
        <item algoitem="AFFICHER &quot;Entrer le coefficient a&quot;" code="4#Entrer le coefficient a#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer le constant b&quot;" code="4#Entrer le constant b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer le résultat c&quot;" code="4#Entrer le résultat c#0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="t PREND_LA_VALEUR c-b" code="5#t#c-b#pasliste"/>
        <item algoitem="x PREND_LA_VALEUR t/a" code="5#x#t/a#pasliste"/>
        <item algoitem="AFFICHER &quot;La solution de l'équation et x= &quot;" code="4#La solution de l'équation et x= #0"/>
        <item algoitem="LIRE x" code="2#x#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
