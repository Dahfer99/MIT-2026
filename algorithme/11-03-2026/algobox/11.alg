<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Le nombre est premier, son diviseur est lui même&quot;" texte="Plus petit diviseur"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="diviseur EST_DU_TYPE NOMBRE" code="1#NOMBRE#diviseur"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="SI (n&lt;=1) ALORS" code="6#n&lt;=1">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Entrer un nombre > 1&quot;" code="4#Entrer un nombre > 1#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="diviseur PREND_LA_VALEUR 0" code="5#diviseur#0#pasliste"/>
                <item algoitem="POUR i ALLANT_DE 2 A n" code="12#i#2#n">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="SI (n%i==0) ALORS" code="6#n%i==0">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="AFFICHER &quot;Le mplus petit diviseur autre que 1 est &quot;" code="4#Le mplus petit diviseur autre que 1 est #0"/>
                        <item algoitem="AFFICHER i" code="3#i#0#pasliste"/>
                        <item algoitem="diviseur PREND_LA_VALEUR 1" code="5#diviseur#1#pasliste"/>
                        <item algoitem="i PREND_LA_VALEUR n" code="5#i#n#pasliste"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="SI (diviseur=0) ALORS" code="6#diviseur=0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Le nombre est premier, son diviseur est lui même&quot;" code="4#Le nombre est premier, son diviseur est lui même#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
