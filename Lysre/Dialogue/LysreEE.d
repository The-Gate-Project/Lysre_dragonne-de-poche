//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Banters avec les NPCS de l'EE ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Dorn///////////////////////////////
//Soa
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreDorn1","GLOBAL",0)~ THEN BCKLysre CKLysreDorn1
@0
DO ~SetGlobal("CKLysreDorn1","GLOBAL",1)~
== BDORN @1
== BCKLysre @2
== BDORN @3
== BCKLysre @4
== BDORN @5
EXIT

// ToB
CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreToBDorn1","GLOBAL",0)~ THEN BCKLys25 CKLysreToBDorn1
@6
DO ~SetGlobal("CKLysreToBDorn1","GLOBAL",1)~
== BDORN25  @7
== BCKLys25 @8
== BDORN25  @9
== BCKLys25 @10
== BDORN25  @11
EXIT

// Hexxat   ///////////////////////////////

CHAIN
IF ~InParty("Hexxat")
See("Hexxat")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreHexxat1","GLOBAL",0)~ THEN BCKLysre CKLysreHexxat1
@12
DO ~SetGlobal("CKLysreHexxat1","GLOBAL",1)~
== BHEXXAT @13
== BCKLysre @14
== BHEXXAT @15
EXIT

// Neera  ///////////////////////////////

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("CKLysre",CD_STATE_NOTVALID)
Global("CKLysreNeera1","GLOBAL",0)~ THEN BCKLysre CKLysreNeera1
@16
DO ~SetGlobal("CKLysreNeera1","GLOBAL",1)~
== BNEERA @17
== BCKLysre @18 
== BNEERA @19
EXIT


// Rasaad


