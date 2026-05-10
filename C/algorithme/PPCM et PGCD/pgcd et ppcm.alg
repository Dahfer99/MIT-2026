<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;PGCD = &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="5" epaisseurPoint="5" maxBoucle="100000" nbDecimales="9" totalAffichages="1000" totalBoucles="1000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="y EST_DU_TYPE NOMBRE" code="1#NOMBRE#y"/>
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="r EST_DU_TYPE NOMBRE" code="1#NOMBRE#r"/>
        <item algoitem="pgcd EST_DU_TYPE NOMBRE" code="1#NOMBRE#pgcd"/>
        <item algoitem="ppcm EST_DU_TYPE NOMBRE" code="1#NOMBRE#ppcm"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer a&quot;" code="4#Entrer a#0"/>
        <item algoitem="LIRE x" code="2#x#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer b&quot;" code="4#Entrer b#0"/>
        <item algoitem="LIRE y" code="2#y#pasliste"/>
        <item algoitem="SI (x > y) ALORS" code="6#x > y">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="a PREND_LA_VALEUR x" code="5#a#x#pasliste"/>
            <item algoitem="b PREND_LA_VALEUR y" code="5#b#y#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="a PREND_LA_VALEUR y" code="5#a#y#pasliste"/>
                <item algoitem="b PREND_LA_VALEUR x" code="5#b#x#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="r PREND_LA_VALEUR 1" code="5#r#1#pasliste"/>
        <item algoitem="TANT_QUE (r!=0) FAIRE" code="15#r!=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="r PREND_LA_VALEUR a%b" code="5#r#a%b#pasliste"/>
            <item algoitem="a PREND_LA_VALEUR b" code="5#a#b#pasliste"/>
            <item algoitem="b PREND_LA_VALEUR r" code="5#b#r#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="pgcd PREND_LA_VALEUR a" code="5#pgcd#a#pasliste"/>
        <item algoitem="AFFICHER &quot;PGCD = &quot;" code="4#PGCD = #0"/>
        <item algoitem="AFFICHER pgcd" code="3#pgcd#1#pasliste"/>
        <item algoitem="ppcm PREND_LA_VALEUR (x*y)/pgcd" code="5#ppcm#(x*y)/pgcd#pasliste"/>
        <item algoitem="AFFICHER &quot;PPCM = &quot;" code="4#PPCM = #0"/>
        <item algoitem="AFFICHER ppcm" code="3#ppcm#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
