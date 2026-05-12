//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue du NPC en temps que pretresse. ///////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKFelic2

// Premier dialogue.

IF ~Global("CKquete1","GLOBAL",4)~ THEN BEGIN CKQ1.1.1
  SAY ~*Une peau propre, des vetements neufs, marques d'une spirale des 5 couleurs draconiques. Cette femme n'a plus rien de l'ombre que vous avez croisee en prison*~
  IF ~~ THEN  GOTO CKQ1.1.2
END

IF ~Global("CKquete1","GLOBAL",4)~ THEN BEGIN CKQ1.1.2
  SAY ~Soyez les bienvenus dans l'une des antres de la veneree Tiamat. Mon nom est Felicia, pretresse de ce temple.~
  IF ~~ THEN  GOTO CKQ1.1.3
END

IF ~Global("CKquete1","GLOBAL",4)~ THEN BEGIN CKQ1.1.3
  SAY ~La Mere m'a confiee l'honorable tache de faire croitre cet endroit. J'aurai donc besoin de petites mains. Mais je dois me concentrer sur l'endoctrinement de quelques acolytes...~
  IF ~~ THEN  GOTO CKQ1.1.4
END

IF ~Global("CKquete1","GLOBAL",4)~ THEN BEGIN CKQ1.1.4
  SAY ~Voici une proposition, trouvez moi de quoi renforcer notre emprise ici, et je vous confirai, a regret, l'un des objets magiques que j'ai "emprunte" aux temples lors de ma vie d'incendiaire.~
  IF ~~ THEN REPLY ~Marche conclu~ DO ~SetGlobal("CKquete1","GLOBAL",5)~  GOTO CKQ1.2
  IF ~~ THEN REPLY ~Jamais~ DO ~SetGlobal("CKquete1","GLOBAL",5)~  EXIT
END


IF ~~ THEN BEGIN CKQ1.2
  SAY ~Il me faut des serviteurs, des gardiens, et je sais ex-a-cte-ment qui sont les meilleurs candidats a ce role. Les kobolds! Il suffit de se montrer "persuasif" pour convaincre une meute de m- servir Tiamat. Je n'ai pas eu echo de tribu a proximite, aussi, trouvez moi une baguette de convocation. Je l'utiliserai pour "inviter" quelques kobolds.~
    IF ~~ THEN REPLY ~Je vais voir ce que je peux faire.~ EXIT
    IF ~~ THEN REPLY ~Pas pour le moment~ EXIT
END


IF ~Global("CKquete1","GLOBAL",5)~ THEN BEGIN CKQ2
  SAY ~Desirez vous recourir aux faveurs de la Mere des dragons?~
    IF ~~ THEN REPLY ~Bien sur~ DO ~StartStore("CKtiamat",LastTalkedToBy())~ EXIT
    IF ~!PARTYHASITEM("WAND10")~ THEN REPLY ~Concernant les Kobolds.~ GOTO CKQ2.1
    IF ~PARTYHASITEM("WAND10")~ THEN REPLY ~Concernant les Kobolds.~ GOTO CKQ3
    IF ~~ THEN REPLY ~Pas pour le moment~ EXIT
END


IF ~Global("CKquete1","GLOBAL",5)~ THEN BEGIN CKQ2.1
  SAY ~Je vous l'ai dit, il me faut une baguette de convocation. Et vous n'en avez aucune.~
    IF ~~ THEN  EXIT
END

IF ~Global("CKquete1","GLOBAL",5)~ THEN BEGIN CKQ3
  SAY ~Parfait, donnez moi ca. Je vais m'occuper de convoquer quelques serviteurs. Pour la suite... j'ai repris contact avec quelques amies. L'une d'elle m'a parlee d'une mercenaire interessante qui loge a l'auberge de la couronne de cuivre. Elle attend son guide, la Mere des Dragons. Allez la convaincre de s'installer ici voulez vous.~
    IF ~~ THEN REPLY ~Bien sur~ DO ~TakePartyitem("WAND10")SetGlobal("CKquete1","GLOBAL",6)AddexperienceParty(10000) ~ EXIT
    IF ~~ THEN REPLY ~Pas pour le moment~ DO ~SetGlobal("CKquete1","GLOBAL",6)~EXIT
END

IF ~Global("CKquete1","GLOBAL",6)~ THEN BEGIN CKQ2
  SAY ~Desirez vous recourir aux faveurs de la Mere des dragons?~
    IF ~~ THEN REPLY ~Bien sur~ DO ~StartStore("CKtiamat",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY ~Pas pour le moment~ EXIT
END

IF ~Global("CKquete1","GLOBAL",7)~ THEN BEGIN CKQ2
  SAY ~Desirez vous recourir aux faveurs de la Mere des dragons?~
    IF ~~ THEN REPLY ~Bien sur~ DO ~StartStore("CKtiamat",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY ~Pas pour le moment~ EXIT
END


IF ~Global("CKquete1","GLOBAL",8)~ THEN BEGIN CKQ2
  SAY ~La Mere des dragons vous remercie de votre implication. Je vous avez promis un objet contre votre aide n'est ce pas. Prenez cet anneau, il ne manquera pas a son ancien proprietaire.~
    IF ~~ THEN REPLY ~Bien sur~ DO ~SetGlobal("CKquete1","GLOBAL",9)AddexperienceParty(12000)  GiveItemCreate("RING07","Player1",1,1,1)
~ EXIT

END

IF ~Global("CKquete1","GLOBAL",9)~ THEN BEGIN CKQ2
  SAY ~Desirez vous recourir aux faveurs de la Mere des dragons?~
    IF ~~ THEN REPLY ~Bien sur~ DO ~StartStore("CKtiamat",LastTalkedToBy())~ EXIT
    IF ~~ THEN REPLY ~Pas pour le moment~ EXIT
END