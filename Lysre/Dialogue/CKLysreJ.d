// Evenement lies aux objets/ Interjections / Dialogues provoques par le joueur
BEGIN CKLysreJ
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Lancer la quete ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~Global("CKquete1","GLOBAL",1)~ THEN BEGIN CKlancerquete1
SAY ~Oh, <CHARNAME>. Accordez moi un peu de temps voulez vous? Voyez, j'ai bien reflechi pendant que vous mortels vous exposiez a la faiblesse de l'entreinte de Morphee. Cette endroit ou nous avons massacre des paiens... l'antre de l'oeil... C'est un endroit delicieux... plein des marques d'un recent massacre. A proximite d'une source de vivres interessant, et ce curieux village plein de chair en putrefaction. C'est un endroit ideal pour y batir un temple en mon honneur, et en l'honneur de la mere des dragons Tiamat. Je vous invite donc a m'aider dans cette glorieuse tache que de transformer un coin putride en adorable petit nid.~
++ ~D'accord, comment compte tu t'y prendre?~ + CKquete1.1
++ ~Certainement pas~ + CKquete1refus
END

IF ~Global("CKquete1","GLOBAL",1)~ THEN BEGIN CKquete1.1
SAY ~Pour commencer, il nous faut une pretresse. Les bipedes sont une base influencable et servile. Et puis, je ne veux pas d'un faible. Une pretresse solide, c'est la fondation meme d'un temple, plus que ses murs. Tiamat m'a indique une bipede de choix... Une humaine, actuellement en train de croupir dans les geoles de cette ville. Il faut qu'elle soit libere.~
IF ~~ DO ~SetGlobal("CKquete1","GLOBAL",2)~  EXIT
END

IF ~Global("CKquete1","GLOBAL",1)~ THEN BEGIN CKquete1refus
SAY ~Bipede stupide... Un jour Tiamat dechirer votre ame ingrate et mesquine de ses crocs.~
IF ~~ DO ~SetGlobal("CKquete1","GLOBAL",2)~  EXIT
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Manger des objets MO////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Manger dragon/////////////////////////////////////////////////////////
//Ecaille rouge   AR1203
IF ~Global("CKecailleR","GLOBAL",1)!PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'acheve l'existence d'un congenere. Comme j'en suis attristee... Mais dites moi, <CHARNAME> bien que je vois deja briller la convoitise dans vos yeux d'etre inferieur, j'avoue desirer cette depouille encore chaude autant que vous. Laissez moi, je vous prie, devorer ce dragon. Idealement, j'aurais aime qu'il pourrisse, mais votre vie est trop limite pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille2","Ecaille1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR","GLOBAL",3) ~ + CKMOERnon
END
IF ~Global("CKecailleR","GLOBAL",1)PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'acheve l'existence d'un congenere. Comme j'en suis attristee... Mais dites moi, <CHARNAME> bien que je vois deja briller la convoitise dans vos yeux d'etre inferieur, j'avoue desirer cette depouille encore chaude autant que vous. Laissez moi, je vous prie, devorer ce dragon. Idealement, j'aurais aime qu'il pourrisse, mais votre vie est trop limite pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille3","Ecaille2","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR","GLOBAL",3) ~ + CKMOERnon
END

//Ecaille rouge  AR3018
IF ~Global("CKecailleR2","GLOBAL",1)!PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'acheve l'existence d'un congenere. Comme j'en suis attristee... Mais dites moi, <CHARNAME> bien que je vois deja briller la convoitise dans vos yeux d'etre inferieur, j'avoue desirer cette depouille encore chaude autant que vous. Laissez moi, je vous prie, devorer ce dragon. Idealement, j'aurais aime qu'il pourrisse, mais votre vie est trop limite pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR2","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille2","Ecaille1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR2","GLOBAL",3) ~ + CKMOERnon
END

IF ~Global("CKecailleR2","GLOBAL",1)PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'acheve l'existence d'un congenere. Comme j'en suis attristee... Mais dites moi, <CHARNAME> bien que je vois deja briller la convoitise dans vos yeux d'etre inferieur, j'avoue desirer cette depouille encore chaude autant que vous. Laissez moi, je vous prie, devorer ce dragon. Idealement, j'aurais aime qu'il pourrisse, mais votre vie est trop limite pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR2","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille3","Ecaille2","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR2","GLOBAL",3) ~ + CKMOERnon
END

//Ecaille Ombre    AR1402
IF ~Global("CKecailleN","GLOBAL",1)~ THEN BEGIN CKMangerledragonnoir
 SAY ~Ha... voila une creature stupide affiliee au mauvais maitre qui trepasse. Notez qu'il n'a pas le merite d'etre issue de la noble et splendide lignee de notre Mere. Je dois avouer que je suis curieuse du gout de sa chair... Quel gout a l'ombre... <CHARNAME>, laissez moi le manger je vous prie, pour l'experience Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleN","GLOBAL",2) TakePartyItem("SCALEB") DestroyItem("SCALEB") AddSpecialAbility("spsd02") AddSpecialAbility("spsd02") AddSpecialAbility("spsd02") TakeItemReplace("Patte2","Patte1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleN","GLOBAL",3) ~ + CKMOERnon
END
//Ecaille Noire (Irenicus)   AR2807
IF ~Global("CKecailleN2","GLOBAL",1)~ THEN BEGIN CKMangerledragonnoir
 SAY ~Un dragon, issu de la plus noble des lignees qui s'abaisse a negocier ses services a un humain. Il meritait de trouver la mort ici, comme un vulgaire paysan. Laissez moi au moins lui rendre honneur, en en faisant mon repas <CHARNAME> qu'est ce que ce corps inerte pour vous? Laissez moi, je vous prie, devorer ce dragon. Idealement, j'aurais aime qu'il pourrisse, mais votre vie est trop limite pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleN","GLOBAL",2) TakePartyItem("SCALEB") DestroyItem("SCALEB") TakeItemReplace("Griffe2","Griffe1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleN","GLOBAL",3) ~ + CKMOERnon
END

//Sang dragon argente
IF ~!PartyHasItem("LEAT22") Global("CKsangDB","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc
 SAY ~L'idee de manger une des filles de Bahamut me repugne quelque peu... mais je doute que Tiamat pardonne cette hesitation au moment de montrer qui sont les Veritables Dragons. <CHARNAME>? Laissez moi devorer ce dragon je vous prie.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKsangDB","GLOBAL",2) TakePartyItem("MISC8H") DestroyItem("MISC8H")AddSpecialAbility("CKsoin") ~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + CKMOERnon
END

IF ~PartyHasItem("LEAT22") Global("CKsangDB","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc2
 SAY ~L'idee de manger une des filles de Bahamut me repugne quelque peu... mais je doute que Tiamat pardonne cette hesitation au moment de montrer qui sont les Veritables Dragons. <CHARNAME>? Laissez moi devorer ce dragon je vous prie.~
~~ ++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKsangDB","GLOBAL",2) TakePartyItem("MISC8H") DestroyItem("MISC8H")AddSpecialAbility("CKsoin") ~ + CKMangerledragonblanc3
++ ~Certainement pas~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + CKMOERnon
END

IF ~~ THEN BEGIN CKMangerledragonblanc3
 SAY ~Ho, j'ai une inspiration, vous vous souvenez de ceta amalgame inutile de peaux humaines? Donnez les moi, j'ai une inspiration.~
++ ~Euh. D'accord?~ DO ~TakePartyItem("LEAT22") TakeItemReplace("CKIoniqu","LEAT22","CKLysre")~ + CKMangerledragonblanc4
++ ~Certainement pas~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + PriereTiamatRepas
END

IF ~~ THEN BEGIN CKMangerledragonblanc4
 SAY ~*Avant son carnage, Lysre avale la peau, puis s'abreuve du sang encore poisseux de la Dragonne Blanche. Avec une lenteur exageree, Lysre mastique un moment son curieux repas, avant de le vomir bruyament sur le sol de la caverne. Au milieu d'une masse poisseuse, fumante et nauseabonde se trouve une petite... masse de chair rigidifee, a peine plus grosse qu'un pouce.* Voila pour vous, maintenant...~
IF ~~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + PriereTiamatRepas
END

//Ecailles dragon blanc
IF ~Global("CKecailleDBl","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc
 SAY ~Voila les restes d'un congenere... Je ne suis pas suprise, les Blancs sont les plus faibles de la portee... Donc ils sont plus suceptibles de se faire avoir par une espece inferieur. Ils ne brillent pas pour leur intelligence vous savez? Je peux manger ces ecailles <CHARNAME>?~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleDBl","GLOBAL",2) TakePartyItem("MISC8H") DestroyItem("MISC8H")TakeItemReplace("Ecaillb2","Ecaillb1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleDBl","GLOBAL",3) ~ + CKMOERnon
END

//Ecaille dragon bleu.
IF ~Global("CKecailleB","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc
 SAY ~Oui... oui. OUI ! TU ES CREVE ! HAAHAHAHAHAHAHA ! ENFIN ! Enfin... Aaaaah, la douce sensation de la vengeance... Louee soyez vous, reine des dragons, pour m'avoir offert ce jour. Vous me l'aviez promis, et aujourd'hui, sa depouille est sur le sol. Prenez son ame, oh Tiamat.~
++ ~Silence Lysre, ce corps est a moi !~ DO ~SetGlobal("CKecailleB","GLOBAL",2) TakePartyItem("COMPON19") DestroyItem("COMPON19")~ + Lepacteestla
++ ~*Ne rien dire*~ DO ~SetGlobal("CKecailleb","GLOBAL",3) TakePartyItem("COMPON19") DestroyItem("COMPON19")TakeItemReplace("Ecaillc2","Ecaillc1","CKLysre") ~ + PriereTiamatRepas
END

IF ~Global("CKecailleB","GLOBAL",2)~ THEN BEGIN Lepacteestla
 SAY ~*Lysre produit un rire strident et moqueur, avant de vous fixer* C'est notre contrat de m'amener a cet instant. J'ai fait ma part, vous ne pouvez m'empecher de devorer ce faible qui m'a engendree. Assis, et regarde <CHARNAME>~
++ ~*Le contrat etabli avec Lysre vous contraint d'obeir*~ DO ~TakeItemReplace("Ecaillc2","Ecaillc1","CKLysre") ~ +PriereTiamatRepas
END

//Refus/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ THEN BEGIN CKMOERnon
 SAY ~Vous etes bien mesquin <CHARNAME>. Ca vous perdra.~
 IF ~~ DO ~~  EXIT
END
//Priere/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ THEN BEGIN PriereTiamatRepas
 SAY ~Louee soyez vous, oh reveree Tiamat. Oh, grande Reine des Dragons. Permettez a votre disciple de poursuivre sur votre voie, appreciez cette offrande en votre nom, en votre honneur. Soyez respectee, soyez crainte vous qui reignerez un jour sur les plans.~
IF ~~  +PriereTiamatRepas2
END

IF ~~ THEN BEGIN PriereTiamatRepas2
 SAY ~*La lumiere oscille, et sans plus attendre, Lysre se jette sur la depouille pour y plonger ses crocs. Le spectacle est aussi fascinant que repugnant. Rapidement l'air se sature de la chair pourissant rapidement tandis que la carcasse se decompose rapidement. Au milieu du charnier, Lysre cible quelques pieces de choix, ne laissant qu'un corps souille de brulures d'acides dans son passage*~
IF ~~  +PriereTiamatRepas3
END

IF ~~ THEN BEGIN PriereTiamatRepas3
 SAY ~Cette sensation est fabuleuse... Reprenons notre route <CHARNAME>. Sauf si mes restes vous interesse?~
IF ~~ DO ~~  EXIT
END

//Manger demon/////////////////////////////////////////////////////////
//Coeur du plan des enfers
IF ~Global("CKdemonC","GLOBAL",1)~ THEN BEGIN CKMangerlecoeur
 SAY ~Mmmrr... Un coeur palpitant... Il fait echo aux miens... Oh...<CHARNAME>? Laissez moi devorer ce coeur je vous prie. Qu'est ce que ca peut vous couter d'en chercher un autre pour la sphere?~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKdemonC","GLOBAL",2) TakePartyItem("MISC6M") DestroyItem("MISC6M") TakeItemReplace("Coeur2","Coeur1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKdemonC","GLOBAL",3) ~ + CKMOERnon
END

//Priere/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ THEN BEGIN PriereTiamatRepasD
 SAY ~Louee soyez vous, oh reveree Tiamat. Oh, grande Reine des Dragons. Permettez a votre disciple de poursuivre sur votre voie, appreciez cette offrande en votre nom, en votre honneur. Soyez respectee, soyez crainte vous qui reignerez un jour sur les plans.~
IF ~~  +PriereTiamatRepasD2
END

IF ~~ THEN BEGIN PriereTiamatRepasD2
 SAY ~*Lysre plonge son museau dans la cage thoracique du demon, elle en sort le coeur encore palpitant du demon. Elle produit une sorte de ronronnement de plaisir, alors que le coeur s'enfonce lentement dans sa gorge. Etrangement, le coeur disproportionne glisse sans le moindre soucis dans la minuscule dragonne.*~
IF ~~  +PriereTiamatRepasD3
END

IF ~~ THEN BEGIN PriereTiamatRepasD3
 SAY ~Il n'y a pas de mots pour decrire cette sensation fabuleuse... Elle m'evoque mon sejour ici... Reprenons notre route <CHARNAME>. Sauf si mes restes vous interesse?~
IF ~~ DO ~~  EXIT
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Interjections /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//LIEUX////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//PLAN INFERNAL
IF ~InParty("CKLysre")
See("CKLysre")
!StateCheck("CKLysre",CD_STATE_NOTVALID)
AreaCheck("AR0414")~ CKenenfer
SAY ~Mmm... Cette odeur... Cette tension. Nous ne sommes pas dans le domaine de notre Reine, mais il y a ce doux parfum de danger ici... C'est un lieu charmant ou chaque journe n'est que combat pour survivre. Le plan materiel est si paisible en comparaison.~
++ ~Tu as deja voyager dans les plans infernaux Lysre?~  + CKenenfer2
++ ~Mais oui, mais oui...~  EXIT
++ ~*L'ignorer*~ EXIT
END

IF ~InParty("CKLysre")
See("CKLysre")
!StateCheck("CKLysre",CD_STATE_NOTVALID)
AreaCheck("AR0414")~ CKenenfer2
SAY ~Oui... Mais je n'ai pas l'envie de metendre des heures sur mes prouesses en ces lieux, il me faudrait des bardes pour que je perde le temps a etre nostalgique. Si nous chassions un demon ou deux plutot que de s'etendre sur moi?~
IF ~~ DO ~~  EXIT
END

//NPC//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Planar Sphere

I_C_T LAVOK 13 CKLysreLavok1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @0
END

I_C_T LAVOK 46 CKLysreLavok2
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @0
END

// Firkraag

I_C_T FIRKRA02 7 CKLysreKilledFirkraag
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @2
END

I_C_T VAELASA 7 CKLysreDryadsSaved1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @4
END

// Umar Hills

I_C_T MAZZY 4 CKLysreJustMetMazzy1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @5
END

I_C_T UHMAY01 132 CKLysreUmarMayor1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @6
END

//L'oeil aveugle

I_C_T BORINALL 7 CKLysreDawnRing1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T THESHAL 5 CKLysreUndeadCity1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @13
END


// Slavers' Quest

I_C_T HENDAK 31 CKLysreHendakRules1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @18
END

// Bridge misc

I_C_T2 HLSHANG 0 CKLysreShangalar1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @19
END

I_C_T2 NEB 5 CKLysreNeb1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @20
END

// Plot points

//I_C_T C6CORAN 6 CKLysreCoran1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @21
//== C6CORAN IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @22
//END

I_C_T C6REGIS1 2 CKLysreMetDrizzt6
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @23
END

//I_C_T C6HARP 1 CKLysreDrizztGear1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @25
//END

I_C_T HELLJON 7 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26 
END

I_C_T HELLJON 8 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26 
END

I_C_T HELLJON 9 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26 
END

I_C_T HELLJON 10 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26 
END

//I_C_T JARLAXLE 16 CKLysreJarlaxe1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @27
//== JARLAXLE IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @28
//END

I_C_T KRUIN 9 CKLysreReturnSilverBlade1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T PLAYER1 25 CKLysreEnteringHell1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @30
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @31 
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @32
END

I_C_T PPSAEM2 19 CKLysreSaemonOfferShip1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @33
END

I_C_T SAHCPT02 4 CKLysrePriestessCaptain1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @34
== SAHPR1 IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @35
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @27
END

I_C_T SAHIMP01 2 CKLysreImpsGame1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @36
END

I_C_T SAHPR1 58 CKLysrePriestessSekolah3
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @37
END

I_C_T SAHPR2 7 CKLysreSahuaginPrince3
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @38
END

//I_C_T SUAVATAR 5 CKLysreRillifaneAvatarIrenicusMad1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @39
//END

I_C_T UDDROW16 1 CKLysreUnDuellingMaster1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @40
END

I_C_T UDDROW26 0 CKLysreExplodingSlave1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @41
END

//I_C_T UDOGRE 3 CKLysreUnOgre1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @42
//END

I_C_T UDSILVER 35 CKLysreTurnedToDrow1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T2 UDSOLA01 10 CKLysreMetSoulafein1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @44
END

I_C_T UDSVIR03 31 CKLysreUnKilledBalor1
== CKLysreJ IF ~Global("EarQ1","GLOBAL",2) InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @45
END

//I_C_T UDTRAP04 1 CKLysreUnFreedLich1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @47
//END

//I_C_T UDVITH 45 CKLysreVithalBargaining1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @48
//END

// Built-in reactions

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("CKLysre",LastTalkedToBy)~ EXTERN TRGYP02 CKLysreTRGYP02
END

CHAIN TRGYP02 CKLysreTRGYP02
@49
== CKLysreJ @50
EXIT

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID) Global("CKLysreTreeOfLife","GLOBAL",0)~
EXTERN PLAYER1 CKLysreTreeOfLife0
END

CHAIN PLAYER1 CKLysreTreeOfLife0
@51
DO ~SetGlobal("CKLysreTreeOfLife","GLOBAL",1)~
END
++ @52 EXTERN CKLysreJ CKLysreTreeOfLife1
++ @53 EXTERN CKLysreJ CKLysreTreeOfLife1
++ @54 EXTERN CKLysreJ CKLysreTreeOfLife1

CHAIN CKLysreJ CKLysreTreeOfLife1
@55
= @56
END
COPY_TRANS PLAYER1 33



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogues inities par le joueur////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
APPEND CKLysreJ

IF ~IsGabber(Player1)~ CKDialoguePJ
SAY ~Alors que vous approchez de Lysre, elle souffle une petite brume empoisonnee.~
+ ~RandomNum(5,1)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.1
+ ~RandomNum(5,2)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.2
+ ~RandomNum(5,3)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.3
+ ~RandomNum(5,4)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.4
+ ~RandomNum(5,5)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.5
+ ~RandomNum(5,1)~ + ~Observer Lysre sans rien dire~ + CKLysre1.1
+ ~RandomNum(5,2)~ + ~Observer Lysre sans rien dire~ + CKLysre1.2
+ ~RandomNum(5,3)~ + ~Observer Lysre sans rien dire~ + CKLysre1.3
+ ~RandomNum(5,4)~ + ~Observer Lysre sans rien dire~ + CKLysre1.4
+ ~RandomNum(5,5)~ + ~Observer Lysre sans rien dire~ + CKLysre1.5
+ ~RandomNum(5,1)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.1
+ ~RandomNum(5,2)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.2
+ ~RandomNum(5,3)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.3
+ ~RandomNum(5,4)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.4
+ ~RandomNum(5,5)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.5
+ ~RandomNum(5,1)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.1
+ ~RandomNum(5,2)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.2
+ ~RandomNum(5,3)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.3
+ ~RandomNum(5,4)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.4
+ ~RandomNum(5,5)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.5
+ ~RandomNum(5,1)~ + ~Qu'est ce que tu es au juste ?~ + CKLysre4.1
+ ~RandomNum(5,2)~ + ~Qu'est ce que tu es au juste ?~ + CKLysre4.2
+ ~RandomNum(5,3)~ + ~Qu'est ce que tu es au juste ?~ + CKLysre4.3
+ ~RandomNum(5,4)~ + ~Qu'est ce que sont ces cheveux que tu trimbale partout?~ + CKLysre4.4
+ ~RandomNum(5,5)~ + ~Qu'est ce que sont ces cheveux que tu trimbale partout?~ + CKLysre4.5
+ ~RandomNum(5,1)~ + ~Que feras tu une fois notre contrat acheve?~ + CKLysre5.1
+ ~RandomNum(5,2)~ + ~Que feras tu une fois notre contrat acheve?~ + CKLysre5.2
+ ~RandomNum(5,3)~ + ~Que feras tu une fois notre contrat acheve?~ + CKLysre5.3
+ ~RandomNum(5,4)~ + ~Que feras tu une fois notre contrat acheve?~ + CKLysre5.4
+ ~RandomNum(5,5)~ + ~Que feras tu une fois notre contrat acheve?~ + CKLysre5.5
+ ~Gender(Player1,MALE) RandomNum(5,1)~ + ~Essayer de caresser Lysre~ + CKLysre6.1
+ ~Gender(Player1,MALE) RandomNum(5,2)~ + ~Essayer de caresser Lysre~ + CKLysre6.2
+ ~Gender(Player1,MALE) RandomNum(5,3)~ + ~Essayer de caresser Lysre~ + CKLysre6.3
+ ~Gender(Player1,MALE) RandomNum(5,4)~ + ~Essayer de caresser Lysre~ + CKLysre6.4
+ ~Gender(Player1,MALE) RandomNum(5,5)~ + ~Essayer de caresser Lysre~ + CKLysre6.5
+ ~Gender(Player1,FEMALE) RandomNum(5,1)~ + ~Essayer de caresser Lysre~  + CKLysre7.1
+ ~Gender(Player1,FEMALE) RandomNum(5,2)~ + ~Essayer de caresser Lysre~  + CKLysre7.2
+ ~Gender(Player1,FEMALE) RandomNum(5,3)~ + ~Essayer de caresser Lysre~  + CKLysre7.3
+ ~Gender(Player1,FEMALE) RandomNum(5,4)~ + ~Essayer de caresser Lysre~  + CKLysre7.4
+ ~Gender(Player1,FEMALE) RandomNum(5,5)~ + ~Essayer de caresser Lysre~ + CKLysre7.5
+ ~Gender(Player1,MALE) RandomNum(5,1)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.1
+ ~Gender(Player1,MALE) RandomNum(5,2)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.2
+ ~Gender(Player1,MALE) RandomNum(5,3)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.3
+ ~Gender(Player1,MALE) RandomNum(5,4)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.4
+ ~Gender(Player1,MALE) RandomNum(5,5)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.5
+ ~Gender(Player1,FEMALE) RandomNum(5,1)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.1
+ ~Gender(Player1,FEMALE) RandomNum(5,2)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.2
+ ~Gender(Player1,FEMALE) RandomNum(5,3)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.3
+ ~Gender(Player1,FEMALE) RandomNum(5,4)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.4
+ ~Gender(Player1,FEMALE) RandomNum(5,5)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.5
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.1
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.2
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.3
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.4
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.5
+ ~RandomNum(5,1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une change contre Irenicus ?~ + CKLysre13.1
+ ~RandomNum(5,2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une change contre Irenicus ?~ + CKLysre13.2
+ ~RandomNum(5,3) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une change contre Irenicus ?~ + CKLysre13.3
+ ~RandomNum(5,4) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une change contre Irenicus ?~ + CKLysre13.4
+ ~RandomNum(5,5) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une change contre Irenicus ?~ + CKLysre13.5
+ ~Global("CKacide","GLOBAL",1)~ + ~Donnes moi un peu de ton acide s'il te plait?~ + CKAcideOUI
+ ~Global("CKacide","GLOBAL",2)~ + ~Donnes moi un peu de ton acide s'il te plait?~ + CKAcideNON
END

//Acide
IF ~~ CKAcideOUI
SAY ~Contre une offrande en l'honneur de Tiamat, c'est possible.~
++ ~Entendu, voila 100 pieces d'or~ + CKAcideOUI2
++ ~Plus tard peut etre~ + CKAcideNON2
IF ~~ EXIT
END

IF ~~ CKAcideOUI2
SAY ~Vos pieces s'evaporent une fois tendues a Lysre. Elle hoche la tete, visiblement satisfaite, avant de cracher sur le sol. Elle souffle ensuite doucement sur l'acide qui immediatement se solidifit~
IF ~~ DO ~SetGlobal("CKacide","GLOBAL",2) TakePartyGold(100) CreateItem("CKbull",10,0,0) DropItem("CKbull",[-1.-1])~ EXIT
END

IF ~~ CKAcideNON
SAY ~Je ne suis pas d'humeur a ecouter vos caprices~
IF ~~ EXIT
END

IF ~~ CKAcideNON2
SAY ~Si vous etes indecis, laissez moi tranquille.~
IF ~~ EXIT
END


//parle moi de toi/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre0.1
SAY ~Laissez moi tranquille <CHARNAME>. Je ne suis pas d'humeur.~
IF ~~ EXIT
END

IF ~~ CKLysre0.2
SAY ~La curiosite des bipedes... Je suis une dragonne, j'ai eu la malchance d'eclipser quelqu'un par mon potentiel et on m'a laissee pour morte, a six pieds sous terre. Avez vous connu l'empreinte de la Mort <CHARNAME>? Moi oui, et je suis revenue. Certes, j'ai du revoir ma forme pour survivre mais c'est une question de temps avant que je retrouve ma forme originelle. J'espere que cette petite histoire vous suffira, car maintenant, j'ai envie qu'on bouge.~
IF ~~ EXIT
END

IF ~~ CKLysre0.3
SAY ~La curiosite des bipedes... J'aime beaucoup manger mes contractants. Avec vous c'est un peu different, bien sur, nous irons loin ensemble, je n'ai donc pas eu a negocier votre carcasse. Mais les faibles qui comptent me doubler son legion, et rien ne me fait plus plaisir que d'enfouir mes crocs dans la viande salee d'un homme qui m'a fuit sans succes. La peur donne un gout merveilleux aux laches.~
IF ~~ EXIT
END

IF ~~ CKLysre0.4
SAY ~La curiosite des bipedes... Chaque jour, j'aime remercier la Grande Tiamat d'une proie ou d'un tresor. Vos Dieux ne sont qu'une farce devant celle Je lui rendrai hommage jusqu'a la fin de mon existence, car louee soit la Grande Tiamat. ~
IF ~~ EXIT
END

IF ~~ CKLysre0.5
SAY ~La curiosite des bipedes... J'aime les contrats, mais vous le savez deja. Il y a quelque chose de splendide dans la mise en place d'un contrat avec un mortel. Chaque mot compte. Plus d'une fois j'ai eu l'occasion de devorer un idiot, ou une idiote qui n'avait pas eu l'intelligence de voir un piege entre mes mots. Vous, c'est differents, je sens que votre route conduit a une proie que je convoite. Vous ne risquez rien.~
IF ~~ EXIT
END

//Observer sans rien dire./////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre1.1
SAY ~Lysre se rapproche rapidement de vous, plongeons son regard dans le votre. Vous ressentez un malaise de plus en plus profond qui vous fait detourner le regard.~
IF ~~ EXIT
END

IF ~~ CKLysre1.2
SAY ~Comme a son habitude. La dragonne semble plongee dans la contemplation de ses griffes. Vous remarquez qu'elle produit une petite melodie de cliquetit et qu'elle murmure quelque chose. Deux mots vous sembles revenir regulierement. "Louee" et "Tiamat"~
IF ~~ EXIT
END

IF ~~ CKLysre1.3
SAY ~Lysre vous semble d'abord occupee a entretenir ses griffes, mais vous constater qu'elle est en train de souffler doucement une brume acide sur une piece d'or, la reduisant lentement en fumee.~
IF ~~ EXIT
END

IF ~~ CKLysre1.4
SAY  ~Tout en volant tranquillement, Lysre souffle silencieusement une brume acide sur chacune de ses ecailles, detruissant la poussiere et les traces de votre dernier combat.~
IF ~~ EXIT
END

IF ~~ CKLysre1.5
SAY ~Voyant que l'occasion est au repos, Lysre se pose au sol et etend un moment ses ailes, elle semble tres occupee par l'examen de ses ecailles, mais vous remarquez qu'elle est attentive a ce qui l'entoure, puisqu'elle vous fixe droit dans les yeux.~
IF ~~ EXIT
END

//Conseils/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~~ CKLysre2.1
SAY ~Tiens toujours tes promesses. Tu peux etre la pire des ordures de ce monde, ou le plus preux des chevaliers rien de ca ne compte vraiment. Ce qui compte, c'est que tes mots soit toujours en accord avec tes actes.~
IF ~~ EXIT
END

IF ~~ CKLysre2.2
SAY ~Penses par toi meme, et ne va pas embeter un dragon.~
IF ~~ EXIT
END

IF ~~ CKLysre2.3
SAY ~Ne crois pas tes allies, ne crois pas tes proches, ne crois pas tes amis. Un jour, tu devras ou voudras peut etre tuer l'un de ceux la.~
IF ~~ EXIT
END

IF ~~ CKLysre2.4
SAY ~Celui qui est capable de te tromper une fois reste un traitre pour toujours.~
IF ~~ EXIT
END

IF ~~ CKLysre2.5
SAY ~Ne crois pas echapper a la colere d'un dragon.~
IF ~~ EXIT
END

//Enfant de Bhaal////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre3.1
SAY ~Les enfants de Bhaal... Je ne compte plus les troubles prophecies que j'ai entendu a votre sujet. Je dirais que vous etes interessants, apres tout, c'est par curiosite sur ton statut que je t'acorde le droit de me parler. Tu n'es pas tout a fait un simple bipede.~
IF ~~ EXIT
END

IF ~~ CKLysre3.2
SAY  ~Tu es membre d'une famille amusante <CHARNAME>. Une essence divine court dans tes veines, j'avoue donc m'interesser a ce que vous pouvez faire de votre existence. Combien de tes freres et soeur tuerez vous au nom de ce sang.~
IF ~~ EXIT
END

IF ~~ CKLysre3.3
SAY ~La? Absolument rien. J'aimerai que vous me laissiez seule.~
IF ~~ EXIT
END

IF ~~ CKLysre3.4
SAY ~Pff. Etre un enfant de Bhaal ne fait pas de vous un etre exceptionnel <CHARNAME>, cela vous donne une disposition tu vois. Vous pouvez en faire quelque chose, ou rien du tout. J'ai deja voyage avec une fille de Bhaal par le passe. Une sotte qui s'etait perdue dans la folie, partagee entre sa passion pour le meurtre de ceux qu'elle croisait et sa repugnance a s'y resoudre. Nous avons voyage ensemble un an, elle a croiser une lame et elle est morte. Ses yeux etait delicieux.~
IF ~~ EXIT
END

IF ~~ CKLysre3.5
SAY ~Ca ne fait pas de vous un Dragon. Donc au mieux vous faites une bonne distraction, au pire, un bon casse croute.~
IF ~~ EXIT
END

//Ce qu'est lysre////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre4.1
SAY ~Je vais garder pour moi la colere que provoque cette question idiote. Laissez moi tranquille immediatement.~
IF ~~ EXIT
END

IF ~~ CKLysre4.2
SAY ~Je suis une dragonne <CHARNAME>, ne jugez pas stupidement mon statut en vous basant sur ma taille, ou vous risquez de constater rapidement que ma colere s'accompagne de la brulure de l'acide. Laissez moi tranquille.~
IF ~~ EXIT
END

IF ~~ CKLysre4.3
SAY ~Je suis la suivante de la grande Tiamat. Grace a sa volonte je me suis echappee de la mort pour un jour la rejoindre. Je vie patiemment ma renaissance en attendant ce jour.~
IF ~~ EXIT
END

//Les cheveux////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre4.4
SAY ~Rien qui ne vous regarde <CHARNAME>~
IF ~~ EXIT
END

IF ~~ CKLysre4.5
SAY ~Ces cheveux sont un souvenir. D'une contractante qui m'a agreablement supris une fois. Maintenant laissez moi tranquille.~
IF ~~ EXIT
END

//Avenir////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre5.1
SAY ~Je vous laisserai derriere moi. Ce qui implique que les details ne vous regardent pas.~
IF ~~ EXIT
END

IF ~~ CKLysre5.2
SAY ~Je reprendrais une forme plus convenable, trouverai un endroit pour nicher... Et j'y planterai les griffes de la Grande Tiamat.~
IF ~~ EXIT
END

IF ~~ CKLysre5.3
SAY ~Je pense que je savourerai la conclusion de notre contrat pendant de longues decenies. Peut etre que je chercherai d'autres contractants pour m'en delecter.~
IF ~~ EXIT
END

IF ~~ CKLysre5.4
SAY ~Pour toute reponse, Lysre s'eloigne de vous.~
IF ~~ EXIT
END

IF ~~ CKLysre5.5
SAY ~N'est ce pas orgeuilleux de votre part de vous voir survivre? Commencons par resoudre la situation presente.~
IF ~~ EXIT
END

//Caresse homme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre6.1
SAY ~NE ME PREND PAS POUR UN ANIMAL <CHARNAME> ! JAMAIS !~
IF ~~ EXIT
END

IF ~~ CKLysre6.2
SAY ~Sans meme prevenir, Lysre plante ses crocs dans votre main, laissant son venin froler la plaie avant de vous lacher~
IF ~~ EXIT
END

IF ~~ CKLysre6.3
SAY ~Pour toute reponse, Lysre crache une brume d'acide dans votre direction.~
IF ~~ EXIT
END

IF ~~ CKLysre6.4
SAY ~A votre grande suprise, Lysre se laisse effleurer cette fois ci. Ses ecailles sont etonnament soyeuses et chaudes au toucher.~
IF ~~ EXIT
END

IF ~~ CKLysre6.5
SAY ~Etrangement, votre main semble ne jamais atteindre Lysre, qui pourtant ne semble pas vous fuir. Puis, alors que vous abandonnait l'idee de la toucher, ses griffes eraflent vos doigts.~
IF ~~ EXIT
END

//Caresse femme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre7.1
SAY ~Ne me touchez pas <CHARNAME>, ou je serai contrainte de vous apprendre la politesse a la maniere des elfes noirs. Dans. La. Douleur.~
IF ~~ EXIT
END

IF ~~ CKLysre7.2
SAY ~A votre grande suprise, Lysre se laisse effleurer cette fois ci. Ses ecailles sont etonnament soyeuses et chaudes au toucher. Vous avez meme le temps d'esquisser une caresse avant qu'elle ne glisse hors de votre portee~
IF ~~ EXIT
END

IF ~~ CKLysre7.3
SAY ~Lysre s'avance soudainement vers votre bras pour s'y accrocher. Sa prise est ferme mais permet a la Dragonne de s'approcher de votre visage pour voir scruter de ses deux yeux sombre. Elle se decroche sans un mot et reprend ses distances~
IF ~~ EXIT
END

IF ~~ CKLysre7.4
SAY ~Etrangement, votre main semble ne jamais atteindre Lysre, qui pourtant ne semble pas vous fuir.~
IF ~~ EXIT
END

IF ~~ CKLysre7.5
SAY ~Lysre vous evite avec grace, puis elle se pose sur votre tete en silence. Le message derriere sa manoeuvre n'est pas des plus clairs. Elle s'esquive en silence.~
IF ~~ EXIT
END

//Compliment Femme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre14.1
SAY ~Et parfois je me suprend a penser cela de vous <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ CKLysre14.2
SAY ~Je reconnais que vous suivre n'est pas une corvee aussi detestable que ce que j'ai crains en vous voyant le premier jour.~
IF ~~ EXIT
END

IF ~~ CKLysre14.3
SAY ~Ah, gardez vos flatteries pour un autre dragon.~
IF ~~ EXIT
END

IF ~~ CKLysre14.4
SAY ~Revenez dans dix ans, redites moi ça. Et si je ne vous arrache pas les yeux, je pense qu'on pourra dire la meme chose de moi.~
IF ~~ EXIT
END

IF ~~ CKLysre14.5
SAY ~Commencons par nous faire confiance, et un jour on en reparlera.~
IF ~~ EXIT
END

//Compliment Homme//////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre8.1
SAY ~Gardez vos flatteries pour une femelle de votre espece bipede.~
IF ~~ EXIT
END

IF ~~ CKLysre8.2
SAY ~Tsk~
IF ~~ EXIT
END

IF ~~ CKLysre8.3
SAY ~Et vous etes supportable~
IF ~~ EXIT
END

IF ~~ CKLysre8.4
SAY ~De mes contractants, vous n'etes pas le pire.~
IF ~~ EXIT
END

IF ~~ CKLysre8.5
SAY ~Lysre regarde ailleurs, visiblement elle vous ignore.~
IF ~~ EXIT
END

//Ombreterre/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre12.1
SAY ~C'est un endroit charmant. Des creatures dangereuses, des elfes noirs... quoique, ces deux categories ne devraient pas etre dissociees. Enfin, il n'est pas exclu que je cherche un coin similaire pour m'etablir a l'avenir.~
IF ~~ EXIT
END

IF ~~ CKLysre12.2
SAY ~Si l'on compare cet endroit aux enfers, ca reste un endroit tout a fait a mon gout.~
IF ~~ EXIT
END

IF ~~ CKLysre12.3
SAY ~L'endroit manque de petites proies. Je peux certes devorer tout ce qu'on trouve ici. Mais les mulots me manquent.~
IF ~~ EXIT
END

IF ~~ CKLysre12.4
SAY ~Aucun humain ne rode ici... Et ce n'est pas les elfes noirs ou ces stupides gnomes qui ferrait de bons contractants... L'ennui me gagnerait vite ici.~
IF ~~ EXIT
END

IF ~~ CKLysre12.5
SAY ~Je n'ai pas d'avis sur la question... nous n'allons pas vivre ici que je sache.~
IF ~~ EXIT
END

//Irenicus/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre13.1
SAY ~Pret ? Nous allons le tuer et si tu n'en veux pas. Je savourerai ses trippes encore fumantes. J'ai hate.~
IF ~~ EXIT
END

IF ~~ CKLysre13.2
SAY ~N'hesitez pas <CHARNAME> l'heure de la vengeance a sonne. Bientot vous savourerez son gout, et un jour prochain, ce sera mon tour.~
IF ~~ EXIT
END

IF ~~ CKLysre13.3
SAY ~Le doute n'est pas permis <CHARNAME> vous etes on ne peut plus pret pour ce combat. Et puis vous m'avez a vos cotes.~
IF ~~ EXIT
END

IF ~~ CKLysre13.4
SAY ~Irenicus n'est qu'un debris. De plus grand defis attendent les enfants de Bhaal. Mais il fera un bon adversaire.~
IF ~~ EXIT
END

IF ~~ CKLysre13.5
SAY ~La perte de votre ame semble vous rendre hesitant. Vous devez la recuperer. Vous allez la recuperer. N'ayez crainte.~
IF ~~ EXIT
END

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogues inities par un vulgaire PNJ//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~!IsGabber(Player1)~ CKIntru
SAY ~Mon temps m'est precieux, je ne l'accorde qu'a <CHARNAME> vois-tu?~
IF ~~ EXIT
END

///FIN/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
END