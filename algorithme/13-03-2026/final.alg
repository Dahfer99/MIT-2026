<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="pmin PREND_LA_VALEUR 1" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="nbr EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbr"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
        <item algoitem="min EST_DU_TYPE NOMBRE" code="1#NOMBRE#min"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="pmin EST_DU_TYPE NOMBRE" code="1#NOMBRE#pmin"/>
        <item algoitem="pmax EST_DU_TYPE NOMBRE" code="1#NOMBRE#pmax"/>
        <item algoitem="change EST_DU_TYPE NOMBRE" code="1#NOMBRE#change"/>
        <item algoitem="t EST_DU_TYPE LISTE" code="1#LISTE#t"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="temp EST_DU_TYPE NOMBRE" code="1#NOMBRE#temp"/>
        <item algoitem="limit EST_DU_TYPE NOMBRE" code="1#NOMBRE#limit"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer la longueur du tableaux&quot;" code="4#Entrer la longueur du tableaux#0"/>
        <item algoitem="LIRE nbr" code="2#nbr#pasliste"/>
        <item algoitem="TANT_QUE (nbr>100) FAIRE" code="15#nbr>100">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer une valeur inférieur à 100&quot;" code="4#Entrer une valeur inférieur à 100#0"/>
            <item algoitem="LIRE nbr" code="2#nbr#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="TANT_QUE (i != nbr) FAIRE" code="15#i != nbr">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer la valeur du tableau &quot;" code="4#Entrer la valeur du tableau #0"/>
            <item algoitem="AFFICHER i" code="3#i#0#pasliste"/>
            <item algoitem="LIRE t[i]" code="2#t#i"/>
            <item algoitem="somme PREND_LA_VALEUR somme+t[i]" code="5#somme#somme+t[i]#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="moyenne PREND_LA_VALEUR somme / nbr" code="5#moyenne#somme / nbr#pasliste"/>
        <item algoitem="AFFICHER &quot;somme = &quot;" code="4#somme = #0"/>
        <item algoitem="AFFICHER somme" code="3#somme#1#pasliste"/>
        <item algoitem="AFFICHER &quot;moyenne =&quot;" code="4#moyenne =#0"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#1#pasliste"/>
        <item algoitem="//Calcul du minimum" code="19#Calcul du minimum"/>
        <item algoitem="min PREND_LA_VALEUR t[0]" code="5#min#t[0]#pasliste"/>
        <item algoitem="pmin PREND_LA_VALEUR 1" code="5#pmin#1#pasliste"/>
        <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
        <item algoitem="temp PREND_LA_VALEUR t[i]" code="5#temp#t[i]#pasliste"/>
        <item algoitem="TANT_QUE (min &lt;= (temp+1) ET i != nbr) FAIRE" code="15#min &lt;= (temp+1) ET i != nbr">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="temp PREND_LA_VALEUR t[i]" code="5#temp#t[i]#pasliste"/>
            <item algoitem="SI (min > temp) ALORS" code="6#min > temp">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="min PREND_LA_VALEUR temp" code="5#min#temp#pasliste"/>
                <item algoitem="pmin PREND_LA_VALEUR i+1" code="5#pmin#i+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Minimum = &quot;" code="4#Minimum = #0"/>
        <item algoitem="AFFICHER min" code="3#min#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Position du minimum = &quot;" code="4#Position du minimum = #0"/>
        <item algoitem="AFFICHER pmin" code="3#pmin#1#pasliste"/>
        <item algoitem="//Calcul du maximum" code="19#Calcul du maximum"/>
        <item algoitem="limit PREND_LA_VALEUR nbr-1" code="5#limit#nbr-1#pasliste"/>
        <item algoitem="max PREND_LA_VALEUR t[limit]" code="5#max#t[limit]#pasliste"/>
        <item algoitem="i PREND_LA_VALEUR limit" code="5#i#limit#pasliste"/>
        <item algoitem="temp PREND_LA_VALEUR t[i]" code="5#temp#t[i]#pasliste"/>
        <item algoitem="pmax PREND_LA_VALEUR nbr" code="5#pmax#nbr#pasliste"/>
        <item algoitem="TANT_QUE (max>=(temp-1) ET i!=0) FAIRE" code="15#max>=(temp-1) ET i!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="temp PREND_LA_VALEUR t[i]" code="5#temp#t[i]#pasliste"/>
            <item algoitem="SI (max &lt; temp) ALORS" code="6#max &lt; temp">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR temp" code="5#max#temp#pasliste"/>
                <item algoitem="pmax PREND_LA_VALEUR i+1" code="5#pmax#i+1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="i PREND_LA_VALEUR i-1" code="5#i#i-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Maximum = &quot;" code="4#Maximum = #0"/>
        <item algoitem="AFFICHER max" code="3#max#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Position du maximum = &quot;" code="4#Position du maximum = #0"/>
        <item algoitem="AFFICHER pmax" code="3#pmax#1#pasliste"/>
        <item algoitem="//Arrangement par ordre" code="19#Arrangement par ordre"/>
        <item algoitem="change PREND_LA_VALEUR 1" code="5#change#1#pasliste"/>
        <item algoitem="TANT_QUE (change==1) FAIRE" code="15#change==1">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="i PREND_LA_VALEUR 0" code="5#i#0#pasliste"/>
            <item algoitem="change PREND_LA_VALEUR 0" code="5#change#0#pasliste"/>
            <item algoitem="TANT_QUE (i&lt;limit) FAIRE" code="15#i&lt;limit">
                <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
                <item algoitem="j PREND_LA_VALEUR t[i]" code="5#j#t[i]#pasliste"/>
                <item algoitem="k PREND_LA_VALEUR t[i+1]" code="5#k#t[i+1]#pasliste"/>
                <item algoitem="SI (j&lt;k) ALORS" code="6#j&lt;k">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="t[i] PREND_LA_VALEUR k" code="5#t#k#i"/>
                    <item algoitem="t[i+1] PREND_LA_VALEUR j" code="5#t#j#i+1"/>
                    <item algoitem="change PREND_LA_VALEUR 1" code="5#change#1#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
                <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Arrangement par ordre décroissant:&quot;" code="4#Arrangement par ordre décroissant:#1"/>
        <item algoitem="POUR i ALLANT_DE 0 A limit" code="12#i#0#limit">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER t[i]" code="3#t#1#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Arrangement par ordre croissant&quot;" code="4#Arrangement par ordre croissant#1"/>
        <item algoitem="i PREND_LA_VALEUR limit" code="5#i#limit#pasliste"/>
        <item algoitem="TANT_QUE (i >=0) FAIRE" code="15#i >=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER t[i]" code="3#t#1#i"/>
            <item algoitem="i PREND_LA_VALEUR i-1" code="5#i#i-1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
