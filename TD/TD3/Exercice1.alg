<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (b == n+1) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="change EST_DU_TYPE NOMBRE" code="1#NOMBRE#change"/>
        <item algoitem="t EST_DU_TYPE LISTE" code="1#LISTE#t"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer le nombre d'entier à entrer&quot;" code="4#Entrer le nombre d'entier à entrer#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="TANT_QUE (n>100) FAIRE" code="15#n>100">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer un nombre inférieur à 100&quot;" code="4#Entrer un nombre inférieur à 100#0"/>
            <item algoitem="LIRE n" code="2#n#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrer la valeur du tableaux &quot;" code="4#Entrer la valeur du tableaux #0"/>
            <item algoitem="AFFICHER i" code="3#i#1#pasliste"/>
            <item algoitem="LIRE t[i]" code="2#t#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="change PREND_LA_VALEUR 1" code="5#change#1#pasliste"/>
        <item algoitem="b PREND_LA_VALEUR 0" code="5#b#0#pasliste"/>
        <item algoitem="TANT_QUE (change!=0) FAIRE" code="15#change!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="change PREND_LA_VALEUR 0" code="5#change#0#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
            <item algoitem="TANT_QUE (i&lt;(n-1)) FAIRE" code="15#i&lt;(n-1)">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="j PREND_LA_VALEUR t[i]" code="5#j#t[i]#pasliste"/>
                <item algoitem="k PREND_LA_VALEUR t[i+1]" code="5#k#t[i+1]#pasliste"/>
                <item algoitem="SI (j%2==1) ALORS" code="6#j%2==1">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="change PREND_LA_VALEUR 1" code="5#change#1#pasliste"/>
                    <item algoitem="t[i] PREND_LA_VALEUR k" code="5#t#k#i"/>
                    <item algoitem="t[i+1] PREND_LA_VALEUR j" code="5#t#j#i+1"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="b PREND_LA_VALEUR b+1" code="5#b#b+1#pasliste"/>
            <item algoitem="SI (b == n+1) ALORS" code="6#b == n+1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="PAUSE" code="18#pause"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Le resultat final est&quot;" code="4#Le resultat final est#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A n-1" code="12#i#0#n-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER t[i]" code="3#t#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
