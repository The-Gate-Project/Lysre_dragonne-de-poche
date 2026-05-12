//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue de premiere rencontre ////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKLysre

CHAIN IF ~Global("CKLysreSpawn","GLOBAL",1)~ THEN CKLysre Dialogueinitial
~*Dans un craquetement de tonnere, l'espace se dechire pour laisser place a une jeune dragonne aux ecailles sombres. Celle-ci s'agrippe aux rayons de la bibliotheque pour s'etirer gracieusement, avant de s'envoler. Il ne fait aucun doute que tout son attention est focalisee sur <CHARNAME> qu'elle toise de ses deux yeux semblable a des perles. *~
~Oh... Voila une aura des plus.... surprenantes. Louee soit la sombre Reine pour cette rencontre. Je peux sentir une essence... interessante... nauseabonde... Mais je vois surtout cette voie... oui... ~ [CKLysre01]
DO ~SetGlobal("CKLysreSpawn","GLOBAL",2)~           //Le dialogue a ete initie
END
++ ~Je...~ EXTERN CKLysre Interuption
++ ~Que...~ EXTERN CKLysre Interuption
++ ~Mais...~ EXTERN CKLysre Interuption

//Note : le ++ permet d'entourer des conditions pour le dialogue
// CHAIN requires EXTERN DIALOGUENAME, because the game needs to know which dialogue file to go to. It could be EXTERN VICONIJ, and then Viconia would speak.

CHAIN IF ~~ THEN CKLysre Interuption
~Shhhh. Les creatures civilises commencent par se presenter. Je me prenome Lysre, et si vous ne voulez pas que je vous defigure, faite attention a ne pas ecorcher le nom qui m'a ete attribue par la grande Mere.~ [CKLysre01]
//== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN ~Ce lezard ne m'inspire pas.~
END
++ ~Mon nom est <CHARNAME>.~ EXTERN CKLysre b1.1
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2


CHAIN CKLysre b1.1
~<CHARNAME>... Je pourrez vous mentir en disant que je suis enchantee, mais allons aux faits. Voyez vous, je sens qu'un jour, vos pas vous guiderons jusqu'a ce que je convoite le plus. L'opportunite est rare, aussi devoir supporter la presence de bipede me parait supportable...~
~Je vais etre claire, je vous propose de nous lier par un pacte sous le regard de Tiamat... Louee soit la sombre reine.~
END
++ ~Un pacte, mais de quoi parles tu?~ EXTERN CKlysre Contrat
++ ~Un pacte ? Comme si un lezard pouvais m'etre utile !~ EXTERN CKlysre b1.2

CHAIN CKLysre Contrat
~Je ne vous savez pas si... limite. Un pacte, c'est un petit tour divin de la Reine, une astuce pour lier deux destinees. Ce n'est pas vraiment un sort de quete, mais pour les bipedes que j'accompagne, c'est une garantie que je ne serais pas dangereuse. Beaucoup de bipedes me convoite, mais ont facilement peur de moi. D'habitude, je ne supporte les inferieurs que pour obtenir une remuneration, une ame pour la Dame, ces petites choses. Mais, nombre de bipedes m'ont cru assez bete pour me duper. Aussi, les pactes assurent que chacun trouve son compte.  ~
~Et, comme je l'ai dit, vous n'aurez rien a m'offrir d'autre que votre compagnie, et la depouille d'une future victime. Votre presence ne m'inspire pas pour autant... Vous etes un bipede. Mais vous irez a la rencontre de ce que je cherche... Aussi, votre compagnie a de la valeur. En echange de ma presence a vos cotes,je m'engage a vous suivre et a vous aider dans la limite de mes talents. Seriez vous interesse ? ~
END
++ ~Marche conclu!~ EXTERN CKLysre b1.join
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais il faut que je te previenne, mon objectif est de secourir une amie, Imoen, qui a ete capturee par les mages cagoules.~ EXTERN CKLysre b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais je compte bien retrouver Irenicus, ce mage m'a capture et torture~ EXTERN CKLysre b1.4
++ ~Quelles sont les conditions?~ EXTERN CKLysre G1
++ ~Quelles sont les penalites?~ EXTERN CKLysre P1
++ ~ Me lier a toi? Jamais tu es inutile !~ EXTERN  CKLysre b1.2
++ ~ Me lier a toi? Jamais tu es un monstre !~ EXTERN  CKLysre b1.2
++ ~ Je regrette, je ne suis pas interesse~ EXTERN CKlysre b1.2

CHAIN CKLysre G1
~Il n'y a pas de pieges :
Devoir de l'enfant de Bhaal : Me laissez l'accompagner jusqu'a ce que je rencontre ma proie, la tue, la devore.
Devoir de la dragonne Lysre : Ne pas chercher a nuir a <CHARNAME>~
END
++ ~Marche conclu!~ EXTERN  CKLysre b1.join
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais il faut que je te previenne, mon objectif est de secourir une amie, Imoen, qui a ete capturee par les mages cagoules.~ EXTERN CKLysre b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais je compte bien retrouver Irenicus, ce mage m'a capture et torture~ EXTERN CKLysre b1.4
++ ~Quelles sont les penalites?~ EXTERN CKLysre P1
++ ~ Me lier a toi? Jamais tu es inutile !~ EXTERN  CKLysre b1.2
++ ~ Me lier a toi? Jamais tu es un monstre !~ EXTERN  CKLysre b1.2
++ ~ Je regrette, je ne suis pas interesse~ EXTERN  CKLysre b1.2


CHAIN CKLysre P1
~Il n'y a pas de pieges :
Si le pacte est rompu par l'enfant de Bhaal : Offrir a la dragonne le don de le retrouver, ou qu'il se cache, jusqu'a la fin de son existence.
Si le pacte est rompu par la dragonne : Elle s'engage a s'arracher le coeur.  ~
END
++ ~Marche conclu!~ EXTERN  CKLysre b1.join
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais il faut que je te previenne, mon objectif est de secourir une amie, Imoen, qui a ete capturee par les mages cagoules.~ EXTERN CKLysre b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais je compte bien retrouver Irenicus, ce mage m'a capture et torture~ EXTERN CKLysre b1.4
++ ~Quelles sont les conditions?~ EXTERN CKLysre G1
++ ~ Me lier a toi? Jamais tu es inutile !~ EXTERN  CKLysre b1.2
++ ~ Me lier a toi? Jamais tu es un monstre !~ EXTERN  CKLysre b1.2
++ ~ Je regrette, je ne suis pas interesse~ EXTERN  CKLysre b1.2

CHAIN CKLysre b1.2
~Si tu es stupide de point de vouloir te priver de ma presence. Soit, part bipede. Je trouverai un meilleur moyen d'arriver a mes fins.~
DO ~EscapeArea()~
EXIT

CHAIN CKLysre b1.3
~Sauver une bidepe... Voila une idee saugrenue. Enfin, pour ce que ca m'importe.~
END
IF ~~ EXTERN CKLysre b1.join

CHAIN CKLysre b1.4
~Oh, <CHARNAME>... Rien n'est plus doux que la vengeance, allons tuer ce mage. Faisons naitre la peur en lui... puis devorons ses tripes encore fumantes.~
END
IF ~~ EXTERN CKLysre b1.join

CHAIN CKLysre b1.join
~Pour conclure notre contrat sous le regard de la grande Tiamat. Il ne vous reste qu'a poser une goutte de sang sur mon front. Savourez ce contact, mortel. Je n'accorde que rarement au bipedes ma vue splendide, alors le contact de mes splendides ecailles...~
END
++ ~*Realiser le rituel*~ EXTERN CKLysre Enroute
++ ~ Finalement... non.~ EXTERN  CKLysre b1.2


CHAIN CKLysre Enroute
~Une sensation piquante remonte de votre main jusqu'a votre coeur, laissant dans son sillage une chaleur desagreable. Un gout acide se repend dans votre bouche.~
~Bien! Allons, <CHARNAME> ne perdons pas plus de temps dans cet endroit, s'il faut parler vous devriez y arriver en marchant.~
DO ~JoinParty()~ // When Branwen joins, she will use her CKLysreJ dialogue - J for "joined"
EXIT


//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SECURITE // Ce dialogue est prevu si le PNJ reste sur une map, mais qu'on l'a refuse dans le groupe. //
//////////////////////////////////////////////////////////////////////////////////////////////////////////
CHAIN IF ~Global("CKLysreSpawn","GLOBAL",2)~ THEN CKLysre Quittemap                                     //
~Hors de mon chemin, bipede.~                                                                           //
DO ~EscapeArea()~                                                                                       //
END                                                                                                     //
//////////////////////////////////////////////////////////////////////////////////////////////////////////

