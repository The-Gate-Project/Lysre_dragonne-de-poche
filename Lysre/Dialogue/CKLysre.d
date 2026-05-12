//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue de premiere rencontre ////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKLysre

CHAIN IF ~Global("CKLysreintro","LOCALS",0)~ THEN CKLysre Dialogueintro
~*Un bruit de vaiselle cassee. Dans la piece, une jeune dragonne aux ecailles sombres fait face a un homme horrifie. Elle s'agrippe aux rayons de la bibliotheque pour s'etirer gracieusement, avant de s'envoler pour se mettre un niveau des yeux de son interlocuteur. La, elle le toise de ses deux yeux semblables a des perles. *~
== CKMORTIN ~C-Comment tu m'as retrouve ?!~
== CKlYSRE ~Mortin, mortin... Je savais que tu ne serais pas mieux que la fange qui t'a vu naitre... Mais nous avions un accord non?~
== CKMORTIN ~Q-Qui accepterai de t-telles condi-~
== CKlYSRE ~(Crache de colere.) TU l'as accepte asticot ! Mon aide, contre ton ame miserable.~
== CKMORTIN ~Tu ne peux rien me faire ! vous la, aidez moi, cette abomination en veut a ma vie !~
END
++ ~Arriere dragonne ! Je ne te laisserai pas t'en prendre a un innocent !~ EXTERN CKLysre Dialogueintro2
++ ~Que se passe-t-il ici au juste?~ EXTERN CKLysre Dialogueintro2
++ ~*Ne rien dire.*~ EXTERN CKLysre Dialogueintro2

CHAIN IF ~~ THEN CKLysre Dialogueintro2
~(Ricane). J'ai le souvenir d'autre chose. *un son strident vous attaque les oreilles*~
== CKMORTIN ~(voix d'outre tombe) TUEZ LA, et je donnerai jusqu'a mon ame.~
== CKLYSRE  ~(voix d'outre tombe) Voici notre contrat, conclu sous le regard de la Reine des Dragons. Je tuerai votre ancienne epouse, contre quoi vous me cederez votre ame. Si je failli a ma tache, je m'arracherai le coeur. Si vous cherchez a rompre notre accord, vous m'accordez le droit de savoir ou vous retrouver, quoi qu'il arrive. Et de vous tuer.~
== CKMORTIN ~(voix d'outre tombe) C'est d'accord ! Du moment qu'elle ne passe pas la soiree !~
== CKLYSRE  ~ Entendez vous, humble rampant, les mots figes par notre accord?! J'ai tue cette femme, comme vous l'avez demande, j'ai execute chacune de vos demande, elle a souffert, pleurer, implorer votre pitie, et... apres une longue agonie. Elle. Est. Morte.~
== CKMORTIN ~ C-C'est un mensonge ! Vous ne pouvez pas croire ce monstre !?~
== CKLYSRE  ~ Qu'ils vous croient ou non n'importe en rien, Mortin. Vous m'avez trompee, vous avez cherche aupres des pretres un moyen de briser notre accord, votre "ma-le-di-ction". Mais nul ne saurait echapper a la colere de Tiamat et de ses filles. Que ces gens veulent vous aidez ou non n'importe pas.~
DO ~SetGlobal("CKLysreintro","LOCALS",1)~
END
++ ~Laisse cet homme tranquille !~ EXIT
++ ~Tuez le, visiblement il le merite.~ EXIT
++ ~*Ne rien dire.*~ EXIT


CHAIN IF ~Global("CKLysreintro","LOCALS",1)~ THEN CKLysre Dialogueinitial
~Oh... mais que voila? Une aura des plus.... interessante. Je m'excuse pour le desodre... Mais ca n'a pas vraiment l'air d'etre votre demeure? Louee soit la sombre Reine pour ces rencontres. Je peux sentir une essence... interessante... nauseabonde... Mais je vois surtout cette voie... oui... ~ [CKLysre01]
DO ~SetGlobal("CKLysreSpawn","GLOBAL",2)~           //Le dialogue a ete initie
END
++ ~Je...~ EXTERN CKLysre Interuption
++ ~Que...~ EXTERN CKLysre Interuption
++ ~Mais...~ EXTERN CKLysre Interuption

//Note : le ++ permet d'entourer des conditions pour le dialogue
// CHAIN requires EXTERN DIALOGUENAME, because the game needs to know which dialogue file to go to. It could be EXTERN VICONIJ, and then Viconia would speak.

CHAIN IF ~~ THEN CKLysre Interuption
~Shhhh. Les creatures civilises commencent par se presenter. Je me prenome Lysre, et si vous ne voulez pas que je vous defigure, ou que je vous fasse subir le meme sort que ce cher Mordin, que Tiamat ai son ame... faites attention a ne pas ecorcher le nom qui m'a ete attribue par la grande Mere.~
//== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN ~Ce lezard ne m'inspire pas.~
END
++ ~Mon nom est <CHARNAME>.~ EXTERN CKLysre b1.1
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2


CHAIN CKLysre b1.1
~<CHARNAME>... Commencez donc par savourer ma vue. Je gage que rares sont les creatures qui ont eu l'occasion d'autant vous eblouir que moi. *Elle chasse le sang de ses griffes en eclaboussant le mur* Je vous laisse le droit de poser quelques questions, apres tout vous devez en avoir.~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Qui etait cet homme?~ EXTERN CKLysre b1.mortin
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.qui
~<CHARNAME>... Vous etes sourd, sot, inatentif, peut etre l'un ou les trois... Il ne faut pas trop en attendre des bipedes je suppose... *Elle articule exagerement* Je me prenome Lysre, l'une des suivantes de la Grande et Noble Mere des Dragons. Louee soit Elle.~
END
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Qui etait cet homme?~ EXTERN CKLysre b1.mortin
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.quoi
~(soupire) Je suis une dragonne... bipede. Seriez vous inculte, quelle tristesse. Aujourd'hui, je croit encore, mais je serais prochainement a l'origine de nombre de recits horrifies en tant que Ravageuse de Tiamat... Il faudra que j'evite de tuer toute mes proies...~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qui etait cet homme?~ EXTERN CKLysre b1.mortin
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2


CHAIN CKLysre b1.mortin
~Mortin, c'etait un faible, un lache. Sa dame l'avait bien compris, et il n'avait pas accepter la rupture... Pauvre, pauvre petit Mortin (ricane) il a donne son ame pour se venger, puis il a cru pouvoir tromper la vigilance de Tiamat et de ses suivantes. Ai je precise qu'en plus d'etre atroce a regarder, comme tout les bipedes, il etait aussi particulierement stupide? Qu'une femelle se rabatte sur un si mauvais male, c'est desesperant de votre part, bipedes...~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.aura
~Oui, une aura... une odeur... Vous sentez la delicateur odeur de la mort et de la pourriture <CHARNAME>. J'oserai dire que vous paraissez presque appetissant. C'est une odeur, divine, dans tout les sens du termes. Mais, ca, ce n'est qu'un detail. Vous avez une voie a suivre, et c'est le plus important...~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Qui etait cet homme?~ EXTERN CKLysre b1.mortin
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps a parler avec un lezard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.fin
~Je pourrez vous mentir en disant que je suis enchantee, mais allons aux faits. Voyez vous, je sens qu'un jour, votre voie sinueuse et jonchee de depouilles pourrissantes vous guidera jusqu'a l'une des choses que je convoite le plus. L'opportunite est rare, aussi devoir supporter la presence de bipede me parait supportable...~
~Je vais etre genereuse, n'y voyez aucun piege, mais moi, Lysre je vous propose, humble mortel, de nous lier par un pacte sous le regard de Tiamat... Louee soit la sombre Reine pour notre rencontre, liee sans doute (ricane) au hasard.~
END
++ ~Un pacte, mais de quoi parles tu?~ EXTERN CKlysre Contrat
++ ~Un pacte ? Comme si un lezard pouvais m'etre utile !~ EXTERN CKlysre b1.2

CHAIN CKLysre Contrat
~Je ne vous savez pas si... limite <CHARNAME>. Un pacte, c'est un petit tour divin de la splendide Reine, une astuce pour lier deux destinees. Ce n'est pas vraiment un sort de quete, mais pour les bipedes que j'accompagne, c'est une garantie que je ne serais pas dangereuse. Beaucoup de bipedes me convoite, mais ont facilement peur de moi. D'habitude, je ne supporte les inferieurs que pour obtenir une remuneration, une ame pour la Dame, ces petites choses, demandez a Mortin... Ah, c'est impossible maintenant... Mort ou vif, quelle difference avec celui la. Comme lui, nombre de bipedes m'ont crue assez bete pour pouvoir me duper. Aussi, les pactes assurent que chacun trouve son compte.  ~
~Et, comme je l'ai dit, vous n'aurez rien a m'offrir d'autre que votre compagnie, et la depouille d'une future victime. Votre presence ne m'inspire pas pour autant... Vous etes un bipede un peu au dessus du panier, mais un bipede malgre tout. Mais vous irez a la rencontre de ce que je cherche... Aussi, votre compagnie a de la valeur. En echange de ma presence a vos cotes,je m'engage a vous suivre et a vous aider dans la limite de mes talents. Seriez vous interesse ? ~
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

