<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Entrer un nombre&quot;" texte="Afficher si un nombre est positif ou négatif"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer un nombre&quot;" code="4#Entrer un nombre#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="SI (n>0) ALORS" code="6#n>0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le nombre est positif!&quot;" code="4#Le nombre est positif!#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (n&lt;0) ALORS" code="6#n&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le nombre est négatif&quot;" code="4#Le nombre est négatif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (n==0) ALORS" code="6#n==0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le nombre est neutre&quot;" code="4#Le nombre est neutre#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
