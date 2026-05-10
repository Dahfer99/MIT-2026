<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; N&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="Te EST_DU_TYPE NOMBRE" code="1#NOMBRE#Te"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="al EST_DU_TYPE NOMBRE" code="1#NOMBRE#al"/>
        <item algoitem="lf EST_DU_TYPE NOMBRE" code="1#NOMBRE#lf"/>
        <item algoitem="li EST_DU_TYPE NOMBRE" code="1#NOMBRE#li"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer la valeur du constante de raideur k en N/m&quot;" code="4#Entrer la valeur du constante de raideur k en N/m#0"/>
        <item algoitem="LIRE k" code="2#k#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la longueur finale du ressort en mètre&quot;" code="4#Entrer la longueur finale du ressort en mètre#0"/>
        <item algoitem="LIRE lf" code="2#lf#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la longueur à vide du ressort en mètre&quot;" code="4#Entrer la longueur à vide du ressort en mètre#0"/>
        <item algoitem="al PREND_LA_VALEUR lf-li" code="5#al#lf-li#pasliste"/>
        <item algoitem="Te PREND_LA_VALEUR k*al" code="5#Te#k*al#pasliste"/>
        <item algoitem="AFFICHER &quot;La valeur du tension du ressort est &quot;" code="4#La valeur du tension du ressort est #0"/>
        <item algoitem="AFFICHER Te" code="3#Te#0#pasliste"/>
        <item algoitem="AFFICHER &quot; N&quot;" code="4# N#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
