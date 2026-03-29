<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR i ALLANT_DE 0 A n-1" texte="Calcul de 1 + 10+ ... + 10^n "/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="S EST_DU_TYPE NOMBRE" code="1#NOMBRE#S"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer n&quot;" code="4#Entrer n#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="S PREND_LA_VALEUR 0" code="5#S#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="k PREND_LA_VALEUR 1" code="5#k#1#pasliste"/>
            <item algoitem="POUR j ALLANT_DE 1 A i" code="12#j#1#i">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="k PREND_LA_VALEUR k*10" code="5#k#k*10#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="S PREND_LA_VALEUR S+k" code="5#S#S+k#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Somme = &quot;" code="4#Somme = #0"/>
        <item algoitem="AFFICHER S" code="3#S#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
