<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; km/h&quot;" texte="Calcul de la vitesse moyenne"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="v EST_DU_TYPE NOMBRE" code="1#NOMBRE#v"/>
        <item algoitem="d EST_DU_TYPE NOMBRE" code="1#NOMBRE#d"/>
        <item algoitem="t EST_DU_TYPE NOMBRE" code="1#NOMBRE#t"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer la distance parcourue par la voiture en km&quot;" code="4#Entrer la distance parcourue par la voiture en km#0"/>
        <item algoitem="LIRE d" code="2#d#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la durée du trajet en heure&quot;" code="4#Entrer la durée du trajet en heure#0"/>
        <item algoitem="LIRE t" code="2#t#pasliste"/>
        <item algoitem="v PREND_LA_VALEUR d / t" code="5#v#d / t#pasliste"/>
        <item algoitem="AFFICHER &quot;L vitesse moyenne de la voiture est de &quot;" code="4#L vitesse moyenne de la voiture est de #0"/>
        <item algoitem="AFFICHER v" code="3#v#0#pasliste"/>
        <item algoitem="AFFICHER &quot; km/h&quot;" code="4# km/h#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
