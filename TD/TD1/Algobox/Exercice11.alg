<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="fact PREND_LA_VALEUR fact*i" texte="Calcul de la factorielle d'un nombre"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="fact EST_DU_TYPE NOMBRE" code="1#NOMBRE#fact"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="SI (n&lt;0) ALORS" code="6#n&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Erreur, veuillez entrer un nombre positif&quot;" code="4#Erreur, veuillez entrer un nombre positif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="fact PREND_LA_VALEUR 1" code="5#fact#1#pasliste"/>
                <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="fact PREND_LA_VALEUR fact*i" code="5#fact#fact*i#pasliste"/>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="AFFICHER &quot;n! = &quot;" code="4#n! = #0"/>
                <item algoitem="AFFICHER fact" code="3#fact#0#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="" code="103#commentaire"/>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
