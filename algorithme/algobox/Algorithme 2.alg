<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; ans&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="birth_year EST_DU_TYPE NOMBRE" code="1#NOMBRE#birth_year"/>
        <item algoitem="actual_year EST_DU_TYPE NOMBRE" code="1#NOMBRE#actual_year"/>
        <item algoitem="age EST_DU_TYPE NOMBRE" code="1#NOMBRE#age"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer votre année de naissance&quot;" code="4#Entrer votre année de naissance#0"/>
        <item algoitem="LIRE birth_year" code="2#birth_year#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer l'année actuelle&quot;" code="4#Entrer l'année actuelle#0"/>
        <item algoitem="LIRE actual_year" code="2#actual_year#pasliste"/>
        <item algoitem="age PREND_LA_VALEUR actual_year - birth_year" code="5#age#actual_year - birth_year#pasliste"/>
        <item algoitem="AFFICHER &quot;Vous avez &quot;" code="4#Vous avez #0"/>
        <item algoitem="AFFICHER age" code="3#age#0#pasliste"/>
        <item algoitem="AFFICHER &quot; ans&quot;" code="4# ans#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
