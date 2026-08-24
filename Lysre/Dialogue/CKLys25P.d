//Reformation du groupe ToB

BEGIN CKLys25P

//Rupture définitive de contrat ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~~ CKLysreAbdandonToB1
SAY @0 /* Un instant ? J'ai du mal comprendre, vous me demandez de partir?! */
++ @1 /* Mais pas du tout Lysre. Reprenons notre route. */ DO ~JoinParty()~ EXIT
++ @2 /* C'est exact. */ + CKLysreAbdandonToB2
END

IF ~~ CKLysreAbdandonToB2
SAY @3 /* Soit maudit <CHARNAME> de rompre notre engagement après tout ce que j'ai fait pour toi... Compte sur moi pour ne jamais oublier ce moment. Pour te le faire payer, j'ai l'éternité devant moi pour te rendre la pareille. */
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
