<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; cm³&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="width EST_DU_TYPE NOMBRE" code="1#NOMBRE#width"/>
        <item algoitem="height EST_DU_TYPE NOMBRE" code="1#NOMBRE#height"/>
        <item algoitem="lengthh EST_DU_TYPE NOMBRE" code="1#NOMBRE#lengthh"/>
        <item algoitem="v EST_DU_TYPE NOMBRE" code="1#NOMBRE#v"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer la longueur en cm&quot;" code="4#Entrer la longueur en cm#0"/>
        <item algoitem="LIRE lengthh" code="2#lengthh#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la largeur en cm&quot;" code="4#Entrer la largeur en cm#0"/>
        <item algoitem="LIRE width" code="2#width#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la hauteur en cm&quot;" code="4#Entrer la hauteur en cm#0"/>
        <item algoitem="LIRE height" code="2#height#pasliste"/>
        <item algoitem="v PREND_LA_VALEUR lengthh * width * height" code="5#v#lengthh * width * height#pasliste"/>
        <item algoitem="AFFICHER &quot;Le volume du parallélepipède est de &quot;" code="4#Le volume du parallélepipède est de #0"/>
        <item algoitem="AFFICHER v" code="3#v#0#pasliste"/>
        <item algoitem="AFFICHER &quot; cm³&quot;" code="4# cm³#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
