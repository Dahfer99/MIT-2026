<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte="Afficher si le produit de 2 nombres est positif ou négatif"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer a&quot;" code="4#Entrer a#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer b&quot;" code="4#Entrer b#0"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="SI (a&lt;0 ET b&lt;0) ALORS" code="6#a&lt;0 ET b&lt;0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le produit positif&quot;" code="4#Le produit positif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (a&lt;0 OU b&lt;0) ALORS" code="6#a&lt;0 OU b&lt;0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Le produit est négatif&quot;" code="4#Le produit est négatif#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;Le produit est positif&quot;" code="4#Le produit est positif#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
