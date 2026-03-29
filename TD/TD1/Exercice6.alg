<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER M" texte="Calcul de la moyenne de deux notes avec coefficient"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#n1"/>
        <item algoitem="n2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#n2"/>
        <item algoitem="S EST_DU_TYPE NOMBRE" code="1#NOMBRE#S"/>
        <item algoitem="M EST_DU_TYPE NOMBRE" code="1#NOMBRE#M"/>
        <item algoitem="c1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#c1"/>
        <item algoitem="c2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#c2"/>
        <item algoitem="ct EST_DU_TYPE NOMBRE" code="1#NOMBRE#ct"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer la note 1&quot;" code="4#Entrer la note 1#0"/>
        <item algoitem="LIRE n1" code="2#n1#pasliste"/>
        <item algoitem="TANT_QUE (n1>20) FAIRE" code="15#n1>20">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer une valeur inférieur à 20&quot;" code="4#Entrer une valeur inférieur à 20#0"/>
            <item algoitem="LIRE n1" code="2#n1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Entrer la note 2&quot;" code="4#Entrer la note 2#0"/>
        <item algoitem="LIRE n2" code="2#n2#pasliste"/>
        <item algoitem="TANT_QUE (n2>20) FAIRE" code="15#n2>20">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer une valeur inférieur à 20&quot;" code="4#Entrer une valeur inférieur à 20#0"/>
            <item algoitem="LIRE n2" code="2#n2#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Entrer coefficient de la note 1&quot;" code="4#Entrer coefficient de la note 1#0"/>
        <item algoitem="LIRE c1" code="2#c1#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la coefficient de la note 2&quot;" code="4#Entrer la coefficient de la note 2#0"/>
        <item algoitem="LIRE c2" code="2#c2#pasliste"/>
        <item algoitem="n1 PREND_LA_VALEUR n1*c1" code="5#n1#n1*c1#pasliste"/>
        <item algoitem="n2 PREND_LA_VALEUR n2*c2" code="5#n2#n2*c2#pasliste"/>
        <item algoitem="ct PREND_LA_VALEUR c1+c2" code="5#ct#c1+c2#pasliste"/>
        <item algoitem="S PREND_LA_VALEUR n1+n2" code="5#S#n1+n2#pasliste"/>
        <item algoitem="M PREND_LA_VALEUR S/ct" code="5#M#S/ct#pasliste"/>
        <item algoitem="AFFICHER &quot;Moyenne = &quot;" code="4#Moyenne = #1"/>
        <item algoitem="AFFICHER M" code="3#M#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
