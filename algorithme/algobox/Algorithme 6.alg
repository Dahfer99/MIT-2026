<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Le prix total est de &quot;" texte="Calcul du prix du riz par kg"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="weight EST_DU_TYPE NOMBRE" code="1#NOMBRE#weight"/>
        <item algoitem="price EST_DU_TYPE NOMBRE" code="1#NOMBRE#price"/>
        <item algoitem="total EST_DU_TYPE NOMBRE" code="1#NOMBRE#total"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer le poids du riz acheté en kilogramme&quot;" code="4#Entrer le poids du riz acheté en kilogramme#0"/>
        <item algoitem="LIRE weight" code="2#weight#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer le priz d'un kilo de riz&quot;" code="4#Entrer le priz d'un kilo de riz#0"/>
        <item algoitem="LIRE price" code="2#price#pasliste"/>
        <item algoitem="total PREND_LA_VALEUR weight*price" code="5#total#weight*price#pasliste"/>
        <item algoitem="AFFICHER &quot;Le prix total est de &quot;" code="4#Le prix total est de #0"/>
        <item algoitem="AFFICHER total" code="3#total#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
