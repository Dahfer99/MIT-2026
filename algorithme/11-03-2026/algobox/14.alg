<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SI" texte="Vérification d'un nombre premier"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="premier EST_DU_TYPE NOMBRE" code="1#NOMBRE#premier"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="SI (n&lt;=1) ALORS" code="6#n&lt;=1">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le nombre doit êre >= 2&quot;" code="4#Le nombre doit êre >= 2#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="premier PREND_LA_VALEUR 1" code="5#premier#1#pasliste"/>
                <item algoitem="POUR i ALLANT_DE 2 A n-1" code="12#i#2#n-1">
                    <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                    <item algoitem="SI (n%i==0) ALORS" code="6#n%i==0">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="premier PREND_LA_VALEUR 0" code="5#premier#0#pasliste"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                    </item>
                    <item algoitem="FIN_POUR" code="14#finpour"/>
                </item>
                <item algoitem="SI (premier=0) ALORS" code="6#premier=0">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER n" code="3#n#0#pasliste"/>
                    <item algoitem="AFFICHER &quot; n'est pas premier&quot;" code="4# n'est pas premier#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER n" code="3#n#0#pasliste"/>
                        <item algoitem="AFFICHER &quot; est premier&quot;" code="4# est premier#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
