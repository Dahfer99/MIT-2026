<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER moyenne" texte="Calcul de la moyenne générale"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000" nbDecimales="10" totalAffichages="1000" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="math_20 EST_DU_TYPE NOMBRE" code="1#NOMBRE#math_20"/>
        <item algoitem="pc_20 EST_DU_TYPE NOMBRE" code="1#NOMBRE#pc_20"/>
        <item algoitem="mlg_20 EST_DU_TYPE NOMBRE" code="1#NOMBRE#mlg_20"/>
        <item algoitem="ang_20 EST_DU_TYPE NOMBRE" code="1#NOMBRE#ang_20"/>
        <item algoitem="coef_math EST_DU_TYPE NOMBRE" code="1#NOMBRE#coef_math"/>
        <item algoitem="coef_ang EST_DU_TYPE NOMBRE" code="1#NOMBRE#coef_ang"/>
        <item algoitem="coef_mlg EST_DU_TYPE NOMBRE" code="1#NOMBRE#coef_mlg"/>
        <item algoitem="coef_pc EST_DU_TYPE NOMBRE" code="1#NOMBRE#coef_pc"/>
        <item algoitem="ang EST_DU_TYPE NOMBRE" code="1#NOMBRE#ang"/>
        <item algoitem="mlg EST_DU_TYPE NOMBRE" code="1#NOMBRE#mlg"/>
        <item algoitem="math EST_DU_TYPE NOMBRE" code="1#NOMBRE#math"/>
        <item algoitem="pc EST_DU_TYPE NOMBRE" code="1#NOMBRE#pc"/>
        <item algoitem="total EST_DU_TYPE NOMBRE" code="1#NOMBRE#total"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
        <item algoitem="coef_total EST_DU_TYPE NOMBRE" code="1#NOMBRE#coef_total"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer votre note sur 20 en mathématique&quot;" code="4#Entrer votre note sur 20 en mathématique#0"/>
        <item algoitem="LIRE math_20" code="2#math_20#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer votre note sur 20 en physique&quot;" code="4#Entrer votre note sur 20 en physique#0"/>
        <item algoitem="LIRE pc_20" code="2#pc_20#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer votre note sur 20 en malagasy&quot;" code="4#Entrer votre note sur 20 en malagasy#0"/>
        <item algoitem="LIRE mlg_20" code="2#mlg_20#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer votre note sur 20 en anglais&quot;" code="4#Entrer votre note sur 20 en anglais#0"/>
        <item algoitem="LIRE ang_20" code="2#ang_20#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la coefficient de mathématique&quot;" code="4#Entrer la coefficient de mathématique#0"/>
        <item algoitem="LIRE coef_math" code="2#coef_math#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la coefficient de physique&quot;" code="4#Entrer la coefficient de physique#0"/>
        <item algoitem="LIRE coef_pc" code="2#coef_pc#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la coefficient de malagasy&quot;" code="4#Entrer la coefficient de malagasy#0"/>
        <item algoitem="LIRE coef_mlg" code="2#coef_mlg#pasliste"/>
        <item algoitem="AFFICHER &quot;Entrer la coefficient de anglais&quot;" code="4#Entrer la coefficient de anglais#0"/>
        <item algoitem="LIRE coef_ang" code="2#coef_ang#pasliste"/>
        <item algoitem="math PREND_LA_VALEUR math_20 * coef_math" code="5#math#math_20 * coef_math#pasliste"/>
        <item algoitem="pc PREND_LA_VALEUR pc_20 * coef_pc" code="5#pc#pc_20 * coef_pc#pasliste"/>
        <item algoitem="mlg PREND_LA_VALEUR mlg_20 * coef_mlg" code="5#mlg#mlg_20 * coef_mlg#pasliste"/>
        <item algoitem="ang PREND_LA_VALEUR ang_20 * coef_ang" code="5#ang#ang_20 * coef_ang#pasliste"/>
        <item algoitem="total PREND_LA_VALEUR math + pc + mlg +ang" code="5#total#math + pc + mlg +ang#pasliste"/>
        <item algoitem="coef_total PREND_LA_VALEUR coef_math+coef_ang+coef_mlg+coef_pc" code="5#coef_total#coef_math+coef_ang+coef_mlg+coef_pc#pasliste"/>
        <item algoitem="moyenne PREND_LA_VALEUR total/coef_total" code="5#moyenne#total/coef_total#pasliste"/>
        <item algoitem="AFFICHER &quot;Votre moyenne est de &quot;" code="4#Votre moyenne est de #0"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
