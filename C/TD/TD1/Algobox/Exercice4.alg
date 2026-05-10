<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER M" texte="Calcul de la somme et la moyenne de 2 nombres"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="S EST_DU_TYPE NOMBRE" code="1#NOMBRE#S"/>
        <item algoitem="M EST_DU_TYPE NOMBRE" code="1#NOMBRE#M"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer a&quot;" code="4#Entrer a#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer b&quot;" code="4#Entrer b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="S PREND_LA_VALEUR a+b" code="5#S#a+b#pasliste"/>
        <item algoitem="M PREND_LA_VALEUR S/2" code="5#M#S/2#pasliste"/>
        <item algoitem="AFFICHER &quot;Somme = &quot;" code="4#Somme = #0"/>
        <item algoitem="AFFICHER S" code="3#S#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Moyenne = &quot;" code="4#Moyenne = #0"/>
        <item algoitem="AFFICHER M" code="3#M#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
