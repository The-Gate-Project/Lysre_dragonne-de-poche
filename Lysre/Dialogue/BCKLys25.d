BEGIN BCKLys25

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Banters avec <CHARNAME> ToB   /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// 1 /////////////////////////////////////////////////////////////////////

IF ~Global("CKLysreToBFriendTalk1","GLOBAL",0)~ CKLysreFToB1
SAY @0
++ @1 DO ~SetGlobal("CKLysreToBFriendTalk1","GLOBAL",1)~ + CKLysreFToB1.0
++ @2 DO ~SetGlobal("CKLysreToBFriendTalk1","GLOBAL",1)~ + CKLysreFToB1.1
++ @3 DO ~SetGlobal("CKLysreToBFriendTalk1","GLOBAL",1)~ + CKLysreFToB1.2
++ @4 DO ~SetGlobal("CKLysreToBFriendTalk1","GLOBAL",1)~ + CKLysreFToB1.3
END

IF ~~ CKLysreFToB1.0
SAY @5
IF ~~ EXIT
END

IF ~~ CKLysreFToB1.1
SAY @6
IF ~~ EXIT
END

IF ~~ CKLysreFToB1.2
SAY @7
IF ~~ EXIT
END

IF ~~ CKLysreFToB1.3
SAY @8
IF ~~ EXIT
END


// 2.

IF ~Global("CKLysreToBFriendTalk2","GLOBAL",0)~ CKLysreFToB2
SAY @23
++ @24 DO ~SetGlobal("CKLysreToBFriendTalk2","GLOBAL",1)~ + CKLysreFToB2.1
++ @25 DO ~SetGlobal("CKLysreToBFriendTalk2","GLOBAL",1)~ + CKLysreFToB2.2
++ @26 DO ~SetGlobal("CKLysreToBFriendTalk2","GLOBAL",1)~ + CKLysreFToB2.3
END

IF ~~ CKLysreFToB2.0
SAY @27
IF ~~ EXIT
END

IF ~~ CKLysreFToB2.1
SAY @28
IF ~~ + CKLysreFToB2.4
END

IF ~~ CKLysreFToB2.2
SAY @29
IF ~~ + CKLysreFToB2.4
END

IF ~~ CKLysreFToB2.3
SAY @30
IF ~~ + CKLysreFToB2.4
END

IF ~~ CKLysreFToB2.4
SAY @31
++ @32 + CKLysreFToB2.5
++ @33 + CKLysreFToB2.5
++ @34 + CKLysreFToB2.5
++ @35  + CKLysreFToB2.0
END

IF ~~ CKLysreFToB2.5
SAY @36
++ @37 + CKLysreFToB2.6
++ @38 + CKLysreFToB2.7
++ @39 + CKLysreFToB2.8
++ @40 + CKLysreFToB2.0
++ @41 + CKLysreFToB2.0
END 

IF ~~ CKLysreFToB2.6
SAY @42
IF ~~ EXIT
END

IF ~~ CKLysreFToB2.7
SAY @43
IF ~~ EXIT
END

IF ~~ CKLysreFToB2.8
SAY @44
IF ~~ EXIT
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Banters avec les NPCs  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Aerie   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #10
~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreAerieToB1","GLOBAL",0)~ THEN BAERIE25 CKLysreAerieToB1
@45
DO ~SetGlobal("CKLysreAerieToB1","GLOBAL",1)~
== BCKLys25 @46
== BAERIE25 @47
== BCKLys25 @48
== BAERIE25 @49
== BCKLys25 @50
== BAERIE25 @51
== BCKLys25 @52
EXIT


//Anomen   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #10
~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreAnomenToB1","GLOBAL",0)~ THEN BANOME25 CKLysreAnomenToB1
@53
DO ~SetGlobal("CKLysreAnomenToB1","GLOBAL",1)~
== BCKLys25 @54
== BANOME25 @55
== BCKLys25 @56
== BANOME25 @57
== BCKLys25 @58
EXIT


//Cernd   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #1
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreCerndToB1","GLOBAL",0)~ THEN BCERND25 CKLysreCerndToB1
@59
DO ~SetGlobal("CKLysreCerndToB1","GLOBAL",1)~
== BCKLys25 @60
== BCERND25 @61
== BCKLys25 @62
== BCERND25 @63
EXIT


//Edwin   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreEdwinToB1","GLOBAL",0)~ THEN BEDWIN25 CKLysreEdwinToB1
@64
DO ~SetGlobal("CKLysreEdwinToB1","GLOBAL",1)~
== BCKLys25 @65
== BEDWIN25 @66
== BCKLys25 @67
== BEDWIN25 @68
== BCKLys25 @69
EXIT

//Imoen   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
AreaType(CITY)
Global("CKLysreImoenToB1","GLOBAL",0)~ THEN BCKLys25 CKLysreImoenToB1
@73
DO ~SetGlobal("CKLysreImoenToB1","GLOBAL",1)~
== BIMOEN25 @74
== BCKLys25 @75
== BIMOEN25 @76
== BCKLys25 @77
== BIMOEN25 @78
EXIT


//Jaheira   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #10
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreJaheiraToB1","GLOBAL",0)~ THEN BJAHEI25 CKLysreJaheiraToB1
@79
DO ~SetGlobal("CKLysreJaheiraToB1","GLOBAL",1)~
== BCKLys25 @80
== BJAHEI25 @81
== BCKLys25 @82
== BJAHEI25 @83
== BCKLys25 @84
== BJAHEI25 @85
EXIT


//Jan   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreJanToB1","GLOBAL",0)~ THEN BJAN25 CKLysreJanToB1
@88
DO ~SetGlobal("CKLysreJanToB1","GLOBAL",1)~
== BCKLys25 @89
== BJAN25 @90
EXIT

//Keldorn   ///////////////////////////////////////////////////////////////////////////
//Aucun Banter, il s'est battu a mort avec Lysre

//Korgan   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreKorganToB1","GLOBAL",0)~ THEN BKORGA25 CKLysreKorganToB1
@99
DO ~SetGlobal("CKLysreKorganToB1","GLOBAL",1)~
== BCKLys25 @100
== BKORGA25 @101
== BCKLys25 @102
== BKORGA25 @103
EXIT

//Mazzy   ///////////////////////////////////////////////////////////////////////////
CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreMazzyToB1","GLOBAL",0)~ THEN BCKLys25 CKLysreMazzyToB1
@104
DO ~SetGlobal("CKLysreMazzyToB1","GLOBAL",1)~
== BMAZZY25 @105
== BCKLys25 @106
== BMAZZY25 @107
== BCKLys25 @108
== BMAZZY25 @109
== BCKLys25 @110
EXIT

//Minsc   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreMinscToB1","GLOBAL",0)~ THEN BMINSC25 CKLysreMinscToB1
@112
DO ~SetGlobal("CKLysreMinscToB1","GLOBAL",1)~
== BCKLys25 @113
== BMINSC25 @115
== BCKLys25 @117
== BMINSC25 @118
== BCKLys25 @119
EXIT

//Nalia   ///////////////////////////////////////////////////////////////////////////
CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreNaliaToB1","GLOBAL",0)~ THEN BCKLys25 CKLysreNaliaToB1
@120
DO ~SetGlobal("CKLysreNaliaToB1","GLOBAL",1)~
== BNALIA25 @121
== BCKLys25 @122
== BNALIA25 @123
EXIT

//Sarevok   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreSarevokToB2","GLOBAL",0)~ THEN BSAREV25 CKLysreSarevokToB2
@124
DO ~SetGlobal("CKLysreSarevokToB2","GLOBAL",1)~
== BCKLys25 @125
== BSAREV25 @126
== BCKLys25 @127
== BSAREV25 @128
== BCKLys25 @129
EXIT

//Valygar   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #5
~InParty("CKLysre")
See("Valygar")
!StateCheck("CKLysre",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("CKLysreValygarToB2","GLOBAL",0)~ THEN BVALYG25 CKLysreValygarToB2
@133
DO ~SetGlobal("CKLysreValygarToB2","GLOBAL",1)~
== BCKLys25 @134
== BVALYG25 @135
END
++ @136 EXTERN BCKLys25 CKLysreValygarToB2.1
++ @137 EXTERN BCKLys25 CKLysreValygarToB2.1
++ @138 EXTERN BVALYG25 CKLysreValygarToB2.2

CHAIN BCKLys25 CKLysreValygarToB2.1
@139
EXIT

CHAIN BVALYG25 CKLysreValygarToB2.2
@140
== BCKLys25 @150
EXIT

//Viconia   ///////////////////////////////////////////////////////////////////////////
CHAIN IF WEIGHT #10
~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("CKLysreViconiaToB1","GLOBAL",0)~ THEN BVICON25 CKLysreViconiaToB1
@141
DO ~SetGlobal("CKLysreViconiaToB1","GLOBAL",1)~
== BCKLys25 @142
== BVICON25 @143
== BCKLys25 @144
EXIT
