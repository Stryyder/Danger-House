' --------------------------------- Danger House ---------------------------
'
'         Progamming By: Toby Glaze w/ contributions from Jason Jackson
'         Program Testers: Micky, Baldy, & ME (obviously)
'
'         AN Aint Got Not Productions Generation
'
' --------------------------------------------------------------------------
'         Size: 130K in .bas format
'         Size: 30K in .zip format
'         Sub-Procedures: 7
'         Command Concentration: Select Case, Line, Circle, Paint, Locate,
'                                Print, Key, For-Next, Goto, If, Then
' --------------------------------------------------------------------------
'        For More AGN Products Please Email 'The President' Of AGN
'                       tglaze@hotmail.com
'                 http://www.geocities.com/TimesSquare/Stadium/4507
' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



DECLARE SUB walkthrough ()
DECLARE SUB module2 ()
DECLARE SUB cheater ()
DECLARE SUB instructionsub ()
DECLARE SUB story ()
DECLARE SUB endofgame ()
DECLARE SUB bigletter (W$, sz%, colr%, style%, position%)
COMMON SHARED NEWROOM, HALLWAYSWITCH, PENDANT, PENDANTUSE, GOLDCOIN, BRACELET
COMMON SHARED BRACELETUSE, BROWNKEY, BLACKKEY, REDKEY, SILVERKEY, SECRETDOOR
COMMON SHARED useladder, takeladder, BATTERYPOWER, BATTERYCHARGER, wallpower
KEY 1, "EXAMINE "
KEY 2, "LOOK "
KEY 3, "TAKE "
KEY 4, "USE "
KEY 5, "OPEN "
KEY 6, "FORWARD "
KEY 7, "BACKWARD "
KEY 8, "RIGHT "
KEY 9, "LEFT "
KEY 10, "PRESS "
KEY 30, "EXIT GAME"
SCREEN 13
LINE (10, 50)-(295, 50), 192 'Top Shade line
LINE (10, 51)-(295, 51), 191
LINE (10, 52)-(295, 52), 190
LINE (10, 53)-(295, 53), 189
LINE (10, 54)-(295, 54), 188
LINE (10, 150)-(295, 150), 188 'Bottom Shade line
LINE (10, 151)-(295, 151), 189
LINE (10, 152)-(295, 152), 190
LINE (10, 153)-(295, 153), 191
LINE (10, 154)-(295, 154), 192
x = 149
a = 152
x1 = 150
a1 = 151
DO
    LINE (x, 90)-(x, 120), 199
    LINE (a, 90)-(a, 120), 199
    LINE (x1, 90)-(x1, 120), 0
    LINE (a1, 90)-(a1, 120), 0
    x = x - 1
    a = a + 1
    x1 = x1 - 1
    a1 = a1 + 1
    IF x1 < 130 THEN LOCATE 14, 18: COLOR 192: PRINT "N"
    IF x1 < 120 THEN LOCATE 14, 16: PRINT "G"
    IF x1 < 105 THEN LOCATE 14, 14: PRINT "A"
    IF a1 > 170 THEN LOCATE 14, 21: COLOR 2: PRINT "P"
    IF a1 > 175 THEN LOCATE 14, 22: PRINT "r"
    IF a1 > 180 THEN LOCATE 14, 23: PRINT "o"
    IF a1 > 190 THEN LOCATE 14, 24: PRINT "d"
    IF a1 > 200 THEN LOCATE 14, 25: PRINT "u"
    IF a1 > 205 THEN LOCATE 14, 26: PRINT "c"
    IF a1 > 215 THEN LOCATE 14, 27: PRINT "t"
    IF a1 > 220 THEN LOCATE 14, 28: PRINT "i"
    IF a1 > 230 THEN LOCATE 14, 29: PRINT "o"
    IF a1 > 235 THEN LOCATE 14, 30: PRINT "n"
    IF a1 > 245 THEN LOCATE 14, 31: PRINT "s"
LOOP UNTIL x < 10 AND a > 300
PLAY "O2 T255 C<C>C"
presents:
DO
    LINE (x, 90)-(x, 120), 199
    LINE (a, 90)-(a, 120), 199
    LINE (x1, 90)-(x1, 120), 0
    LINE (a1, 90)-(a1, 120), 0
    x = x + 1
    a = a - 1
    x1 = x - 1
    a1 = a + 1
LOOP UNTIL x > 148 AND y < 151
x = 149
a = 152
x1 = 150
a1 = 151
DO
    LINE (x, 90)-(x, 120), 199
    LINE (a, 90)-(a, 120), 199
    LINE (x1, 90)-(x1, 120), 0
    LINE (a1, 90)-(a1, 120), 0
    x = x - 1
    a = a + 1
    x1 = x1 - 1
    a1 = a1 + 1
    IF x1 < 130 THEN LOCATE 14, 18: COLOR 2: PRINT "E"
    IF x1 < 120 THEN LOCATE 14, 16: COLOR 192: PRINT "R"
    IF x1 < 105 THEN LOCATE 14, 14: COLOR 2: PRINT "P"
    IF a1 > 170 THEN LOCATE 14, 20: COLOR 192: PRINT "S"
    IF a1 > 175 THEN LOCATE 14, 22: COLOR 2: PRINT "E"
    IF a1 > 190 THEN LOCATE 14, 24: COLOR 192: PRINT "N"
    IF a1 > 205 THEN LOCATE 14, 26: COLOR 2: PRINT "T"
    IF a1 > 220 THEN LOCATE 14, 28: COLOR 192: PRINT "S"
LOOP UNTIL x < 1 AND a > 330
PLAY "O2 T255 C+<C+>C+"
a$ = "A Tobias Glaze Program"
c = 184
FOR W = 1 TO 23
    COLOR c
    LOCATE 14, 8: PRINT LEFT$(a$, W)
    c = c + 1
NEXT W
FOR J = 1 TO 6000: NEXT J
FOR c = 30 TO 16 STEP -1
    COLOR c
    LOCATE 14, 8: PRINT a$
    FOR J = 1 TO 50: NEXT J
NEXT c
PLAY "o2 t255 c<c>c"
LINE (10, 50)-(295, 50), 184 'Top Shade line
LINE (10, 51)-(295, 51), 185
LINE (10, 52)-(295, 52), 186
LINE (10, 53)-(295, 53), 187
LINE (10, 54)-(295, 54), 188
LINE (10, 150)-(295, 150), 188 'Bottom Shade line
LINE (10, 151)-(295, 151), 187
LINE (10, 152)-(295, 152), 186
LINE (10, 153)-(295, 153), 185
LINE (10, 154)-(295, 154), 184
DIM alien%(10000)
xpos = 36
ypos = 27
COLOR 186
LOCATE 14, 8: PRINT "D A N G E R  H O U S E"
theme$ = "MBT245 O4C5O3F5F5O4C5O3F5F5O4C5O3F5O4C+5C+5"
PLAY theme$
PLAY theme$
SLEEP
SCREEN 9
bigletter "Make Sure Caps Lock Is On", 2, 4, 1, 170
bigletter "Press any key to continue", 1, 1, 1, 300
LINE (0, 0)-(20, 20), 0, BF
SLEEP
PREGAME:
CLS
LOCATE 1, 1: PRINT "(1) Story"
LOCATE 2, 1: PRINT "(2) Instructions"
LOCATE 3, 1: PRINT "(3) Play Danger House"
LOCATE 4, 1: PRINT "(4) Cheater hints"
LOCATE 5, 1: PRINT "(5) Complete Walkthrough"
LOCATE 6, 1: INPUT "What do ya want 2 do?", what2do$
SELECT CASE what2do$
    CASE "1"
        story
        GOTO PREGAME
    CASE "2"
        instructionsub
        GOTO PREGAME
    CASE "3"
        GOTO GATES
    CASE "4"
        cheater
        GOTO PREGAME
    CASE "5"
        walkthrough
        GOTO PREGAME
    CASE ELSE
        GOTO PREGAME
END SELECT

HALLWAY:
DOORTWO = 0
DOORONE = 0
DOORTHREE = 0
DOORFOUR = 0
LINE (0, 0)-(629, 350), 15, BF
LINE (0, 0)-(275, 120), 0
LINE (629, 0)-(325, 120), 0
LINE (325, 120)-(275, 120), 0
LINE (275, 120)-(325, 200), 0, B
LINE (0, 350)-(275, 200), 0
LINE (629, 350)-(325, 200), 0
'=====================================front door
LINE (285, 140)-(315, 200), 0, B
CIRCLE (290, 170), 3, 0 ' door knob
PAINT (290, 170), 14, 0
PAINT (300, 125), 9, 0
PAINT (300, 145), 6, 0
' ============================== left side door
LINE (150, 100)-(150, 268), 0
LINE (200, 105)-(200, 241), 0
LINE (150, 100)-(200, 105), 0
CIRCLE (160, 185), 5, 0
PAINT (160, 185), 14, 0
PAINT (151, 102), 6, 0
PAINT (5, 10), 9, 0 'left wall
'=============================== first right door
LINE (520, 70)-(520, 297), 0
LINE (450, 90)-(450, 262), 0
LINE (450, 90)-(520, 70), 0
CIRCLE (460, 185), 6, 0
PAINT (460, 185), 14, 0
PAINT (500, 80), 6, 0
'=============================== second right door
LINE (350, 125)-(350, 212), 0
LINE (380, 119)-(380, 226), 0
LINE (380, 119)-(350, 125), 0
CIRCLE (356, 175), 4, 0
PAINT (356, 175), 14, 0
PAINT (351, 127), 6, 0
PAINT (620, 10), 9, 0 'right wall
PAINT (350, 1), 9, 0 'ceiling
PAINT (350, 348), 11, 0 'floor
LINE (0, 290)-(630, 350), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (100, 200)-(110, 195), 0
LINE (100, 210)-(110, 205), 0
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(<)  (^)  (>)  (>)  (\/)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
commandline:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION$
    CASE "EXAMINE DOOR"
        LOCATE 23, 1: PRINT "The door is worn and cracked."
    CASE "EXAMINE DOORS"
        LOCATE 23, 1: PRINT "The doors are worn and cracked."
    CASE "EXAMINE FLOOR"
        LOCATE 23, 1: PRINT "You see that the floor is flat. Wow."
    CASE "EXAMINE ROOF"
        LOCATE 23, 1: PRINT "You see that the roof is flat. Wow."
    CASE "EXAMINE WALL"
        LOCATE 23, 1: PRINT "Something is carved here. [1NK 2NK 3RK 4BK]"
    CASE "OPEN DOOR"
        LOCATE 23, 1: PRINT "                                                                  "
        LOCATE 23, 1: PRINT "Which door?"
    CASE "LOOK"
        LOCATE 23, 1: PRINT "Four doors. They are labled ONE-FOUR in thick lettering."
    CASE "OPEN DOOR ONE"
        SOUND 37, 1.5
        ' =================================== DOOR ONE OPEN
        IF DOORONE = 1 THEN LOCATE 23, 1: PRINT "Are you blind? It's already open!": GOTO skp
        LINE (200, 105)-(300, 241), 6, BF
        LINE (200, 105)-(300, 241), 0, B
        CIRCLE (160, 185), 5, 0
        PAINT (160, 185), 0
        PAINT (151, 101), 0
        LINE (200, 241)-(150, 241), 15
        DOORONE = 1
        skp:
    CASE "LEFT"
        IF DOORONE = 1 AND HALLWAYSWITCH = 1 THEN GOTO BALLROOM
        IF DOORONE = 1 AND HALLWAYSWITHC = 0 THEN GOTO ARTROOM
        LOCATE 23, 1: PRINT "Ouch. Do you think you are a ghost or something?"
        '========================================= DOOR TWO OPEN
    CASE "OPEN DOOR TWO"
        IF DOORTWO = 1 THEN LOCATE 23, 1: PRINT "It's already open dummy.": GOTO skp
        IF DOORONE = 1 THEN GOTO SKP1
        SOUND 37, 1.5
        LINE (285, 140)-(315, 200), 14, BF
        LINE (285, 140)-(250, 200), 6, BF
        SKP1:
        LINE (300, 140)-(315, 200), 14, BF
        DOORTWO = 1
        ' ========================================== DOOR THREE
    CASE "OPEN DOOR THREE"
        IF REDKEY = 0 THEN LOCATE 23, 1: PRINT "The door is locked."
        IF REDKEY = 1 AND OPENDOORTHREE = 0 THEN LOCATE 23, 1: PRINT "You'll have to use a key to get through this door."
        IF REDKEY = 1 AND OPENDOORTHREE = 1 THEN
            SOUND 37, 1.5
            LINE (350, 125)-(370, 212), 4, BF: OPEN3 = 1
            LOCATE 23, 1: PRINT "The door opens with a creak."
        END IF
    CASE "USE RED KEY"
        LOCATE 23, 1: PRINT "Use RED KEY on what?"
    CASE "USE RED KEY ON DOOR THREE"
        IF REDKEY = 1 THEN LOCATE 23, 1: PRINT "You unlock the door.": OPENDOORTHREE = 1
        IF REDKEY = 0 THEN LOCATE 23, 1: PRINT "You do not have a RED KEY."
    CASE "USE RED KEY IN DOOR THREE"
        IF REDKEY = 1 THEN LOCATE 23, 1: PRINT "The door is now unlocked.": OPENDOORTHREE = 1
        IF REDKEY = 0 THEN LOCATE 23, 1: PRINT "You do not have a RED KEY."
    CASE "USE RED KEY FOR DOOR THREE"
        IF REDKEY = 1 THEN LOCATE 23, 1: PRINT "Click. The Key Works!": OPENDOORTHREE = 1
        IF REDKEY = 0 THEN LOCATE 23, 1: PRINT "You do not have a RED KEY."
    CASE "FORWARD"
        IF DOORTWO = 1 AND HALLWAYSWITCH = 1 THEN GOTO KITCHEN
        IF DOORTWO = 1 AND HALLWAYSWITCH = 0 THEN GOTO DEN
        LOCATE 23, 1: PRINT "You might want to open the door first"
    CASE "BACKWARD"
        LOCATE 23, 1: PRINT "You exit the house."
        SLEEP
        GOTO porch
    CASE "RIGHT THROUGH DOOR THREE"
        IF OPEN3 = 1 AND HALLWAYSWITCH = 1 THEN GOTO STUDY
        IF OPEN3 = 1 AND HALLWAYSWITCH = 0 THEN GOTO STAIRROOM
        IF OPEN3 = 0 THEN LOCATE 23, 1: PRINT "Umm. Open the door first."
        ' =================================== Door Four
    CASE "OPEN DOOR FOUR"
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "The door is locked."
        IF BLACKKEY = 1 THEN OPENDOORFOUR = 1
        IF BLACKKEY = 1 AND OPENDOORFOUR = 1 THEN
            SOUND 37, 1.5
            LINE (450, 250)-(520, 250), 0
            PAINT (460, 185), 0, 0
            PAINT (500, 80), 0, 0
            LOCATE 23, 1: PRINT "The door opens with a creak."
        END IF
    CASE "USE BLACK KEY"
        LOCATE 23, 1: PRINT "Use BLACK KEY on what?"
    CASE "USE BLACK KEY ON DOOR FOUR"
        IF BLACKKEY = 1 THEN LOCATE 23, 1: PRINT "Click. The Key Works!": OPENDOORTHREE = 1
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "You don't have a BLACK KEY."
    CASE "USE BLACK KEY IN DOOR FOUR"
        IF BLACKKEY = 1 THEN LOCATE 23, 1: PRINT "Click. The Key Works!": OPENDOORTHREE = 1
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "You don't have a BLACK KEY."
    CASE "USE BLACK KEY FOR DOOR FOUR"
        IF BLACKKEY = 1 THEN LOCATE 23, 1: PRINT "Click. The Key Works!": OPENDOORTHREE = 1
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "You don't have a BLACK KEY."
    CASE "RIGHT THROUGH DOOR FOUR"
        IF OPENDOORFOUR = 1 AND HALLWAYSWITCH = 1 THEN GOTO BEDROOM2
        IF OPENDOORFOUR = 1 AND HALLWAYSWITCH = 0 THEN GOTO PIANOROOM
        IF OPENDOORFOUR = 0 THEN LOCATE 23, 1: PRINT "You'll have to open the door first."
    CASE ELSE
        LOCATE 23, 1: PRINT "Umm.. you can't do that."
END SELECT
SLEEP
LOCATE 23, 1: PRINT "                                                                  "
GOTO commandline

ARTROOM:
'===================================== ART ROOM
DOORONE = 0
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, BF
LINE (0, 0)-(630, 290), 8, B
LINE (1, 200)-(630, 200), 15

LINE (300, 70)-(455, 125), 6, BF 'BLUE PICTURE (PICTURE ONE)
LINE (300, 70)-(455, 125), 0, B
LINE (303, 73)-(452, 122), 0, B
LINE (304, 74)-(451, 121), 1, BF
LINE (100, 70)-(255, 125), 6, BF 'GREEN PICTURE (PICTURE TWO)
LINE (100, 70)-(255, 125), 0, B
LINE (103, 73)-(252, 122), 0, B
LINE (104, 74)-(251, 121), 10, BF
LINE (500, 70)-(555, 125), 6, BF 'TURQUOISE PICTURE (PICTURE THREE)
LINE (500, 70)-(555, 125), 0, B
LINE (503, 73)-(552, 122), 0, B
LINE (504, 74)-(551, 121), 3, BF

' == LAMP STAND
LINE (0, 170)-(630, 170), 0
CIRCLE (130, 180), 40, 0, , , .3
PAINT (120, 180), 9, 0
CIRCLE (130, 210), 30, 0, , , .3
PAINT (120, 215), 9, 0
CIRCLE (130, 180), 40, 12, , 2, .3
CIRCLE (130, 180), 40, 0, , 1.1, .3
LINE (120, 191)-(140, 210), 1, BF
' ==LAMP
LINE (110, 140)-(150, 140), 1
LINE (120, 90)-(140, 90), 1
LINE (120, 90)-(110, 140), 1
LINE (140, 90)-(150, 140), 1
CIRCLE (130, 160), 20, 2
PAINT (130, 160), 12, 2
PAINT (130, 120), 8, 1
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(>)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE1:
LOCATE 23, 1: PRINT "                                                                      "
LOCATE 23, 1: INPUT "Command:", ACTION1$
LOCATE 23, 1: PRINT "                                                                    "
SELECT CASE ACTION1$
    CASE "RIGHT"
        SOUND 37, 1.5
        GOTO HALLWAY
    CASE "FORWARD"
        LOCATE 23, 1: PRINT "There is a wall here. May I remind you that you are not an apparition."
    CASE "LEFT"
        LOCATE 23, 1: PRINT "A wall."
    CASE "BACKWARD"
        LOCATE 23, 1: PRINT "Bap! You ran into the wall."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "Three paintings, labled in block letters ONE-THREE. A lamp."
    CASE "EXAMINE LAMP"
        IF flick = 0 THEN LOCATE 23, 1: PRINT "The lamp is off."
        IF flick = 1 THEN LOCATE 23, 1: PRINT "The lamp is on. It casts an eerie glow."
    CASE "EXAMINE WALL"
        LOCATE 23, 1: PRINT "Strangely inconsequential."
    CASE "EXAMINE FLOOR"
        LOCATE 23, 1: PRINT "A white floor. Not exactly an intelligent selection."
    CASE "USE LAMP"
        LOCATE 23, 1: PRINT "You flick the lamp on."
        PAINT (130, 120), 14, 1
        flick = 1
    CASE "EXAMINE TABLE"
        LOCATE 23, 1: PRINT "Strange scratch marks."
    CASE "TAKE TABLE"
        LOCATE 23, 1: PRINT "Where are you going to take a table, you infusorian?"
    CASE "TAKE LAMP"
        LOCATE 23, 1: PRINT "You take the lamp. Useless. You put it back."
    CASE "TAKE PAINTING"
        LOCATE 23, 1: PRINT "An art thief are you? Put it back."
    CASE "EXAMINE SCRATCH MARKS"
        LOCATE 23, 1: PRINT "Deep gouges, maybe done with a knife."
    CASE "EXAMINE LAMPSTAND"
        LOCATE 23, 1: PRINT "There is nothing peculiar about this."
    CASE "EXAMINE LAMP STAND"
        LOCATE 23, 1: PRINT "There is nothing peculiar about this."
    CASE "EXAMINE PAINTING ONE"
        IF flick = 0 THEN LOCATE 23, 1: PRINT "Hmm. A beautiful painted valley."
        IF flick = 1 THEN LOCATE 23, 1: PRINT "What? There is some sort of code hidden here. [A3 C8 B1]"
    CASE "EXAMINE PAINTING TWO"
        IF flick = 0 THEN LOCATE 23, 1: PRINT "A painting of the ocean."
        IF flick = 1 THEN LOCATE 23, 1: PRINT "Huh? This is what you see. [login:LARRYMO] "
    CASE "EXAMINE PAINTING THREE"
        IF flick = 0 THEN LOCATE 23, 1: PRINT "Gorgeous. A painting of a woman named Rebecca."
        IF flick = 1 THEN LOCATE 23, 1: PRINT "A single word is illuminated here! [INSPIRATION]"
    CASE ELSE
        LOCATE 23, 1: PRINT "You can't do that!"
END SELECT
SLEEP
GOTO COMMANDLINE1

DEN: '============================= DEN
DOORONE = 0
DOORTWO = 0

LINE (0, 0)-(630, 290), 0, BF ' ERASE PREVIOUS SCREEN
LINE (0, 0)-(630, 290), 15, B ' FLOOR AND WALL
LINE (0, 170)-(630, 170), 15
PAINT (12, 12), 1, 15
PAINT (12, 172), 9, 15

LINE (190, 119)-(260, 169), 6, BF ' TELEVISION
LINE (193, 122)-(257, 166), 0, BF

LINE (280, 169)-(170, 199), 6, BF 'DRAWERS
LINE (280, 169)-(170, 199), 0, B
LINE (277, 172)-(173, 196), 0, B
LINE (270, 179)-(180, 189), 0, B
CIRCLE (225, 184), 3, 0

LINE (110, 199)-(159, 109), 6, BF ' LEFT SPEAKER
LINE (110, 199)-(159, 109), 0, B
LINE (113, 196)-(156, 112), 0, B
LINE (115, 169)-(154, 114), 0, BF
CIRCLE (135, 183), 15, 0
CIRCLE (135, 183), 13, 8
PAINT (135, 183), 8

LINE (295, 199)-(344, 109), 6, BF ' RIGHT SPEAKER
LINE (295, 199)-(344, 109), 0, B
LINE (298, 196)-(341, 112), 0, B
LINE (300, 169)-(339, 114), 0, BF
CIRCLE (320, 183), 15, 0
CIRCLE (320, 183), 13, 8
PAINT (320, 183), 8

CIRCLE (530, 180), 40, 0, , , .3 'SMALL TABLE
PAINT (520, 180), 6, 0
CIRCLE (530, 210), 30, 0, , , .3
PAINT (520, 215), 6, 0
CIRCLE (530, 180), 40, 12, , 2, .3
CIRCLE (530, 180), 40, 0, , 1.1, .3
LINE (520, 191)-(540, 205), 1, BF

LINE (530, 185)-(517, 170), 15, BF
LINE (530, 184)-(517, 175), 1, BF ' CUP OF WATER
LINE (530, 185)-(517, 170), 0, B

LINE (105, 215)-(360, 270), 6, BF ' COUCH
LINE (105, 215)-(360, 270), 0, B
LINE (105, 235)-(75, 270), 6, BF
LINE (105, 235)-(75, 270), 0, B
LINE (361, 235)-(391, 270), 6, BF
LINE (361, 235)-(391, 270), 0, B

CIRCLE (450, 90), 30, 0
PAINT (450, 90), 0
CIRCLE (450, 90), 25, 15 'DART BOARD
PAINT (450, 90), 15
CIRCLE (450, 90), 20, 8
PAINT (450, 90), 8
CIRCLE (450, 90), 15, 15
PAINT (450, 90), 15
CIRCLE (450, 90), 10, 8
PAINT (450, 90), 8
LINE (480, 90)-(420, 90), 0
LINE (450, 70)-(450, 110), 0
CIRCLE (450, 90), 5, 4
PAINT (450, 90), 4

IF tv = 1 THEN
    tvx = 193: tvy = 122
    tvc = 257: tvd = 166
    DO
        c = 15
        LINE (tvx, tvy)-(tvc, tvd), c, B , &HFF00 'TURN ON TELEVISION
        tvx = tvx + 1: tvy = tvy + 1
        tvc = tvc - 1: tvd = tvd - 1
    LOOP UNTIL tvx > tvc
END IF
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE2:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION2$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION2$
    CASE "EXAMINE TELEVISION"
        LOCATE 23, 1: PRINT "The television is off."
    CASE "EXAMINE DRAWERS"
        LOCATE 23, 1: PRINT "Nothing but scratch marks here."
    CASE "EXAMINE TV"
        LOCATE 23, 1: PRINT "The tv is off."
    CASE "EXAMINE DARTBOARD"
        LOCATE 23, 1: PRINT "The dartboard is made of cork."
    CASE "EXAMINE TABLE"
        LOCATE 23, 1: PRINT "This table has scratch marks all over it."
    CASE "EXAMINE SCRATCH MARKS"
        LOCATE 23, 1: PRINT "They look as if they were done with a knife."
    CASE "EXAMINE SPEAKERS"
        LOCATE 23, 1: PRINT "Wow. These bad boys could shatter windows."
    CASE "EXAMINE WALL"
        LOCATE 23, 1: PRINT "Blue walls."
    CASE "EXAMINE FLOOR"
        LOCATE 23, 1: PRINT "Light blue floor."
    CASE "EXAMINE CUP"
        LOCATE 23, 1: PRINT "The cup is full of dirty water."
    CASE "EXAMINE CUP OF WATER"
        LOCATE 23, 1: PRINT "A silver key at the bottom of the glass!"
    CASE "EXAMINE WATER"
        LOCATE 23, 1: PRINT "You found a Silver Key!"
    CASE "EXAMINE DIRTY WATER"
        LOCATE 23, 1: PRINT "You found a Silver Key!"
    CASE "EXAMINE COUCH"
        LOCATE 23, 1: PRINT "You sit. Comfy. You stand. No time to relax."
    CASE "EXAMINE SILVER KEY"
        LOCATE 23, 1: PRINT "The key is a little rusty."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A TV, a couch, a cup of water?  Some drawers...hmmm."
    CASE "TAKE SILVER KEY"
        LOCATE 23, 1: PRINT "You put the silver key in your pocket."
        SILVERKEY = 1
    CASE "USE SILVER KEY"
        IF SILVERKEY = 1 THEN LOCATE 23, 1: PRINT "The key won't work on anything in this room."
        IF SILVERKEY = 0 THEN LOCATE 23, 1: PRINT "You can't use what you haven't taken!"
    CASE "USE TELEVISION"
        LOCATE 23, 1: PRINT "The shows you like are not on yet."
        tv = 1
        SLEEP
        GOTO DEN
    CASE "USE TV"
        tv = 1
        LOCATE 23, 1: PRINT "The shows you like are not on yet."
        SLEEP
        GOTO DEN
    CASE "LEFT"
        LOCATE 23, 1: PRINT "You see a wall. Nothing peculiar."
    CASE "FORWARD"
        LOCATE 23, 1: PRINT "You see a wall. Nothing peculiar."
    CASE "RIGHT"
        LOCATE 23, 1: PRINT "A wall."
    CASE "BACKWARD"
        SOUND 37, 1.5
        GOTO HALLWAY
    CASE ELSE
        LOCATE 23, 1: PRINT "You can't do that."
END SELECT
SLEEP
GOTO COMMANDLINE2

porch:
LINE (0, 0)-(629, 350), 0, BF
LINE (0, 0)-(629, 350), 8, B 'PORCH
LINE (0, 290)-(630, 350), 0, BF
PAINT (400, 10), 8
LINE (250, 20)-(400, 300), 0, B
PAINT (300, 100), 6, 0
LINE (100, 300)-(649, 300), 0
LINE (100, 300)-(-100, 400), 0
PAINT (90, 325), 15, 0
LINE (100, 300)-(100, 0), 0
LINE (130, 300)-(130, 0), 0
CIRCLE (265, 185), 8, 0
PAINT (265, 185), 14, 0
PAINT (120, 150), 15, 0
LINE (130, 300)-(40, 350), 0
PAINT (100, 325), 15, 0
LINE (160, 300)-(70, 350), 0
LINE (190, 300)-(100, 350), 0
LINE (210, 300)-(130, 350), 0
LINE (240, 300)-(160, 350), 0
LINE (270, 300)-(190, 350), 0
LINE (300, 300)-(220, 350), 0
LINE (330, 300)-(250, 350), 0
LINE (360, 300)-(280, 350), 0
LINE (390, 300)-(310, 350), 0
LINE (420, 300)-(340, 350), 0
LINE (450, 300)-(370, 350), 0
LINE (480, 300)-(400, 350), 0
LINE (510, 300)-(430, 350), 0
LINE (540, 300)-(470, 350), 0
LINE (570, 300)-(500, 350), 0
LINE (600, 300)-(530, 350), 0
LINE (630, 300)-(570, 350), 0
LINE (100, 180)-(0, 220), 0
LINE (100, 200)-(0, 245), 0
PAINT (50, 220), 15, 0
LINE (100, 200)-(0, 300), 0
LINE (100, 220)-(0, 320), 0
PAINT (50, 260), 15, 0
LINE (0, 245)-(38, 260), 0
LINE (55, 265)-(100, 290), 0
LINE (0, 265)-(23, 275), 0
PAINT (22, 270), 15, 0
LINE (40, 280)-(91, 305), 0
PAINT (41, 280), 15, 0
LINE (0, 360)-(565, 395), 15, B
LINE (0, 290)-(640, 350), 0, BF
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)  (^)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE3:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION3$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION3$
    CASE "EXAMINE PORCH"
        LOCATE 23, 1: PRINT "The porch is painted white. There are scratch marks on it."
    CASE "EXAMINE SCRATCH MARKS"
        LOCATE 23, 1: PRINT "These were definitely done with a knife."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "You are on the porch."
    CASE "BACKWARD"
        GOTO FULLHOUSE
    CASE "EXAMINE DOOR"
        LOCATE 23, 1: PRINT "A heavy pine door."
    CASE "OPEN DOOR"
        SOUND 37, 1.5
        FRONTDOOR = 1
        GOTO OPENFRONTDOOR
    CASE "FORWARD"
        IF FRONTDOOR = 1 THEN FRONTDOOR = 0: GOTO HALLWAY
        LOCATE 23, 1: PRINT "You can't walk through the door dummy."
    CASE ELSE
        LOCATE 23, 1: PRINT "You can't do that"
END SELECT
SLEEP
GOTO COMMANDLINE3

OPENFRONTDOOR:
LINE (0, 290)-(640, 350), 0, BF
LINE (0, 0)-(629, 350), 8, B 'house
PAINT (400, 10), 8 'house                      'PORCH DOOR OPEN
LINE (250, 20)-(400, 300), 0, B 'door
CIRCLE (265, 185), 8, 15
PAINT (265, 185), 15
LINE (250, 200)-(300, 200), 0
PAINT (275, 150), 1, 0
LINE (250, 200)-(250, 20), 0
LINE (300, 200)-(300, 40), 0
LINE (300, 40)-(400, 20), 0
PAINT (270, 205), 9, 0
LINE (400, 300)-(300, 270), 0
LINE (400, 20)-(300, 40), 0
LINE (300, 40)-(300, 270), 0
PAINT (305, 200), 6, 0
CIRCLE (320, 175), 8, 0, , , .7
PAINT (320, 175), 14, 0
LINE (100, 300)-(629, 300), 0
LINE (100, 300)-(-100, 400), 0
PAINT (90, 325), 15, 0
LINE (100, 300)-(100, 0), 0
LINE (130, 300)-(130, 0), 0
PAINT (120, 150), 15, 0
LINE (130, 300)-(40, 350), 0
PAINT (100, 325), 15, 0
LINE (160, 300)-(70, 350), 0
LINE (190, 300)-(100, 350), 0
LINE (210, 300)-(130, 350), 0
LINE (240, 300)-(160, 350), 0
LINE (270, 300)-(190, 350), 0
LINE (300, 300)-(220, 350), 0
LINE (330, 300)-(250, 350), 0
LINE (360, 300)-(280, 350), 0
LINE (390, 300)-(310, 350), 0
LINE (420, 300)-(340, 350), 0
LINE (450, 300)-(370, 350), 0
LINE (480, 300)-(400, 350), 0
LINE (510, 300)-(430, 350), 0
LINE (540, 300)-(470, 350), 0
LINE (570, 300)-(500, 350), 0
LINE (600, 300)-(530, 350), 0
LINE (629, 300)-(570, 350), 0
LINE (100, 180)-(0, 220), 0
LINE (100, 200)-(0, 245), 0
PAINT (50, 220), 15, 0
LINE (100, 200)-(0, 300), 0
LINE (100, 220)-(0, 320), 0
PAINT (50, 260), 15, 0
LINE (0, 245)-(38, 260), 0
LINE (55, 265)-(100, 290), 0
LINE (0, 265)-(23, 275), 0
PAINT (22, 270), 15, 0
LINE (40, 280)-(91, 305), 0
PAINT (41, 280), 15, 0
LINE (0, 0)-(650, 15), 0, BF
LINE (0, 291)-(630, 350), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)  (^)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE4:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION4$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION4$
    CASE "FORWARD"
        IF FRONTDOOR = 1 THEN FRONTDOOR = 0: GOTO HALLWAY
        LOCATE 23, 1: PRINT "You can't walk through the door dummy."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "You can see four doors in a long hallway."
    CASE "EXAMINE RAILING"
        LOCATE 23, 1: PRINT "The railing is white."
    CASE "EXAMINE PORCH"
        LOCATE 23, 1: PRINT "The porch is bright white. It hurts your eyes."
    CASE "BACKWARD"
        GOTO FULLHOUSE
    CASE ELSE
        LOCATE 23, 1: PRINT "You can't do that."
END SELECT
SLEEP
GOTO COMMANDLINE4

FULLHOUSE:
LINE (0, 0)-(650, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 200)-(629, 200), 15
PAINT (2, 201), 2, 15
PAINT (2, 2), 3, 15
LINE (150, 300)-(150, 150), 0 'OUTSIDE OF HOUSE
LINE (150, 150)-(160, 145), 0
LINE (160, 145)-(160, 305), 8
LINE (160, 305)-(180, 310), 0
LINE (160, 305)-(150, 300), 0
LINE (160, 145)-(180, 140), 0
LINE (180, 310)-(180, 140), 6
LINE (180, 310)-(195, 140), 0, B
LINE (180, 310)-(180, 140), 0
PAINT (190, 200), 8, 0
PAINT (155, 200), 8, 0
PAINT (175, 200), 8, 0
LINE (195, 140)-(215, 145), 0
LINE (195, 310)-(215, 305), 0
LINE (215, 145)-(215, 305), 0
PAINT (200, 200), 8, 0
LINE (215, 305)-(225, 300), 0
LINE (215, 145)-(225, 150), 0
LINE (225, 300)-(225, 150), 0
PAINT (220, 200), 8, 0
LINE (150, 150)-(185, 80), 0
LINE (185, 80)-(225, 150), 0
CIRCLE (185, 110), 16, 0, 3, , .1
PAINT (185, 110), 4, 0
PAINT (185, 130), 4, 0
LINE (225, 280)-(250, 280), 0
LINE (225, 150)-(305, 150), 0
LINE (305, 150)-(305, 200), 0
LINE (305, 200)-(310, 205), 0
LINE (305, 150)-(310, 150), 0
LINE (310, 205)-(310, 150), 0
LINE (310, 205)-(320, 205), 0
LINE (310, 151)-(320, 151), 0
LINE (320, 151)-(320, 205), 0
LINE (320, 150)-(325, 145), 0
LINE (310, 205)-(320, 205), 0
LINE (320, 205)-(325, 200), 0
LINE (325, 150)-(325, 200), 0
LINE (325, 150)-(315, 130), 0
LINE (315, 130)-(305, 150), 0
PAINT (315, 140), 4, 0
PAINT (307, 153), 8, 0
PAINT (315, 180), 8, 0
PAINT (322, 180), 8, 0
LINE (222, 145)-(260, 80), 0
LINE (260, 80)-(306, 145), 0
PAINT (260, 90), 8, 0
LINE (260, 80)-(250, 80), 0
LINE (250, 80)-(215, 135), 0
PAINT (240, 100), 4, 0
LINE (287, 200)-(305, 200), 0
LINE (225, 200)-(264, 200), 0
LINE (264, 200)-(275, 180), 0
LINE (275, 180)-(287, 200), 0
LINE (250, 190)-(250, 160), 0
LINE (250, 190)-(268, 190), 0
LINE (250, 160)-(275, 160), 0
LINE (275, 160)-(275, 180), 0
PAINT (260, 180), 14, 0
PAINT (240, 170), 8, 0
LINE (250, 225)-(305, 225), 0
LINE (250, 225)-(275, 180), 0
LINE (305, 225)-(275, 180), 0
PAINT (275, 195), 4, 0
LINE (275, 225)-(380, 225), 0
LINE (380, 225)-(355, 200), 0
LINE (355, 200)-(325, 200), 0
PAINT (335, 210), 4, 0
LINE (250, 225)-(250, 300), 0
LINE (305, 225)-(305, 300), 0
LINE (250, 300)-(305, 300), 0
LINE (255, 225)-(255, 295), 0
LINE (255, 295)-(250, 300), 0
PAINT (251, 297), 15, 0
LINE (300, 295)-(300, 225), 0
LINE (300, 295)-(305, 300), 0
PAINT (303, 297), 15, 0
LINE (300, 295)-(255, 295), 0
LINE (305, 280)-(375, 280), 0
LINE (375, 280)-(375, 225), 0
LINE (375, 255)-(305, 255), 0
LINE (375, 260)-(305, 260), 0
LINE (375, 275)-(305, 275), 0
PAINT (360, 277), 15, 0
PAINT (360, 256), 15, 0
LINE (310, 260)-(310, 275), 0
LINE (313, 260)-(313, 275), 0
LINE (318, 260)-(318, 275), 0
LINE (321, 260)-(321, 275), 0
LINE (326, 260)-(326, 275), 0
LINE (329, 260)-(329, 275), 0
LINE (334, 260)-(334, 275), 0
LINE (337, 260)-(337, 275), 0
LINE (342, 260)-(342, 275), 0
LINE (345, 260)-(345, 275), 0
LINE (350, 260)-(350, 275), 0
LINE (353, 260)-(353, 275), 0
LINE (358, 260)-(358, 275), 0
LINE (361, 260)-(361, 275), 0
LINE (366, 260)-(366, 275), 0
LINE (369, 260)-(369, 275), 0
LINE (380, 225)-(380, 280), 0
LINE (380, 280)-(375, 280), 0
PAINT (377, 270), 15, 0
PAINT (327, 265), 15, 0
PAINT (319, 265), 15, 0
PAINT (312, 265), 15, 0
PAINT (351, 265), 15, 0
PAINT (360, 265), 15, 0
PAINT (367, 265), 15, 0
PAINT (343, 265), 15, 0
PAINT (336, 265), 15, 0
LINE (265, 240)-(265, 275), 0
LINE (265, 240)-(285, 240), 0
LINE (285, 240)-(285, 275), 0
LINE (285, 275)-(265, 275), 0
LINE (268, 245)-(282, 255), 0, B
PAINT (270, 247), 14, 0
PAINT (270, 256), 6, 0
PAINT (245, 250), 8, 0
LINE (255, 275)-(300, 275), 0
PAINT (256, 270), 8, 0
LINE (325, 255)-(325, 225), 0
PAINT (323, 230), 8, 0
PAINT (325, 265), 8, 0
PAINT (317, 265), 8, 0
PAINT (309, 265), 8, 0
LINE (200, 190)-(210, 160), 0, B
PAINT (205, 170), 14, 0
LINE (200, 225)-(210, 255), 0, B
PAINT (205, 235), 14, 0
LINE (170, 190)-(155, 160), 0, B
PAINT (165, 170), 14, 0
LINE (170, 225)-(155, 255), 0, B
PAINT (165, 235), 14, 0
LINE (250, 300)-(250, 305), 0
LINE (250, 305)-(305, 305), 0
LINE (305, 305)-(305, 300), 0
LINE (255, 290)-(300, 290), 0
LINE (255, 285)-(300, 285), 0
LINE (255, 280)-(300, 280), 0
PAINT (270, 283), 15, 0
PAINT (270, 278), 15, 0
PAINT (270, 293), 15, 0
PAINT (270, 286), 15, 0
PAINT (270, 298), 15, 0
PAINT (270, 302), 15, 0
LINE (375, 250)-(325, 250), 0
LINE (376, 253)-(325, 253), 0
PAINT (350, 251), 15, 0
LINE (0, 0)-(630, 290), 15, B
LINE (301, 226)-(304, 290), 15, BF
LINE (251, 226)-(254, 290), 15, BF
CIRCLE (500, 50), 40, 14
PAINT (500, 50), 14
LINE (2, 150)-(149, 198), 6, BF ' FENCE
LINE (2, 150)-(149, 199), 0, B
LINE (12, 150)-(12, 198), 0
LINE (22, 150)-(22, 198), 0
LINE (32, 150)-(32, 198), 0 '
LINE (42, 150)-(42, 198), 0
LINE (52, 150)-(52, 198), 0
LINE (62, 150)-(62, 198), 0
LINE (72, 150)-(72, 198), 0
LINE (82, 150)-(82, 198), 0
LINE (92, 150)-(92, 198), 0
LINE (102, 150)-(102, 198), 0
LINE (112, 150)-(110, 198), 0
LINE (122, 150)-(122, 198), 0
LINE (132, 150)-(132, 198), 0
LINE (142, 150)-(142, 198), 0
LINE (629, 150)-(326, 198), 6, BF
LINE (629, 150)-(326, 198), 0, B
LINE (336, 150)-(336, 198), 0
LINE (346, 150)-(346, 198), 0 '
LINE (356, 150)-(356, 198), 0
LINE (366, 150)-(366, 198), 0
LINE (376, 150)-(376, 198), 0
LINE (386, 150)-(386, 198), 0
LINE (396, 150)-(396, 198), 0
LINE (406, 150)-(406, 198), 0
LINE (416, 150)-(416, 198), 0
LINE (426, 150)-(426, 198), 0
LINE (436, 150)-(436, 198), 0
LINE (446, 150)-(446, 198), 0
LINE (456, 150)-(456, 198), 0
LINE (466, 150)-(466, 198), 0 '
LINE (476, 150)-(476, 198), 0
LINE (486, 150)-(486, 198), 0
LINE (496, 150)-(496, 198), 0
LINE (506, 150)-(506, 198), 0
LINE (516, 150)-(516, 198), 0
LINE (526, 150)-(526, 198), 0
LINE (536, 150)-(536, 198), 0
LINE (546, 150)-(546, 198), 0
LINE (556, 150)-(556, 198), 0
LINE (566, 150)-(566, 198), 0
LINE (576, 150)-(576, 198), 0
LINE (586, 150)-(586, 198), 0 ' FENCE
LINE (596, 150)-(596, 198), 0
LINE (606, 150)-(606, 198), 0
LINE (616, 150)-(616, 198), 0
LINE (626, 150)-(626, 198), 0
LINE (30, 240)-(60, 260), 6, BF ' DOG HOUSE
LINE (30, 240)-(60, 260), 0, B
LINE (20, 250)-(45, 230), 0
LINE (45, 230)-(70, 250), 0
PAINT (45, 231), 4, 0
LINE (530, 240)-(560, 260), 8, BF ' WELL
LINE (530, 240)-(560, 260), 0, B
LINE (530, 240)-(533, 220), 6, BF
LINE (557, 240)-(560, 220), 6, BF
LINE (530, 240)-(533, 220), 0, B
LINE (557, 240)-(560, 220), 0, B
LINE (530, 220)-(560, 220), 0
LINE (545, 220)-(545, 230), 0
LINE (540, 230)-(550, 237), 8, BF ' DIPPER BUCKET
LINE (540, 230)-(550, 237), 0, B
LINE (520, 230)-(545, 210), 0 ' WELL
LINE (545, 210)-(570, 230), 0
PAINT (545, 211), 8, 0
LINE (530, 245)-(560, 245), 0 ' WELL DETAIL
LINE (530, 250)-(560, 250), 0
LINE (530, 255)-(560, 255), 0
LINE (540, 240)-(540, 245), 0
LINE (550, 240)-(550, 245), 0
LINE (535, 245)-(535, 250), 0
LINE (545, 245)-(545, 250), 0
LINE (555, 245)-(555, 250), 0
LINE (540, 250)-(540, 255), 0
LINE (550, 250)-(550, 255), 0
LINE (535, 255)-(535, 260), 0
LINE (545, 255)-(545, 260), 0
LINE (555, 255)-(555, 260), 0
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)  (^)  (<)  (>)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE5:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION5$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION5$
    CASE "EXAMINE HOUSE"
        LOCATE 23, 1: PRINT "You'll have to get a closer look."
    CASE "EXAMINE DOG HOUSE"
        LOCATE 23, 1: PRINT "A dirty bowl of water."
    CASE "EXAMINE DOGHOUSE"
        LOCATE 23, 1: PRINT "There's a bowl of dirty water here."
    CASE "EXAMINE BOWL OF DIRTY WATER"
        LOCATE 23, 1: PRINT "You see a RED KEY."
    CASE "EXAMINE DIRTY WATER"
        LOCATE 23, 1: PRINT "You see a RED KEY."
    CASE "EXAMINE WATER"
        IF REDKEY = 0 THEN LOCATE 23, 1: PRINT "You have found the RED KEY!"
        IF REDKEY = 1 THEN LOCATE 23, 1: PRINT "This is where you found the RED KEY."
    CASE "TAKE RED KEY"
        LOCATE 23, 1: PRINT "You now have the RED KEY."
        REDKEY = 1
    CASE "EXAMINE RED KEY"
        LOCATE 23, 1: PRINT "The key is red. It looks to be stained with blood!"
    CASE "EXAMINE BLOOD"
        LOCATE 23, 1: PRINT "The blood is fresh! Why was it in the dog house?"
    CASE "EXAMINE FENCE"
        LOCATE 23, 1: PRINT "The fence has many scratches in it."
    CASE "EXAMINE SCRATCHES"
        LOCATE 23, 1: PRINT "It looks as if these scratches were gouged with a knife!"
    CASE "EXAMINE WELL"
        GOTO WELL
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A colonial style house, with accompanying doghouse. haha."
    CASE "LEFT"
        FULLRIGHT = 1
        GOTO GATES
    CASE "RIGHT"
        FULLRIGHT = 1
        GOTO GATES
    CASE "FORWARD"
        GOTO porch
    CASE "BACKWARD"
        GOTO GATES
    CASE ELSE
        LOCATE 23, 1: PRINT "That's not possible."
END SELECT
SLEEP
GOTO COMMANDLINE5

WELL:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 1)-(629, 289), 2, BF
CIRCLE (300, 145), 180, 8, , , .3
CIRCLE (300, 145), 170, 8, , , .3
CIRCLE (300, 145), 181, 8, , , .3
PAINT (300, 145), 0, 8
PAINT (479, 145), 8
LINE (120, 289)-(480, 289), 8
LINE (480, 150)-(480, 289), 8
LINE (120, 150)-(120, 289), 8
PAINT (121, 287), 8
CIRCLE (300, 145), 181, 0, , , .3
CIRCLE (300, 145), 220, 0, 3.75, 5.67, .4
CIRCLE (300, 185), 220, 0, 3.75, 5.67, .4 ' FINALLY!! ARCHES!
CIRCLE (300, 225), 220, 0, 3.75, 5.67, .4
LINE (150, 210)-(150, 175), 0
LINE (200, 190)-(200, 223), 0
LINE (250, 197)-(250, 230), 0 ' WELL BRICKS
LINE (300, 199)-(300, 232), 0
LINE (350, 197)-(350, 230), 0
LINE (400, 190)-(400, 223), 0
LINE (450, 210)-(450, 175), 0
LINE (125, 198)-(125, 237), 0
LINE (175, 217)-(175, 257), 0
LINE (225, 228)-(225, 267), 0
LINE (275, 232)-(275, 272), 0
LINE (325, 233)-(325, 272), 0
LINE (375, 227)-(375, 268), 0
LINE (425, 217)-(425, 258), 0
LINE (150, 249)-(150, 288), 0
LINE (200, 262)-(200, 298), 0
LINE (250, 270)-(250, 298), 0 ' WELL BRICKS
LINE (300, 274)-(300, 298), 0
LINE (350, 270)-(350, 298), 0
LINE (400, 263)-(400, 298), 0
LINE (450, 250)-(450, 288), 0
LINE (120, 140)-(132, 1), 6, BF ' POSTS
LINE (470, 140)-(482, 1), 6, BF
LINE (270, 1)-(320, 40), 8, BF ' BUCKET
LINE (270, 1)-(320, 40), 0, B
IF water = 0 THEN CIRCLE (300, 200), 180, 8, , , .3 ' WATER
IF water = 0 THEN PAINT (300, 150), 3, 8
LINE (220, 190)-(240, 40), 6, BF ' LADDER
LINE (220, 190)-(240, 40), 0, B
LINE (350, 191)-(370, 40), 6, BF
LINE (350, 191)-(370, 40), 0, B
LINE (350, 160)-(240, 170), 6, BF
LINE (350, 160)-(240, 170), 0, B
LINE (350, 120)-(240, 130), 6, BF
LINE (350, 120)-(240, 130), 0, B
LINE (350, 80)-(240, 90), 6, BF
LINE (350, 80)-(240, 90), 0, B
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)  (=\/)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE6:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION6$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION6$
    CASE "BACKWARD"
        GOTO FULLHOUSE
    CASE "LOOK"
        LOCATE 23, 1: PRINT "The ladder reaches the bottom of the well. A bucket hangs."
    CASE "TAKE LADDER"
        LOCATE 23, 1: PRINT "This ladder is too large to carry."
    CASE "EXAMINE LADDER"
        LOCATE 23, 1: PRINT "The ladder is sturdy. There are strange scratch marks on it."
    CASE "EXAMINE SCRATCH MARKS"
        LOCATE 23, 1: PRINT "It looks like a knife was being used here."
    CASE "EXAMINE BUCKET"
        LOCATE 23, 1: PRINT "The bucket is full of dirty water."
    CASE "USE LADDER"
        IF water = 0 THEN LOCATE 23, 1: PRINT "There is too much water down there."
        IF water = 1 THEN GOTO BOTTOMWELL
    CASE "EXAMINE WATER"
        LOCATE 23, 1: PRINT "Wow. That's a lot of water. If only you could drain it."
    CASE "EXAMINE WATER IN BUCKET"
        LOCATE 23, 1: PRINT "Gross."
    CASE ELSE
        LOCATE 23, 1: PRINT "Whatever you had in mind is irrelevant."
END SELECT
SLEEP
GOTO COMMANDLINE6

STAIRROOM:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 100)-(629, 100), 15
PAINT (2, 2), 1, 15
CIRCLE (320, 180), 180, 15, , , .3 'elevator
PAINT (2, 101), 4, 15
CIRCLE (320, 180), 170, 6, , , .3
PAINT (320, 180), 6
CIRCLE (320, 180), 170, 0, , , .3
LINE (320, 80)-(330, 135), 6, BF 'railing
LINE (320, 80)-(330, 135), 0, B
LINE (400, 85)-(410, 140), 6, BF
LINE (400, 85)-(410, 140), 0, B
LINE (230, 85)-(240, 140), 6, BF
LINE (230, 85)-(240, 140), 0, B
LINE (170, 100)-(180, 165), 6, BF
LINE (170, 100)-(180, 165), 0, B
LINE (460, 100)-(470, 165), 6, BF
LINE (460, 100)-(470, 165), 0, B
LINE (430, 155)-(440, 210), 6, BF
LINE (430, 155)-(440, 210), 0, B
LINE (240, 165)-(250, 220), 6, BF
LINE (240, 165)-(250, 220), 0, B
LINE (320, 170)-(330, 225), 6, BF
LINE (320, 170)-(330, 225), 0, B
CIRCLE (320, 180), 150, 0, , , .3
CIRCLE (320, 127), 150, 8, , , .3
CIRCLE (320, 127), 160, 8, , , .3
PAINT (479, 127), 8
IF takeladder = 0 THEN LINE (10, 100)-(20, 1), 6, BF 'ladder
IF takeladder = 0 THEN LINE (10, 100)-(20, 1), 0, B
IF takeladder = 0 THEN LINE (50, 100)-(60, 1), 6, BF
IF takeladder = 0 THEN LINE (50, 100)-(60, 1), 0, B
IF takeladder = 0 THEN LINE (21, 20)-(49, 23), 6, BF
IF takeladder = 0 THEN LINE (21, 20)-(49, 23), 0, B
IF takeladder = 0 THEN LINE (21, 40)-(49, 43), 6, BF
IF takeladder = 0 THEN LINE (21, 40)-(49, 43), 0, B
IF takeladder = 0 THEN LINE (21, 60)-(49, 63), 6, BF
IF takeladder = 0 THEN LINE (21, 60)-(49, 63), 0, B
IF takeladder = 0 THEN LINE (21, 80)-(49, 83), 6, BF
IF takeladder = 0 THEN LINE (21, 80)-(49, 83), 0, B
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(=^)  (<)  (=\/)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE7:
LOCATE 23, 1: PRINT "                                                                      "
LOCATE 23, 1: INPUT "Command:", ACTION7$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION7$
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A ladder and an elevator. How does it work?"
    CASE "EXAMINE LADDER"
        LOCATE 23, 1: PRINT "It goes through an ragged hole in the roof."
    CASE "EXAMINE WALL"
        LOCATE 23, 1: PRINT "The wall is ocean blue. How nice."
    CASE "EXAMINE FLOOR"
        LOCATE 23, 1: PRINT "The floor is bright red. Ouch, your eyes hurt now."
    CASE "TAKE LADDER"
        LOCATE 23, 1: PRINT "You've got a ladder now."
        takeladder = 1
        GOTO STAIRROOM
    CASE "EXAMINE ELEVATOR"
        LOCATE 23, 1: PRINT "Seems to be weight activated."
    CASE "EXAMINE RAILING"
        LOCATE 23, 1: PRINT "The metal is scratched. A knife maybe?"
    CASE "USE ELEVATOR"
        GOTO BASEMENT
    CASE "USE LADDER"
        takeladder = 0
        NEWROOM = -1
        module2
        GOTO STAIRROOM
    CASE "LEFT"
        GOTO HALLWAY
    CASE ELSE
        LOCATE 23, 1: PRINT "That won't work."
END SELECT
SLEEP
GOTO COMMANDLINE7

BASEMENT:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 100)-(629, 100), 15, B
PAINT (1, 1), 1, 15
LINE (30, 30)-(100, 229), 8, BF
LINE (30, 30)-(100, 229), 0, B
LINE (40, 40)-(90, 219), 0, B
LINE (60, 29)-(70, 1), 8, BF
LINE (60, 29)-(70, 1), 0, B
CIRCLE (100, 100), 20, 1
PAINT (100, 100), 1
LINE (95, 100)-(105, 130), 8, BF
LINE (95, 100)-(105, 130), 0, B
CIRCLE (100, 100), 15, 4
CIRCLE (100, 100), 10, 4
PAINT (100, 100), 4
LINE (300, 70)-(330, 90), 8, BF
LINE (300, 70)-(330, 90), 0, B
LINE (310, 70)-(320, 90), 6, BF 'Switch
LINE (305, 70)-(325, 95), 0, B
LINE (305, 75)-(308, 90), 6, BF
LINE (305, 75)-(308, 90), 0, B
LINE (325, 75)-(322, 90), 6, BF
LINE (325, 75)-(322, 90), 0, B
CIRCLE (320, 180), 180, 15, , , .3 'elevator
CIRCLE (320, 180), 170, 6, , , .3
PAINT (320, 180), 6
CIRCLE (320, 180), 170, 0, , , .3
LINE (320, 80)-(330, 135), 6, BF 'railing
LINE (320, 80)-(330, 135), 0, B
LINE (400, 85)-(410, 140), 6, BF
LINE (400, 85)-(410, 140), 0, B
LINE (230, 85)-(240, 140), 6, BF
LINE (230, 85)-(240, 140), 0, B
LINE (170, 100)-(180, 165), 6, BF
LINE (170, 100)-(180, 165), 0, B
LINE (460, 100)-(470, 165), 6, BF
LINE (460, 100)-(470, 165), 0, B
LINE (430, 155)-(440, 210), 6, BF
LINE (430, 155)-(440, 210), 0, B
LINE (240, 165)-(250, 220), 6, BF
LINE (240, 165)-(250, 220), 0, B
LINE (320, 170)-(330, 225), 6, BF
LINE (320, 170)-(330, 225), 0, B
CIRCLE (320, 180), 150, 0, , , .3
CIRCLE (320, 127), 150, 8, , , .3
CIRCLE (320, 127), 160, 8, , , .3
PAINT (479, 127), 8
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(=^)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE8:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION8$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION8$
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A giant water tank and some sort of switch."
    CASE "EXAMINE WATER TANK"
        LOCATE 23, 1: PRINT "This tank could hold at least 1000 gallons!"
    CASE "EXAMINE WALL"
        LOCATE 23, 1: PRINT "The wall is blue. So what!"
    CASE "EXAMINE FLOOR"
        LOCATE 23, 1: PRINT "Why do you always examine the floor?"
    CASE "EXAMINE ELEVATOR"
        LOCATE 23, 1: PRINT "The elevator is ready to go."
    CASE "EXAMINE SWITCH"
        LOCATE 23, 1: PRINT "Who knows what the switch will do!"
    CASE "USE ELEVATOR"
        GOTO STAIRROOM
    CASE "USE SWITCH"
        water = 1
        LOCATE 23, 1: PRINT "You can hear water draining from above into the tank."
    CASE ELSE
        LOCATE 23, 1: PRINT "It's not going to happen"
END SELECT
SLEEP
GOTO COMMANDLINE8

PIANOROOM:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 1)-(629, 289), 15, BF ' Keyboard and stand
LINE (1, 200)-(629, 200), 0
LINE (1, 201)-(629, 289), 1, BF
LINE (200, 250)-(350, 170), 0
LINE (400, 250)-(250, 170), 0
LINE (200, 170)-(400, 150), 0, BF
LINE (100, 50)-(150, 100), 6, BF ' Painting on wall
LINE (100, 50)-(150, 100), 0, B
LINE (300, 50)-(550, 140), 1, B ' WINDOW
LINE (301, 120)-(549, 139), 2, BF
LINE (301, 119)-(549, 51), 9, BF
LINE (301, 119)-(549, 100), 6, BF ' outside fence
LINE (310, 119)-(310, 100), 0
LINE (320, 119)-(320, 100), 0
LINE (330, 119)-(330, 100), 0
LINE (340, 119)-(340, 100), 0
LINE (350, 119)-(350, 100), 0
LINE (360, 119)-(360, 100), 0
LINE (370, 119)-(370, 100), 0
LINE (380, 119)-(380, 100), 0
LINE (390, 119)-(390, 100), 0
LINE (400, 119)-(400, 100), 0
LINE (410, 119)-(410, 100), 0
LINE (420, 119)-(420, 100), 0
LINE (430, 119)-(430, 100), 0
LINE (440, 119)-(440, 100), 0
LINE (450, 119)-(450, 100), 0
LINE (460, 119)-(460, 100), 0
LINE (470, 119)-(470, 100), 0
LINE (480, 119)-(480, 100), 0
LINE (490, 119)-(490, 100), 0
LINE (500, 119)-(500, 100), 0
LINE (510, 119)-(510, 100), 0
LINE (520, 119)-(520, 100), 0
LINE (530, 119)-(530, 100), 0
LINE (540, 119)-(540, 100), 0
LINE (550, 119)-(550, 100), 0
IF SECRETDOOR = 1 THEN
    FOR x = 37 TO 60
        SOUND x, .3
    NEXT x
    x = 100
    FOR J = 1 TO 300
        IF x = 37 THEN x = 100: GOTO jump3
        IF x = 100 THEN x = 37
        jump3:
        SOUND x, .1
    NEXT J
    LINE (10, 50)-(140, 200), 0, BF
    LOCATE 23, 1: PRINT "A SECRET DOOR!"
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(<)  (^)"
    SLEEP
END IF
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(<)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE9:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION9$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION9$
    CASE "EXAMINE PAINTING"
        LOCATE 23, 1: PRINT "There is something peculiar about this painting."
    CASE "TAKE PAINTING"
        LOCATE 23, 1: PRINT "Good thought, but it won't work."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "There is a nice keyboard, painting and a view of the backyard."
    CASE "EXAMINE KEYBOARD"
        GOTO KEYBOARD
    CASE "USE KEYBOARD"
        GOTO KEYBOARD
    CASE "LEFT"
        GOTO HALLWAY
    CASE "EXAMINE WINDOW"
        LOCATE 23, 1: PRINT "Now that is a big backyard and a long fence!"
    CASE "FORWARD"
        IF SECRETDOOR = 0 THEN LOCATE 23, 1: PRINT "Ouch. A wall."
        IF SECRETDOOR = 1 THEN GOTO SECRETROOM
    CASE ELSE
        LOCATE 23, 1: PRINT "That isn't going to happen."
END SELECT
SLEEP
GOTO COMMANDLINE9

KEYBOARD:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 1)-(629, 289), 8, BF ' BACKGROUND
LINE (1, 10)-(629, 209), 0, BF ' KEYBOARD FRAME
LINE (1, 10)-(629, 209), 15, B
LINE (1, 139)-(629, 139), 15
LINE (1, 140)-(629, 209), 15, BF ' KEYBOARD white KEYS
LINE (1, 209)-(629, 209), 0
LINE (30, 140)-(30, 209), 0 '1
LINE (60, 140)-(60, 209), 0 '2
LINE (90, 140)-(90, 209), 0 '3
LINE (120, 140)-(120, 209), 0 '4
LINE (150, 140)-(150, 209), 0 '5
LINE (180, 140)-(180, 209), 0 '6
LINE (210, 140)-(210, 209), 0 '7
LINE (240, 140)-(240, 209), 0 '8
LINE (270, 140)-(270, 209), 0 '9
LINE (300, 140)-(300, 209), 0 '10
LINE (330, 140)-(330, 209), 0 '11
LINE (360, 140)-(360, 209), 0 '12
LINE (390, 140)-(390, 209), 0 '13
LINE (420, 140)-(420, 209), 0 '14
LINE (450, 140)-(450, 209), 0 '15
LINE (480, 140)-(480, 209), 0 '16
LINE (510, 140)-(510, 209), 0 '17
LINE (540, 140)-(540, 209), 0 '18
LINE (570, 140)-(570, 209), 0 '19
LINE (600, 140)-(600, 209), 0 '20
LINE (25, 140)-(35, 180), 0, BF 'BLACK KEYS
LINE (85, 140)-(95, 180), 0, BF
LINE (115, 140)-(125, 180), 0, BF
LINE (175, 140)-(185, 180), 0, BF
LINE (205, 140)-(215, 180), 0, BF
LINE (235, 140)-(245, 180), 0, BF
LINE (295, 140)-(305, 180), 0, BF
LINE (325, 140)-(335, 180), 0, BF
LINE (415, 140)-(425, 180), 0, BF
LINE (445, 140)-(455, 180), 0, BF
LINE (475, 140)-(485, 180), 0, BF
LINE (535, 140)-(545, 180), 0, BF
LINE (565, 140)-(575, 180), 0, BF
CIRCLE (120, 30), 8, 8 'enharmonic button
CIRCLE (120, 30), 5, 15
PAINT (120, 30), 15
LOCATE 3, 18: COLOR 8: PRINT "enharmonic"
CIRCLE (120, 55), 8, 8
CIRCLE (120, 55), 5, 15
PAINT (120, 55), 2, 15
LOCATE 5, 18: COLOR 8: PRINT "dorian"
CIRCLE (120, 80), 8, 8
CIRCLE (120, 80), 5, 15
PAINT (120, 80), 4, 15
LOCATE 7, 18: COLOR 8: PRINT "inspiration"
CIRCLE (480, 80), 8, 8
CIRCLE (480, 80), 5, 5
PAINT (480, 80), 5
CIRCLE (450, 80), 8, 8
CIRCLE (450, 80), 5, 6
PAINT (450, 80), 6
CIRCLE (420, 80), 8, 8
CIRCLE (420, 80), 5, 7
PAINT (420, 80), 7
LINE (305, 40)-(305, 80), 15
LINE (325, 40)-(325, 80), 15
LINE (345, 40)-(345, 80), 15
LINE (300, 50)-(310, 55), 8, BF 'SLIDER BUTTONS
LINE (320, 60)-(330, 65), 8, BF
LINE (340, 45)-(350, 50), 8, BF
LINE (280, 30)-(500, 90), 15, B
LINE (430, 34)-(468, 55), 15, B
LINE (431, 36)-(431, 54), 4
LINE (432, 38)-(432, 54), 2
LINE (433, 37)-(433, 54), 4
LINE (434, 39)-(434, 54), 2
LINE (435, 50)-(435, 54), 4
LINE (436, 45)-(436, 54), 2
LINE (437, 36)-(437, 54), 4
LINE (438, 38)-(438, 54), 2
LINE (439, 37)-(439, 54), 4
LINE (440, 39)-(440, 54), 2
LINE (441, 50)-(441, 54), 4
LINE (442, 45)-(442, 54), 2
LINE (443, 36)-(443, 54), 4
LINE (444, 36)-(444, 54), 2
LINE (445, 37)-(445, 54), 4
LINE (446, 39)-(446, 54), 2
LINE (447, 50)-(447, 54), 4
LINE (448, 45)-(448, 54), 2
LINE (449, 36)-(449, 54), 4
LINE (450, 38)-(450, 54), 2
LINE (451, 37)-(451, 54), 4
LINE (452, 36)-(452, 54), 2
LINE (453, 50)-(453, 54), 4
LINE (454, 45)-(454, 54), 2
LINE (455, 53)-(455, 54), 4
LINE (456, 45)-(456, 54), 2
LINE (457, 37)-(457, 54), 4
LINE (458, 39)-(458, 54), 2
LINE (459, 50)-(459, 54), 4
LINE (460, 45)-(460, 54), 2
LINE (461, 37)-(461, 54), 4
LINE (462, 36)-(462, 54), 2
LINE (463, 40)-(463, 54), 4
LINE (464, 39)-(464, 54), 2
LINE (465, 50)-(465, 54), 4
LINE (466, 45)-(466, 54), 2
LOCATE 9, 2: PRINT "1 2 3  4  5 6 7 8  910111213 1 2  3 4 5 6 7  8   910111213 1 2  3 4 5 6 7 8"
LINE (2, 100)-(628, 100), 15 ' SPEAKERS
LINE (100, 100)-(100, 11), 15
LINE (530, 100)-(530, 11), 15
COLOR 15
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(7)Backward(8)Right(9)Left(10)Press"
COMMANDLINE10:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION10$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION10$
    CASE "A3 C8 B1"
        PLAY "o1 l6 b"
        LOCATE 14, 6: PRINT "A3"
        PLAY "o3 l6 f"
        LOCATE 14, 6: PRINT CHR$(219): LOCATE 14, 7: PRINT CHR$(219)
        LOCATE 14, 77: PRINT "C8"
        PLAY "o2 l6 a#"
        LOCATE 14, 77: PRINT CHR$(219): LOCATE 14, 78: PRINT CHR$(219)
        LOCATE 13, 30: PRINT "B1"
        PLAY "L6"
        LINE (325, 140)-(335, 180), 0, BF
        IF INSPIRATION = 0 THEN LOCATE 23, 1: PRINT "Strange sounding keyboard."
        IF INSPIRATION = 1 THEN
            SECRETDOOR = 1
            GOTO PIANOROOM
        END IF
    CASE "PRESS GREEN BUTTON"
        BEEP
        LOCATE 23, 1: PRINT "The keyboard is now in Dorian mode."
    CASE "PRESS WHITE BUTTON"
        BEEP
        LOCATE 23, 1: PRINT "The keyboard is now in Enharmonic mode."
    CASE "PRESS A3 C8 B1"
        PLAY "o1 l6 b"
        LOCATE 14, 6: PRINT "A3"
        PLAY "o3 l6 f"
        LOCATE 14, 6: PRINT CHR$(219): LOCATE 14, 7: PRINT CHR$(219)
        LOCATE 14, 77: PRINT "C8"
        PLAY "o2 l6 a#"
        LOCATE 14, 77: PRINT CHR$(219): LOCATE 14, 78: PRINT CHR$(219)
        LOCATE 13, 30: PRINT "B1"
        PLAY "L6"
        LINE (325, 140)-(335, 180), 0, BF
        IF INSPIRATION = 0 THEN LOCATE 23, 1: PRINT "Strange sounding keyboard."
        IF INSPIRATION = 1 THEN
            SECRETDOOR = 1
            GOTO PIANOROOM
        END IF
    CASE "PRESS RED BUTTON"
        BEEP
        INSPIRATION = 1
        LOCATE 23, 1: PRINT "The keyboard is now in INSPIRATION mode."
    CASE "PUSH RED BUTTON"
        BEEP
        INSPIRATION = 1
        LOCATE 23, 1: PRINT "The keyboard is now in INSPIRATION mode."
    CASE "PRESS INSPIRATION BUTTON"
        BEEP
        INSPIRATION = 1
        LOCATE 23, 1: PRINT "The keyboard is now in INSPIRATION mode."
    CASE "PUSH INSPIRATION BUTTON"
        SOUND 1000, .7
        INSPIRATION = 1
        LOCATE 23, 1: PRINT "The keyboard is now in INSPIRATION mode."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "The keys are numbered in three sets of 13. A, B, and C."
    CASE "BACKWARD"
        GOTO PIANOROOM
    CASE "LEFT"
        LOCATE 23, 1: PRINT "A wall."
    CASE "RIGHT"
        LOCATE 23, 1: PRINT "A wall."
    CASE ELSE
        LOCATE 23, 1: PRINT "That doesn't seem to work."
END SELECT
SLEEP
GOTO COMMANDLINE10

SECRETROOM:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 200)-(629, 200), 15
PAINT (2, 2), 3, 15
PAINT (2, 201), 1, 15
LINE (300, 210)-(310, 150), 6, BF 'table
LINE (300, 210)-(310, 150), 0, B
LINE (200, 210)-(210, 150), 6, BF
LINE (200, 210)-(210, 150), 0, B
LINE (150, 150)-(360, 140), 6, BF
LINE (150, 150)-(360, 140), 0, B
LINE (200, 139)-(250, 129), 15, BF 'la computadora
LINE (200, 139)-(250, 129), 0, B
LINE (220, 128)-(230, 126), 15, BF
LINE (220, 128)-(230, 126), 0, B
LINE (200, 125)-(250, 90), 15, BF
LINE (200, 125)-(250, 90), 0, B
LINE (203, 122)-(247, 93), 1, BF
LINE (400, 50)-(500, 140), 6, BF 'PAINTING
LINE (400, 50)-(500, 140), 0, B
LINE (410, 60)-(490, 130), 0, B
PAINT (428, 65), 1, 0
' == LAMP STAND
LINE (0, 170)-(630, 170), 0
CIRCLE (130, 180), 40, 0, , , .3
PAINT (120, 180), 9, 0
CIRCLE (130, 210), 30, 0, , , .3
PAINT (120, 215), 9, 0
CIRCLE (130, 180), 40, 12, , 2, .3
CIRCLE (130, 180), 40, 0, , 1.1, .3
LINE (120, 191)-(140, 210), 1, BF
' ==LAMP
LINE (110, 140)-(150, 140), 1
LINE (120, 90)-(140, 90), 1
LINE (120, 90)-(110, 140), 1
LINE (140, 90)-(150, 140), 1
CIRCLE (130, 160), 20, 2
PAINT (130, 160), 12, 2
PAINT (130, 120), 8, 1
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(\/)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE11:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION11$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION11$
    CASE "BACKWARD"
        GOTO PIANOROOM
    CASE "USE LAMP"
        flick1 = 1
        PAINT (130, 120), 14, 1
        LOCATE 23, 1: PRINT "The lamp is now on."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A computer, lamp, and a gigantic painting."
    CASE "EXAMINE LAMP"
        LOCATE 23, 1: PRINT "The lamp is off."
    CASE "EXAMINE LAMPSTAND"
        LOCATE 23, 1: PRINT "There are strange scratch marks on this lampstand"
    CASE "EXAMINE SCRATCH MARKS"
        LOCATE 23, 1: PRINT "These were surely done with a knife."
    CASE "EXAMINE PAINTING"
        IF flick1 = 1 THEN LOCATE 23, 1: PRINT "There is a KNIFE carefully disguised here."
        IF flick1 = 0 THEN LOCATE 23, 1: PRINT "Another painting of Rebecca. This time she is at the ocean."
    CASE "EXAMINE WALL"
        LOCATE 23, 1: PRINT "There is nothing of use here."
    CASE "EXAMINE FLOOR"
        LOCATE 23, 1: PRINT "Nothing."
    CASE "EXAMINE KNIFE"
        IF KNIFE = 1 THEN LOCATE 23, 1: PRINT "The blade of the knife is extremely scratched."
        IF KNIFE = 0 THEN LOCATE 23, 1: PRINT "You need to take the knife first."
    CASE "TAKE KNIFE"
        LOCATE 23, 1: PRINT "You now have the KNIFE."
        KNIFE = 1
    CASE "EXAMINE TABLE"
        LOCATE 23, 1: PRINT "Scratch marks done with a knife."
    CASE "EXAMINE COMPUTER"
        GOTO COMPUTER
    CASE "USE COMPUTER"
        GOTO COMPUTER
    CASE ELSE
        LOCATE 23, 1: PRINT "That won't do any good."
END SELECT
SLEEP
GOTO COMMANDLINE11:

BOTTOMWELL:
LINE (0, 0)-(630, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 1)-(629, 289), 8, B
CIRCLE (300, 150), 200, 8, , , .3
PAINT (300, 200), 3, 8
CIRCLE (300, 150), 200, 6, , , .3
CIRCLE (300, 150), 205, 8, , , .3
LINE (100, 150)-(100, 1), 8
LINE (500, 150)-(500, 1), 8
PAINT (101, 100), 8
PAINT (499, 100), 8
LINE (300, 90)-(300, 1), 0
LINE (220, 190)-(240, 2), 6, BF ' LADDER
LINE (220, 190)-(240, 2), 0, B
LINE (350, 191)-(370, 2), 6, BF
LINE (350, 191)-(370, 2), 0, B
LINE (350, 160)-(240, 170), 6, BF
LINE (350, 160)-(240, 170), 0, B
LINE (350, 120)-(240, 130), 6, BF
LINE (350, 120)-(240, 130), 0, B
LINE (350, 80)-(240, 90), 6, BF
LINE (350, 80)-(240, 90), 0, B
LINE (350, 40)-(240, 50), 6, BF
LINE (350, 40)-(240, 50), 0, B
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(=^)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE12:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION12$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION12$
    CASE "LOOK"
        LOCATE 23, 1: PRINT "Dirty water. Only a few inches deep."
    CASE "EXAMINE WELL"
        LOCATE 23, 1: PRINT "Slimy, crusty. Not worth spending much time on."
    CASE "EXAMINE DIRTY WATER"
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "A BLACK KEY!"
        IF BLACKKEY = 1 THEN LOCATE 23, 1: PRINT "This is where you got the BLACK KEY."
    CASE "EXAMINE WATER"
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "A BLACK KEY!"
        IF BLACKKEY = 1 THEN LOCATE 23, 1: PRINT "This is where you got the BLACK KEY."
    CASE "EXAMINE BLACK KEY"
        IF BLACKKEY = 0 THEN LOCATE 23, 1: PRINT "You can't examine what you haven't taken."
        IF BLACKKEY = 1 THEN LOCATE 23, 1: PRINT "It has the word PIANO scrawled on it."
    CASE "USE LADDER"
        GOTO WELL
    CASE "TAKE BLACK KEY"
        BLACKKEY = 1
        LOCATE 23, 1: PRINT "You now have the BLACK KEY"
    CASE "EXAMINE FLOOR OF WELL"
        LOCATE 23, 1: PRINT "Nothing useful."
    CASE ELSE
        LOCATE 23, 1: PRINT "Nothing happens."
END SELECT
SLEEP
GOTO COMMANDLINE12

GATES:
LINE (0, 0)-(650, 290), 0, BF
LINE (0, 0)-(630, 290), 15, B
LINE (1, 100)-(629, 200), 6, BF
LINE (1, 100)-(629, 200), 0, B
LINE (1, 99)-(629, 99), 6
LINE (1, 201)-(629, 201), 6
LINE (50, 100)-(50, 200), 0
LINE (100, 100)-(100, 200), 0
LINE (150, 100)-(150, 200), 0
LINE (200, 100)-(200, 200), 0
LINE (250, 100)-(250, 200), 0
LINE (300, 100)-(300, 200), 0
LINE (350, 100)-(350, 200), 0
LINE (400, 100)-(400, 200), 0
LINE (450, 100)-(450, 200), 0
LINE (500, 100)-(500, 200), 0
LINE (550, 100)-(550, 200), 0
LINE (600, 100)-(600, 200), 0
LINE (0, 200)-(630, 200), 6
LINE (0, 0)-(630, 290), 6, B
PAINT (2, 2), 3, 6
IF FULLRIGHT = 1 THEN PAINT (10, 210), 2, 6
IF FULLRIGHT = 1 THEN
    LOCATE 23, 1: PRINT "Just a fence here."
    SLEEP
    FULLRIGHT = 0
    GOTO FULLHOUSE
END IF
LINE (300, 100)-(500, 200), 0, BF 'GATE
PAINT (301, 101), 2, 6
LINE (300, 90)-(310, 200), 8, BF
IF GATE = 0 THEN LINE (500, 90)-(490, 200), 8, BF
IF GATE = 0 THEN LINE (350, 60)-(360, 200), 8, BF
IF GATE = 0 THEN LINE (450, 60)-(440, 200), 8, BF
IF GATE = 0 THEN LINE (395, 40)-(405, 200), 8, BF
IF GATE = 0 THEN LINE (300, 125)-(500, 130), 6, BF
IF GATE = 0 THEN LINE (300, 175)-(500, 170), 6, BF
IF GATE = 0 THEN LINE (300, 125)-(500, 130), 0, B
IF GATE = 0 THEN LINE (300, 175)-(500, 170), 0, B
LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(<)  (>)  (\/)  (^)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE13:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION13$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION13$
    CASE "OPEN GATE"
        IF BROWNKEY = 1 THEN GATE = 1
        IF GATE = 1 THEN LOCATE 23, 1: PRINT "Even after unlocking it, it is stuck. You kick it down.": SLEEP: GOTO GATES
        IF GATE = 0 THEN LOCATE 23, 1: PRINT "The gate is locked. You need a key."
    CASE "LEFT"
        GOTO LEFTSTREET
    CASE "RIGHT"
        GOTO LEFTSTREET
    CASE "EXAMINE GATE"
        LOCATE 23, 1: PRINT "The gate is locked."
    CASE "EXAMINE GROUND"
        LOCATE 23, 1: PRINT "You see a BROWN KEY."
    CASE "USE KNIFE ON FENCE"
        IF PENDANT = 0 THEN LOCATE 23, 1: PRINT "Scratch..scratch..you found a PENDANT!"
        IF PENDANT = 1 THEN LOCATE 23, 1: PRINT "This is where you found the PENDANT."
    CASE "TAKE PENDANT"
        LOCATE 23, 1: PRINT "You now have the PENDANT."
        PENDANT = 1
    CASE "EXAMINE PENDANT"
        IF PENDANT = 1 THEN LOCATE 23, 1: PRINT "Hmm. I wonder where you'll put it?"
        IF PENDANT = 0 THEN LOCATE 23, 1: PRINT "You can't examine that. It's not in your hand."
        GOLDCOIN = 1
    CASE "TAKE BROWN KEY"
        BROWNKEY = 1
        LOCATE 23, 1: PRINT "You now have the BROWN KEY."
    CASE "EXAMINE BROWN KEY"
        LOCATE 23, 1: PRINT "It looks like a gate key."
    CASE "USE BROWN KEY ON GATE"
        IF BROWNKEY = 1 THEN LOCATE 23, 1: PRINT "The gate creaks."
        IF BROWNKEY = 0 THEN LOCATE 23, 1: PRINT "You don't have a BROWN KEY."
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A fence and a gate."
    CASE "EXAMINE FENCE"
        LOCATE 23, 1: PRINT "Strange scratch marks."
    CASE "EXAMINE SCRATCH MARKS"
        LOCATE 23, 1: PRINT "Were these done with a knife?"
    CASE "BACKWARD"
        GOTO GARDEN
    CASE "FORWARD"
        IF BROWNKEY = 1 AND GATE = 0 THEN LOCATE 23, 1: PRINT "You can't walk through the gate genius."
        IF GATE = 1 AND BROWNKEY = 1 THEN GOTO FULLHOUSE
        IF GATE = 0 OR BROWNKEY = 0 THEN LOCATE 23, 1: PRINT "You can't get through like that."
    CASE ELSE
        LOCATE 23, 1: PRINT "That didn't do any good."
END SELECT
SLEEP
GOTO COMMANDLINE13

COMPUTER:
CLS
LINE (0, 0)-(650, 290), 0, BF
LINE (0, 0)-(630, 290), 6, B
LINE (1, 1)-(629, 289), 15, BF
LINE (5, 5)-(624, 285), 1, BF
LOCATE 5, 5: INPUT "Login:>", action14$
IF action14$ = "LARRYMO" THEN GOTO COMPSTEP1
IF action14$ <> "LARRYMO" THEN GOTO gameover
COMPSTEP1:
CLS
LINE (0, 0)-(650, 290), 0, BF
LINE (0, 0)-(630, 290), 6, B
LINE (1, 1)-(629, 289), 15, BF
LINE (5, 5)-(624, 285), 1, BF
x = 1: y = 1
GO:
PSET (x, y), 4
x = x + .5
y = y + .6
IF y > 100 THEN GOTO GO2
GOTO GO
GO2:
PSET (x, y), 4
x = x + .5
y = y + .7
IF y > 200 THEN GOTO GO3
GOTO GO2
GO3:
PSET (x, y), 4
x = x - .3
y = y - .7
IF y < 1 THEN GOTO GO4
GOTO GO3
GO4:
PSET (x, y), 4
x = x + .3
y = y + .7
IF y > 200 THEN GOTO GO5
GOTO GO4
GO5:
PSET (x, y), 4
x = x + .5
y = y - .7
IF y < 1 THEN GOTO GO6
GOTO GO5
GO6:
PSET (x, y), 4
x = x - .5
y = 1
IF x < 1 THEN GOTO GO7
GOTO GO6
GO7:
PAINT (10, 10), 4
LOCATE 18, 12: COLOR 15: PRINT "V  I  A  C  O  M"
SLEEP
CLS
LINE (0, 0)-(650, 290), 0, BF
LINE (0, 0)-(630, 290), 6, B
LINE (1, 1)-(629, 289), 15, BF
LINE (5, 5)-(624, 285), 1, BF
options:
LINE (10, 190)-(600, 279), 1, BF
LOCATE 7, 5: PRINT "(1) Journal"
LOCATE 8, 5: PRINT "(2) PC Settings"
LOCATE 9, 5: PRINT "(3) Exit"
LOCATE 14, 5: INPUT "Command:>", action15$
SELECT CASE action15$
    CASE "1"
        LOCATE 15, 5: PRINT "The wood, it has to be the wood. It's hidden there."
        LOCATE 16, 5: PRINT "I've searched everywhere. I hid my knife in the painting."
        LOCATE 17, 5: PRINT "I hope good people find it. The wood holds it all.  "
        LOCATE 18, 5: PRINT "I haven't checked the fence in front of the house."
        LOCATE 19, 5: PRINT "I can scratch it with my knife...i'll find it..."
        LOCATE 23, 1: PRINT "The rest of the message is cut off."
    CASE "2"
        LOCATE 23, 1: PRINT "Nothing appears on the screen."
    CASE "3"
        GOTO SECRETROOM
END SELECT
SLEEP
GOTO options
gameover:
LINE (1, 1)-(629, 289), 15, BF
LINE (5, 5)-(624, 285), 4, BF
LOCATE 10, 35: PRINT "Incorrect Login!!"
LOCATE 12, 34: PRINT "Shutting Down Now!!"
DO
    FOR x = 440 TO 1000 STEP 10: SOUND x, .5: NEXT x
LOOP UNTIL INKEY$ <> ""
LOCATE 14, 25: PRINT "You typed in the wrong login name!"
LOCATE 15, 35: PRINT "G A M E  O V E R"
END

'31 down(xpos) *26 across(ypos)
alien:
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,5,5,0,0,0,6,6,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,0,0,0,6,0,6,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,0,0,0,6,6,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,4,0,0,0,0,0,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 4,4,0,0,0,0,6,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,0,0,0,0,0,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,1,1,0,0,0,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,1,4,4,4,4,0,6,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1,4,4,4,4,4,4,0,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1,1,1,0,0,0,0,6,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,3,1,0,0,0,6,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1,0,0,6,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1,0,0,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1,0,0,0,0,0
DATA 0,0,0,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,3,1,0,0,6,6,6,6
DATA 0,0,3,2,2,2,2,2,3,3,0,0,0,0,0,0,0,0,3,1,0,0,0,6,0,6,6
DATA 0,3,2,0,0,0,0,0,2,2,3,3,0,0,0,0,3,3,1,0,0,0,0,0,0,6,6
DATA 3,2,1,0,0,0,0,0,1,1,3,2,3,3,3,3,1,1,1,0,0,0,0,0,0,0,0
DATA 2,1,1,0,0,0,0,1,1,3,1,1,2,1,1,1,1,1,1,1,1,1,1,6,6,6,6
DATA 2,1,1,1,1,1,1,1,1,3,1,1,2,1,1,1,1,1,1,1,1,1,1,6,0,0,6
DATA 2,1,1,0,0,0,0,1,1,1,3,2,0,2,2,2,1,1,1,0,0,0,0,6,6,6,6
DATA 0,2,1,0,0,0,0,0,2,2,2,0,0,0,0,0,2,2,1,0,0,0,0,6,0,0,0
DATA 0,0,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,2,1,0,0,0,6,6,6,6
DATA 0,0,0,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,6,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,0,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,1,0,0,0,0,6,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1,1,1,0,0,0,0,0,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1,2,1,1,1,0,0,0,0,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,2,1,1,2,0,1,2,0,1,0,0,0,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,0,0,1,2,0,1,1,0,0,6,0,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,1,1,0,0,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,6,6,6
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0
DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

GARDEN:
' ======================================== WISHING WELL
LINE (0, 0)-(629, 290), 0, BF
LINE (0, 0)-(629, 290), 15, B
LINE (1, 150)-(629, 150), 15
' ========================================= Clouds
CIRCLE (270, 38), 40, 15, , , 1 / 2
PAINT (270, 38), 15, 15
CIRCLE (320, 25), 30, 15, , , 1 / 3
PAINT (340, 25), 15, 15
CIRCLE (330, 50), 30, 15, , , 1 / 1.7
PAINT (330, 50), 15, 15
CIRCLE (358, 32), 30, 15, , , 1 / 2
PAINT (358, 32), 15, 15
CIRCLE (474, 38), 40, 15, , , 1 / 3
PAINT (472, 38), 15, 15
CIRCLE (522, 54), 40, 15, , , 1 / 3
PAINT (522, 54), 15, 15
CIRCLE (536, 34), 40, 15, , , 1 / 3
PAINT (536, 34), 15, 15
PAINT (10, 10), 3, 15
PAINT (10, 250), 2, 15
LINE (2, 150)-(149, 198), 6, BF ' FENCE
LINE (2, 150)-(149, 199), 0, B
LINE (12, 150)-(12, 198), 0
LINE (22, 150)-(22, 198), 0
LINE (32, 150)-(32, 198), 0 '
LINE (42, 150)-(42, 198), 0
LINE (52, 150)-(52, 198), 0
LINE (62, 150)-(62, 198), 0
LINE (72, 150)-(72, 198), 0
LINE (82, 150)-(82, 198), 0
LINE (92, 150)-(92, 198), 0
LINE (102, 150)-(102, 198), 0
LINE (112, 150)-(110, 198), 0
LINE (122, 150)-(122, 198), 0
LINE (132, 150)-(132, 198), 0
LINE (142, 150)-(142, 198), 0
LINE (629, 150)-(326, 198), 6, BF
LINE (629, 150)-(326, 198), 0, B
LINE (336, 150)-(336, 198), 0
LINE (346, 150)-(346, 198), 0 '
LINE (356, 150)-(356, 198), 0
LINE (366, 150)-(366, 198), 0
LINE (376, 150)-(376, 198), 0
LINE (386, 150)-(386, 198), 0
LINE (396, 150)-(396, 198), 0
LINE (406, 150)-(406, 198), 0
LINE (416, 150)-(416, 198), 0
LINE (426, 150)-(426, 198), 0
LINE (436, 150)-(436, 198), 0
LINE (446, 150)-(446, 198), 0
LINE (456, 150)-(456, 198), 0
LINE (466, 150)-(466, 198), 0 '
LINE (476, 150)-(476, 198), 0
LINE (486, 150)-(486, 198), 0
LINE (496, 150)-(496, 198), 0
LINE (506, 150)-(506, 198), 0
LINE (516, 150)-(516, 198), 0
LINE (526, 150)-(526, 198), 0
LINE (536, 150)-(536, 198), 0
LINE (546, 150)-(546, 198), 0
LINE (556, 150)-(556, 198), 0
LINE (566, 150)-(566, 198), 0
LINE (576, 150)-(576, 198), 0
LINE (586, 150)-(586, 198), 0 ' FENCE
LINE (596, 150)-(596, 198), 0
LINE (606, 150)-(606, 198), 0
LINE (616, 150)-(616, 198), 0
LINE (626, 150)-(626, 198), 0
FOR x = 200 TO 210
    CIRCLE (320, x), 50, 15, , , 1 / 5
NEXT x
CIRCLE (320, 200), 50, 1, 3.141592, 2 * 3.141592, 1 / 5
CIRCLE (320, 205), 45, 1, .25, 2.9, 1 / 5
PAINT (320, 200), 1, 1
CIRCLE (320, 200), 50, 7, 3.141592, 2 * 3.141592, 1 / 5
LINE (270, 212)-(320, 230), 15
LINE -(370, 212), 15
PAINT (320, 225), 15, 15
LINE (290, 212)-(320, 240), 15
LINE -(350, 212), 15
PAINT (320, 235), 15, 15
LINE (310, 220)-(330, 250), 15, BF
CIRCLE (320, 250), 30, 15, , , 1 / 5
LINE (290, 248)-(320, 235), 15
LINE -(350, 248), 15
LINE (300, 250)-(320, 210), 15
LINE -(340, 250), 15
PAINT (320, 251), 15
PAINT (309, 235), 15
PAINT (331, 235), 15
PAINT (331, 242), 15
PAINT (309, 242), 15
PAINT (302, 244), 15
PAINT (338, 244), 15

LINE (0, 0)-(650, 15), 0, BF
LINE (1, 15)-(629, 15), 15
LOCATE 1, 1: PRINT "(<)  (>)  (^)"
LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
COMMANDLINE16:
LOCATE 23, 1: PRINT "                                                              "
LOCATE 23, 1: INPUT "Command:", ACTION16$
LOCATE 23, 1: PRINT "                                                              "
SELECT CASE ACTION16$
    CASE "LOOK"
        LOCATE 23, 1: PRINT "A small wishing well."
    CASE "EXAMINE WISHING WELL"
        LOCATE 23, 1: PRINT "There are several rusty coins in here."
    CASE "USE GOLD COIN ON WISHING WELL"
        IF GOLDCOIN = 1 THEN LOCATE 23, 1: PRINT "Huh? From the brightness of the coin you see a box."
        IF GOLDCOIN = 2 THEN LOCATE 23, 1: PRINT "You do not have a GOLD COIN."
    CASE "EXAMINE BOX"
        LOCATE 23, 1: PRINT "The box is locked."
    CASE "USE SILVER KEY ON BOX"
        IF SILVERKEY = 1 THEN LOCATE 23, 1: PRINT "IT OPENS!!"
        IF SILVERKEY = 0 THEN LOCATE 23, 1: PRINT "You don't have the key.": GOTO skp121
        SLEEP
        endofgame
        skp121:
    CASE "EXAMINE CLOUDS"
        LOCATE 23, 1: PRINT "As if you could reach them idget!"
    CASE "FORWARD"
        GOTO GATES
    CASE "RIGHT"
        LOCATE 23, 1: PRINT "A strange field, it has no ending."
    CASE "LEFT"
        LOCATE 23, 1: PRINT "A strange field, it has no ending."
    CASE "BACKWARD"
        LOCATE 23, 1: PRINT "A strange field, it has no ending."
    CASE ELSE
        LOCATE 23, 1: PRINT "You see nothing important here."
END SELECT
SLEEP
GOTO COMMANDLINE16

LEFTSTREET:
LINE (0, 0)-(630, 290), 0, BF
LINE (1, 1)-(630, 290), 15, B
LINE (1, 200)-(629, 200), 15
LINE (100, 289)-(300, 201), 15
LINE (500, 289)-(300, 201), 15
PAINT (2, 2), 3, 15
PAINT (3, 202), 2, 15
PAINT (615, 202), 2, 15
LOCATE 23, 1: PRINT "A road that goes on for eternity."
SLEEP
GOTO GATES

BALLROOM:
NEWROOM = 1
module2
GOTO HALLWAY

KITCHEN:
NEWROOM = 2
module2
GOTO HALLWAY

STUDY:
NEWROOM = 3
module2
GOTO HALLWAY

BEDROOM2:
NEWROOM = 4
module2
GOTO HALLWAY

DEFINT A-Z
SUB bigletter (W$, sz, colr, style, position)
    COLOR 15
    DIM box(-1 TO 7, -1 TO 15)
    wordlength = LEN(W$) * sz * 8
    wordheight = sz * 16
    wordcenter = 320 - (wordlength / 2)
    PALETTE 15, 0
    FOR LETTER = 1 TO LEN(W$)
        LOCATE 1, 1
        PRINT MID$(W$, LETTER, 1)
        FOR x = 0 TO 7
            FOR y = 0 TO 15
                box(x, y) = POINT(x, y)
            NEXT y
        NEXT x
        FOR x = 0 TO 7
            left = wordcenter + (x * sz)
            right = left + sz
            lr = (left + right) \ 2
            FOR y = 0 TO 15
                up = position + (y * sz)
                down = up + sz
                ud = (up + down) \ 2
                IF box(x, y) THEN
                    SELECT CASE style
                        CASE 1
                            LINE (left, up)-(right, down), colr, BF
                        CASE 2
                            LINE (left, up)-(right, down), colr, B
                    END SELECT
                END IF
            NEXT y
        NEXT x
        wordcenter = wordcenter + (sz * 8)
    NEXT LETTER
    LOCATE 1, 1
    PRINT ""
    PALETTE
END SUB

DEFSNG A-Z
SUB cheater
    CLS
    PRINT "D O N 'T  U S E  T H E S E  U N L E S S  Y O U  H A V E  T O!"
    PRINT "-----------------------------------------------------------------------"
    PRINT "1. At the first screen, type in 'EXAMINE GROUND'"
    PRINT "2. The item on the table in the den is a CUP OF WATER. Examine it."
    PRINT "3. There are four keys. BLACK, BROWN, RED, SILVER"
    PRINT "4. Examine the wall in the hallway to find out which key goes to"
    PRINT "   which door."
    PRINT "5. Examine things with a common theme. I.E. If you found one key in "
    PRINT "   some dirty water, look at more dirty water. It's quite simple really."
    PRINT "6. Use the pendant on the hole in the wall. (in the kitchen)"
    PRINT "7. Use switch in basement to drain water from well."
    PRINT "8. type in: 'PRESS A3 C8 B1' when the keyboard is in inspiration"
    PRINT "   mode to open the secret door."
    PRINT "9. Take the knife from the painting in the secret room."
    PRINT "10. When you finally find the Gold Coin, use it at the wishing well."
    PLAY "MB T130 O3 C3 O2 G6 B3 G6 A+2 P4 A G+3 D+6 G3 D6 F+2"
    SLEEP
END SUB

SUB endofgame
    CLS
    PRINT "You are teleported to a strange room."
    SLEEP
    CLS
    ENDOFGAMEROOM:
    LINE (1, 1)-(629, 290), 15, B
    LINE (1, 200)-(629, 200), 15
    PAINT (2, 2), 15
    PAINT (2, 201), 1, 15
    LINE (100, 230)-(150, 130), 0, BF 'PIANO
    LINE (100, 230)-(150, 130), 15, B
    LINE (99, 190)-(69, 170), 0, BF
    LINE (99, 190)-(69, 170), 15, B
    LINE (70, 191)-(75, 230), 0, BF
    LINE (70, 191)-(75, 230), 15, B
    LINE (20, 200)-(55, 190), 0, BF
    LINE (20, 200)-(55, 190), 15, B 'BENCH
    LINE (25, 200)-(30, 230), 0, BF
    LINE (25, 200)-(30, 230), 15, B
    LINE (50, 200)-(45, 230), 0, BF
    LINE (50, 200)-(45, 230), 15, B
    LINE (303, 2)-(307, 20), 7, BF 'ROOF LAMP
    LINE (303, 2)-(307, 15), 0, B
    CIRCLE (305, 35), 50, 15, , , .1
    CIRCLE (305, 35), 20, 14
    PAINT (305, 35), 14
    LX = 270: LY = 40: LC = 270: LD = 60
    FOR J = 1 TO 35
        LINE (LX, LY)-(LC, LD), 15
        LX = LX + 2
        LC = LC + 2
    NEXT J
    CIRCLE (270, 170), 30, 0, , , .1 'toilet
    PAINT (270, 170), 6, 0
    LINE (300, 170)-(290, 185), 0
    LINE (240, 170)-(250, 185), 0
    LINE (290, 185)-(250, 185), 0
    PAINT (290, 175), 15, 0
    LINE (250, 185)-(290, 199), 15, BF
    LINE (250, 185)-(290, 199), 0, B
    LINE (250, 140)-(290, 165), 15, BF
    LINE (250, 140)-(290, 165), 0, B
    LINE (255, 145)-(260, 147), 6, BF
    LINE (255, 145)-(260, 147), 0, B
    LINE (248, 140)-(292, 135), 15, BF
    LINE (248, 140)-(292, 135), 0, B
    LINE (300, 145)-(330, 165), 6, BF 'toilet-paper
    LINE (300, 145)-(330, 165), 0, B
    CIRCLE (310, 155), 5, 15, , , 2
    PAINT (310, 155), 15
    CIRCLE (310, 155), 2, 0, , , 2
    CIRCLE (320, 155), 5, 15, , , 2
    PAINT (320, 155), 15
    LINE (310, 150)-(320, 150), 15
    LINE (310, 160)-(320, 160), 15
    PAINT (315, 159), 15
    LINE (310, 160)-(322, 180), 15, BF
    LINE (310, 160)-(322, 180), 7, B
    LINE (450, 199)-(610, 130), 6, BF 'drawers
    LINE (450, 199)-(610, 130), 0, B
    LINE (460, 189)-(520, 169), 0, B
    LINE (540, 189)-(600, 169), 0, B
    LINE (460, 159)-(520, 139), 0, B
    LINE (540, 159)-(600, 139), 0, B
    CIRCLE (490, 179), 3, 0
    CIRCLE (570, 179), 3, 0
    CIRCLE (490, 149), 3, 0
    CIRCLE (570, 149), 3, 0
    LINE (150, 199)-(160, 259), 6, BF 'desk
    LINE (150, 199)-(160, 259), 0, B
    LINE (130, 198)-(320, 190), 6, BF
    LINE (130, 198)-(320, 190), 0, B
    LINE (300, 199)-(290, 259), 6, BF
    LINE (300, 199)-(290, 259), 0, B
    LINE (250, 199)-(240, 259), 6, BF
    LINE (250, 199)-(240, 259), 0, B
    LINE (251, 229)-(289, 249), 6, BF
    LINE (251, 229)-(289, 249), 0, B
    LINE (251, 199)-(289, 210), 6, BF
    LINE (251, 199)-(289, 210), 0, B
    LINE (265, 235)-(275, 238), 0, B 'bottom handle
    LINE (265, 204)-(275, 207), 0, B
    LINE (160, 199)-(240, 210), 6, BF
    LINE (160, 199)-(240, 210), 0, B
    LINE (192, 204)-(202, 207), 0, B
    CIRCLE (530, 230), 40, 0, , , .3 'SMALL TABLE
    PAINT (520, 230), 6, 0
    CIRCLE (530, 240), 30, 0, , , .3
    PAINT (520, 245), 6, 0
    CIRCLE (530, 230), 40, 12, , 2, .3
    CIRCLE (530, 230), 40, 0, , 1.1, .3
    LINE (400, 50)-(500, 100), 6, BF 'PAINTING
    LINE (400, 50)-(500, 100), 0, B
    LINE (410, 60)-(490, 90), 0, B
    PAINT (411, 61), 7, 0
    LOCATE 22, 1: PRINT "(F11) EXIT GAME"
    COMMANDLINE217:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION217$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION217$
        CASE "EXIT GAME"
            GOTO credits1
        CASE ELSE
            LOCATE 23, 1: PRINT "This file is tooo large. I couldn't risk programming more!"
    END SELECT
    SLEEP
    GOTO COMMANDLINE217
    credits1:
    CLS
    bigletter "You leave the house and step", 2, 4, 1, 100
    bigletter "into a porthole that whisks", 2, 4, 1, 161
    bigletter "you home. WOO HOO!", 2, 4, 1, 201
    bigletter "( cheesy ending eh? )", 2, 4, 1, 301
    LINE (1, 1)-(20, 20), 0, BF
    SLEEP
    credits:
    CLS
    bigletter "Main Programmer: Toby Glaze", 2, 2, 1, 10
    bigletter "Help provided by:", 2, 4, 1, 51
    bigletter "J A S O N  J A C K S O N", 2, 1, 1, 71
    bigletter "Micky Glaze", 2, 1, 1, 91
    bigletter "Timothy 'Baldy' Glaze", 2, 1, 1, 111
    bigletter "AGN Program Council:", 2, 4, 1, 161
    bigletter "Jesse Andreasen", 2, 1, 1, 181
    bigletter "cul8r@TheRamp.net", 2, 1, 1, 201
    bigletter "Lea Edwards", 2, 1, 1, 221
    bigletter "Various Unknown Authors", 2, 1, 1, 241
    bigletter "Special Thanx to my girlfriend", 2, 2, 1, 281
    bigletter "(Cuz she wanted 2BN the credits)", 2, 2, 1, 301
    LINE (1, 1)-(20, 20), 0, BF
    FOR J = 1 TO 2
        PLAY "MB t200 L8O2DDL15CL15<BL7BL15B-BL3BL15B-BL8BL15B-BL8>DL15<B>DL4C<L6A"
        PLAY "MBL15AL8AL15A-AL8AL15A-AL4>CL15<BABL8>DL15DL8EEL3<A"
        PLAY "MBL8O2DDL15CL15<BL7BL15B-BL3bL15B-BL8BL15B-BL15>DC<AGL4AGL15GL7G"
        PLAY "MBO1L15G-GL8B-L15AGL3>GL15<GAB>D<GAB>D<DEBL4AL7GL10>G"
    NEXT J
    SLEEP
    CLS
    bigletter " T H E  E N D", 2, 2, 1, 201
    PLAY "O3 L4CL10CL10CL5DCDL1E <L11CCC"
    LINE (0, 0)-(20, 20), 0, BF
    END

END SUB

SUB instructionsub
    SCREEN 9
    CLS
    PRINT "ACTIONS:"
    PRINT "-----------"
    PRINT "Your key words will be constantly displayed at the bottom of the screen."
    PRINT "It will look like this:"
    PRINT "<Examine:Look:Take:Use:Open><Forward:Backward:Right:Left>"; ""
    PRINT
    PRINT "Using these keywords, type in whatever you want."
    PRINT "For example: To open a door type in: 'OPEN DOOR'"
    PRINT "For example: To move right type in:'RIGHT'"
    PRINT
    PRINT "The LOOK function stands on it's own, to use it just type in 'LOOK'"
    PRINT
    PRINT "YOU MUST BE SPECIFIC (NO SPELLING ERRORS EITHER!)"
    PRINT "If you type in 'RIGHT' and there is more than one door to your right,"
    PRINT "then it won't work."
    PRINT "For example: There is an open door and a closed door on your right side. "
    PRINT "To go through the open door type in: 'RIGHT THROUGH DOOR THREE'"
    PRINT "or whatever door number it happens to be."
    PRINT
    PRINT "Often there is more than one of an object in a room. To access them type:"
    PRINT "EXAMINE (OBJECT) ONE    or   EXAMINE (OBJECT) TWO."
    PRINT "For example: In the art room there are three paintings. To examine"
    PRINT "Painting ONE, just type in: 'EXAMINE PAINTING ONE'"
    DO
        theme1$ = "o1 t255 l9ab>cdece p7 e-ce- p7 d<b>d p7"
        theme1b$ = "o1 t255 ab>cdece  ageceg p7"
        FOR J = 1 TO 2
            PLAY theme1$
            PLAY theme1b$
        NEXT J
        PLAY "ggg p7 ggg p7 ggg p7"
        songloop = songloop + 1
    LOOP UNTIL songloop = 2
    SLEEP
    CLS
    PRINT "To USE an object:"
    PRINT "For example:type in 'USE SILVER KEY'"
    PRINT "OR"
    PRINT "type in 'USE GREEN KEY ON DOOR FOUR'"
    PRINT "(remember you must be specific)"
    PRINT
    PRINT "HINTS:"
    PRINT "--------"
    PRINT "1. EXAMINE EVERYTHING."
    PRINT "2. After examining once, there may be more info. just EXAMINE"
    PRINT "   again with the new info"
    PRINT "   for example: type in 'EXAMINE WOOD"
    PRINT "   the screen shows : -There are strange scratch marks here.-"
    PRINT "   now type in 'EXAMINE SCRATCH MARKS'"
    PRINT "3. Don't look at the source code. (it will ruin the whole game)"
    PRINT "4. Don't give up. If what you're typing isn't working"
    PRINT "   then try something else."
    PRINT "5. Have fun.  Email me with your responses: tglaze@hotmail.com"
    PRINT "6. Continue visiting my download page:"
    PRINT "   http://www.geocities.com/TimesSquare/Stadium/4507"
    PRINT "   The DOWNLOAD PAGE will be constantly updated."
    PRINT "7. To add your programs to my page use email."
    PRINT "8. EXTREMELY HELPFULL: USE FUNCTION KEYS F1-F10 FOR TYPEIN SHORTCUTS."
    songloop = 0
    DO
        theme1$ = "o1 t255 l9ab>cdece p7 e-ce- p7 d<b>d p7"
        theme1b$ = "o1 t255 ab>cdece  ageceg p7"
        FOR J = 1 TO 2
            PLAY theme1$
            PLAY theme1b$
        NEXT J
        PLAY "ggg p7 ggg p7 ggg p7"
        songloop = songloop + 1
    LOOP UNTIL songloop = 2
    SLEEP
    CLS
    PRINT "ICONS"
    PRINT "--------"
    PRINT "In the upper left-hand corner of the screen (during the game) there"
    PRINT "  are some arrows. This is what they mean:"
    PRINT "-------------------------------------"
    PRINT "(>) There is a path to the right"
    PRINT "(<) There is a path to the left"
    PRINT "(^) There is a path going forward"
    PRINT "(\/) There is a path going backward"
    PRINT "(^) There is a path going forward"
    PRINT "(=\/) There is a path descending"
    PRINT "(=^) There is a path ascending"
    PRINT "-------------------------------------"
    PRINT ""
    songloop = 0
    DO
        theme1$ = "o1 t255 l9ab>cdece p7 e-ce- p7 d<b>d p7"
        theme1b$ = "o1 t255 ab>cdece  ageceg p7"
        FOR J = 1 TO 2
            PLAY theme1$
            PLAY theme1b$
        NEXT J
        PLAY "ggg p7 ggg p7 ggg p7"
        songloop = songloop + 1
    LOOP UNTIL songloop = 2
    SLEEP
END SUB

SUB module2
    IF NEWROOM = -1 THEN GOTO BATHROOM
    IF NEWROOM = 1 THEN GOTO BALLROOMENTER
    IF NEWROOM = 2 THEN GOTO KITCHENENTER
    IF NEWROOM = 3 THEN GOTO STUDYENTER
    IF NEWROOM = 4 THEN GOTO BEDROOM2ENTER

    BATHROOM:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 200)-(629, 200), 15
    PAINT (2, 2), 1, 15
    PAINT (2, 201), 14, 15
    LINE (2, 172)-(200, 220), 6, BF
    LINE (2, 172)-(200, 220), 0, B
    LINE (2, 70)-(10, 80), 8, BF
    LINE (2, 70)-(10, 80), 0, B ' Shower/bath
    LINE (11, 70)-(16, 75), 0
    LINE (11, 80)-(16, 85), 0
    LINE (16, 75)-(16, 85), 0
    PAINT (15, 76), 8, 0
    CIRCLE (20, 85), 10, 0, , , 3
    PAINT (20, 85), 8, 0
    LINE (2, 60)-(200, 65), 8, BF
    LINE (2, 60)-(200, 65), 0, B
    LINE (200, 65)-(60, 170), 3, BF
    LINE (200, 65)-(60, 170), 0, B
    LINE (80, 120)-(85, 125), 0
    LINE (85, 125)-(90, 135), 8, BF
    LINE (85, 125)-(90, 135), 0, B
    LINE (85, 135)-(80, 140), 0
    LINE (160, 170)-(160, 65), 0
    LINE (163, 170)-(163, 65), 0
    LINE (400, 199)-(410, 150), 8, BF 'sink
    LINE (400, 199)-(410, 150), 0, B
    LINE (380, 149)-(430, 129), 8, BF
    LINE (380, 149)-(430, 129), 0, B
    LINE (412, 128)-(418, 120), 8, BF
    LINE (412, 128)-(418, 120), 0, B
    LINE (390, 128)-(396, 120), 8, BF
    LINE (390, 128)-(396, 120), 0, B
    CIRCLE (405, 80), 30, 6, , , 1 'mirror
    CIRCLE (405, 80), 28, 6, , , 1
    CIRCLE (405, 80), 29, 6, , , 1
    PAINT (405, 70), 7, 6
    CIRCLE (270, 170), 30, 0, , , .1 'toilet
    PAINT (270, 170), 6, 0
    LINE (300, 170)-(290, 185), 0
    LINE (240, 170)-(250, 185), 0
    LINE (290, 185)-(250, 185), 0
    PAINT (290, 175), 15, 0
    LINE (250, 185)-(290, 199), 15, BF
    LINE (250, 185)-(290, 199), 0, B
    LINE (250, 140)-(290, 165), 15, BF
    LINE (250, 140)-(290, 165), 0, B
    LINE (255, 145)-(260, 147), 6, BF
    LINE (255, 145)-(260, 147), 0, B
    LINE (248, 140)-(292, 135), 15, BF
    LINE (248, 140)-(292, 135), 0, B
    LINE (300, 145)-(330, 165), 6, BF 'toilet-paper
    LINE (300, 145)-(330, 165), 0, B
    CIRCLE (310, 155), 5, 15, , , 2
    PAINT (310, 155), 15
    CIRCLE (310, 155), 2, 0, , , 2
    CIRCLE (320, 155), 5, 15, , , 2
    PAINT (320, 155), 15
    LINE (310, 150)-(320, 150), 15
    LINE (310, 160)-(320, 160), 15
    PAINT (315, 159), 15
    LINE (310, 160)-(322, 180), 15, BF
    LINE (310, 160)-(322, 180), 7, B
    LINE (450, 199)-(610, 130), 6, BF 'drawers
    LINE (450, 199)-(610, 130), 0, B
    LINE (460, 189)-(520, 169), 0, B
    LINE (540, 189)-(600, 169), 0, B
    LINE (460, 159)-(520, 139), 0, B
    LINE (540, 159)-(600, 139), 0, B
    CIRCLE (490, 179), 3, 0
    CIRCLE (570, 179), 3, 0
    CIRCLE (490, 149), 3, 0
    CIRCLE (570, 149), 3, 0
    CIRCLE (300, 250), 90, 0, , , .3
    PAINT (300, 250), 0
    LINE (240, 270)-(250, 220), 6, BF
    LINE (240, 270)-(250, 220), 0, B
    LINE (340, 270)-(350, 220), 6, BF
    LINE (340, 270)-(350, 220), 0, B
    LINE (251, 260)-(339, 265), 6, BF
    LINE (251, 260)-(339, 265), 0, B
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(>)  (=\/)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE17:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION17$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION17$
        CASE "USE LADDER"
            GOTO SUBEND
        CASE "RIGHT"
            GOTO BEDROOM
        CASE "EXAMINE TOILET"
            LOCATE 23, 1: PRINT "That's disgusting. There is nothing of use here."
        CASE "USE TOILET"
            LOCATE 23, 1: PRINT "You don't have time to take a crap."
        CASE "USE SINK"
            LOCATE 23, 1: PRINT "You turn on the sink and wash up."
        CASE "TAKE TOILET PAPER"
            LOCATE 23, 1: PRINT "Stealing toilet paper are we?"
        CASE "EXAMINE SINK"
            LOCATE 23, 1: PRINT "The sink is made of stainless steel. Nice."
        CASE "EXAMINE MIRROR"
            IF PENDANT = 0 THEN LOCATE 23, 1: PRINT "A carving. [Find the PENDANT and then return here.]"
            IF PENDANT = 1 THEN LOCATE 23, 1: PRINT "A switch appears!!"
        CASE "EXAMINE SWITCH"
            LOCATE 23, 1: PRINT "There is a word carved beside the switch. [hallway]"
        CASE "USE SWITCH"
            LOCATE 23, 1: PRINT "You hear a strange rumbling from below."
            x = 100
            FOR J = 1 TO 300
                IF x = 37 THEN x = 100: GOTO jump
                IF x = 100 THEN x = 37
                jump:
                SOUND x, .1
            NEXT J
            HALLWAYSWITCH = 1
        CASE "EXAMINE SHOWER"
            LOCATE 23, 1: PRINT "This shower hasn't been used in a long time."
        CASE "EXAMINE TOILET PAPER"
            LOCATE 23, 1: PRINT "Nice and clean, unused."
        CASE "USE SHOWER"
            LOCATE 23, 1: PRINT "The shower is not working. You don't smell that bad anyway."
        CASE "LOOK"
            LOCATE 23, 1: PRINT "Wow. A king sized bathroom with a shower and a dresser."
        CASE "EXAMINE DRESSER"
            LOCATE 23, 1: PRINT "You search the dresser. Nothing."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "The floor is weak, it could fall any second."
        CASE "EXAMINE ROOF"
            LOCATE 23, 1: PRINT "The roof is thrashed. What happened to this house?"
        CASE ELSE
            LOCATE 23, 1: PRINT "Well, that didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE17

    BEDROOM:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 200)-(629, 200), 15
    PAINT (2, 2), 7, 15
    PAINT (2, 201), 4, 15
    LINE (30, 159)-(40, 219), 6, BF 'desk
    LINE (30, 159)-(40, 219), 0, B
    LINE (10, 158)-(200, 150), 6, BF
    LINE (10, 158)-(200, 150), 0, B
    LINE (180, 159)-(170, 219), 6, BF
    LINE (180, 159)-(170, 219), 0, B
    LINE (130, 159)-(120, 219), 6, BF
    LINE (130, 159)-(120, 219), 0, B
    LINE (131, 189)-(169, 209), 6, BF
    LINE (131, 189)-(169, 209), 0, B
    LINE (131, 159)-(169, 170), 6, BF
    LINE (131, 159)-(169, 170), 0, B
    LINE (145, 195)-(155, 198), 0, B 'bottom handle
    LINE (145, 164)-(155, 167), 0, B
    LINE (40, 159)-(120, 170), 6, BF
    LINE (40, 159)-(120, 170), 0, B
    LINE (72, 164)-(82, 167), 0, B
    LINE (300, 60)-(500, 150), 0, B 'WINDOW
    PAINT (301, 61), 3, 0
    LINE (330, 70)-(345, 219), 6, BF 'bunkbed
    LINE (330, 70)-(345, 219), 0, B
    LINE (610, 70)-(625, 219), 6, BF
    LINE (610, 70)-(625, 219), 0, B
    LINE (331, 200)-(624, 180), 6, BF
    LINE (346, 200)-(609, 180), 0, B
    LINE (346, 100)-(609, 120), 6, BF
    LINE (346, 100)-(609, 120), 0, B
    LINE (346, 179)-(609, 159), 1, BF
    LINE (346, 179)-(609, 159), 0, B
    LINE (346, 100)-(609, 80), 1, BF
    LINE (346, 100)-(609, 80), 0, B
    LINE (20, 60)-(200, 130), 4, BF 'poster
    LINE (20, 60)-(200, 130), 0, B
    LINE (100, 70)-(110, 120), 0, BF
    LINE (80, 80)-(130, 90), 0, BF
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(<)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE18:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION18$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION18$
        CASE "LOOK"
            LOCATE 23, 1: PRINT "Small bedroom. A desk and a bunkbed semi-concealing a window."
            SLEEP
            LOCATE 23, 1: PRINT "                                                               "
            LOCATE 23, 1: PRINT "A banner of a cross."
        CASE "TAKE WWJD BRACELET"
            LOCATE 23, 1: PRINT "You now have the bracelet."
        CASE "TAKE W.W.J.D. BRACELET"
            LOCATE 23, 1: PRINT "You now have the bracelet."
        CASE "EXAMINE BANNER"
            LOCATE 23, 1: PRINT "There is writing on the banner. [W.W.J.D.]"
        CASE "OPEN DRAWER ONE"
        CASE "OPEN DRAWER TWO"
        CASE "OPEN DRAWER THREE"
        CASE "LEFT"
            GOTO BATHROOM
        CASE "EXAMINE DESK"
            LOCATE 23, 1: PRINT "You discover a BRACELET."
        CASE "TAKE BRACELET"
            LOCATE 23, 1: PRINT "You now have a BRACELET."
            BRACELET = 1
        CASE "EXAMINE BUNKBED"
            LOCATE 23, 1: PRINT "The beds are made. There are no pillows. Strange."
        CASE "EXAMINE WINDOW"
            LOCATE 23, 1: PRINT "You see the lawn below. That's a long way down."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "There is blood on the floor!"
        CASE "EXAMINE BLOOD"
            LOCATE 23, 1: PRINT "The blood has been here some time.  It is all crusty."
        CASE "EXAMINE ROOF"
            LOCATE 23, 1: PRINT "The roof is weak. It looks as if it could fall at any moment."
        CASE ELSE
            LOCATE 23, 1: PRINT "Well, that didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE18

    BALLROOMENTER:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 200)-(629, 200), 15
    LINE (1, 289)-(50, 201), 15 'MARBLE
    LINE (50, 289)-(100, 201), 15
    LINE (100, 289)-(150, 201), 15
    LINE (150, 289)-(200, 201), 15
    LINE (200, 289)-(250, 201), 15
    LINE (250, 289)-(300, 201), 15
    LINE (380, 289)-(330, 201), 15
    LINE (430, 289)-(380, 201), 15
    LINE (480, 289)-(430, 201), 15
    LINE (530, 289)-(480, 201), 15
    LINE (580, 289)-(530, 201), 15
    LINE (630, 289)-(580, 201), 15
    LINE (1, 220)-(629, 220), 15
    LINE (1, 250)-(629, 250), 15
    PAINT (2, 201), 15 'FIRST ROW PAINTS
    PAINT (102, 201), 15
    PAINT (201, 201), 15
    PAINT (301, 201), 15
    PAINT (401, 201), 15
    PAINT (501, 201), 15
    PAINT (601, 201), 15
    PAINT (51, 221), 15 'SECOND ROW PAINTS
    PAINT (152, 221), 15
    PAINT (251, 221), 15
    PAINT (351, 221), 15
    PAINT (451, 221), 15
    PAINT (551, 221), 15
    PAINT (651, 221), 15
    PAINT (2, 261), 15 'THIRD ROW PAINTS
    PAINT (102, 261), 15
    PAINT (201, 261), 15
    PAINT (301, 261), 15
    PAINT (451, 261), 15
    PAINT (551, 261), 15
    PAINT (629, 261), 15
    PAINT (2, 2), 1, 15 'WALL COLOR
    LINE (303, 2)-(307, 20), 7, BF 'ROOF LAMP
    LINE (303, 2)-(307, 15), 0, B
    CIRCLE (305, 35), 50, 15, , , .1
    CIRCLE (305, 35), 20, 14
    PAINT (305, 35), 14
    LX = 270: LY = 40: LC = 270: LD = 60
    FOR J = 1 TO 35
        LINE (LX, LY)-(LC, LD), 15
        LX = LX + 2
        LC = LC + 2
    NEXT J
    LINE (100, 230)-(150, 130), 0, BF 'PIANO
    LINE (100, 230)-(150, 130), 15, B
    LINE (99, 190)-(69, 170), 0, BF
    LINE (99, 190)-(69, 170), 15, B
    LINE (70, 191)-(75, 230), 0, BF
    LINE (70, 191)-(75, 230), 15, B
    LINE (20, 200)-(55, 190), 0, BF
    LINE (20, 200)-(55, 190), 15, B 'BENCH
    LINE (25, 200)-(30, 230), 0, BF
    LINE (25, 200)-(30, 230), 15, B
    LINE (50, 200)-(45, 230), 0, BF
    LINE (50, 200)-(45, 230), 15, B
    LINE (250, 170)-(600, 190), 6, BF 'huge table
    LINE (250, 170)-(600, 190), 0, B
    LINE (290, 191)-(300, 230), 6, BF
    LINE (290, 191)-(300, 230), 0, B
    LINE (560, 191)-(570, 230), 6, BF
    LINE (560, 191)-(570, 230), 0, B
    IF useladder = 1 THEN LINE (400, 230)-(410, 50), 6, BF 'ladder
    IF useladder = 1 THEN LINE (400, 230)-(410, 50), 0, B
    IF useladder = 1 THEN LINE (350, 230)-(340, 50), 6, BF
    IF useladder = 1 THEN LINE (350, 230)-(340, 50), 0, B
    IF useladder = 1 THEN LINE (351, 200)-(399, 197), 6, BF
    IF useladder = 1 THEN LINE (351, 200)-(399, 197), 0, B
    IF useladder = 1 THEN LINE (351, 170)-(399, 167), 6, BF
    IF useladder = 1 THEN LINE (351, 170)-(399, 167), 0, B
    IF useladder = 1 THEN LINE (351, 140)-(399, 137), 6, BF
    IF useladder = 1 THEN LINE (351, 140)-(399, 137), 0, B
    IF useladder = 1 THEN LINE (351, 110)-(399, 107), 6, BF
    IF useladder = 1 THEN LINE (351, 110)-(399, 107), 0, B
    IF useladder = 1 THEN LINE (351, 80)-(399, 77), 6, BF
    IF useladder = 1 THEN LINE (351, 80)-(399, 77), 0, B
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(>)  (<)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE19:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION19$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION19$
        CASE "RIGHT"
            GOTO SUBEND 'u could also use the exit sub command
        CASE "LOOK"
            LOCATE 23, 1: PRINT "A gorgeous piano. Also, a lamp and a large table."
        CASE "EXAMINE PIANO"
            LOCATE 23, 1: PRINT "This is an ancient upright piano."
        CASE "LEFT"
            GOTO BIGPAINTING
        CASE "USE LADDER"
            IF takeladder = 1 THEN
                IF useladder = 0 THEN LOCATE 23, 1: PRINT "This ladder is perfect."
                IF useladder = 1 THEN LOCATE 23, 1: PRINT "You can now reach the lamp.": SLEEP: GOTO COMMANDLINE19
                useladder = 1
                SLEEP: GOTO BALLROOMENTER
            END IF
            IF takeladder = 0 THEN LOCATE 23, 1: PRINT "WHAT ladder dufus?"
        CASE "TAKE LADDER"
            LOCATE 23, 1: PRINT "You are the prowd new owner of a sturdy ladder."
            useladder = 0
            SLEEP: GOTO BALLROOMENTER
        CASE "EXAMINE LAMP"
            IF useladder = 0 THEN LOCATE 23, 1: PRINT "It's too high to reach."
            IF useladder = 1 THEN LOCATE 23, 1: PRINT "There's nothing up here but dust."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "What a pretty floor. Imagine the wasted program lines!"
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "A dark blue wall."
        CASE "USE BRACELET ON TABLE"
            IF BRACELET = 1 THEN LOCATE 23, 1: PRINT "You set it down. Someone will probably get it later."
            IF BRACELET = 0 THEN LOCATE 23, 1: PRINT "You don't have a bracelet!"
            IF BRACELET = 1 THEN BRACELETUSE = 1
        CASE "USE PIANO"
            LOCATE 23, 1: PRINT "If only you were Bach, or Mozart, or Ludwig Van Beethoven!"
        CASE "OPEN PIANO"
            LOCATE 23, 1: PRINT "There are strings inside. Whoopee!"
        CASE "EXAMINE TABLE"
            LOCATE 23, 1: PRINT "There's nothing special about this table."
        CASE ELSE
            LOCATE 23, 1: PRINT "Whatever you had in mind didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE19

    KITCHENENTER:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (0, 0)-(629, 350), 15, BF
    LINE (0, 200)-(50, 200), 0
    LINE (150, 200)-(629, 200), 0
    LINE (120, 220)-(150, 200), 0
    LINE (150, 200)-(150, 80), 0
    LINE (150, 80)-(120, 80), 0
    CIRCLE (90, 150), 23, 0, 6, .3 'refig handle
    LINE (50, 85)-(60, 90), 0
    LINE (50, 95)-(60, 90), 0
    LINE (50, 95)-(50, 85), 0
    LINE (50, 215)-(60, 210), 0
    LINE (50, 205)-(60, 210), 0
    LINE (50, 205)-(50, 215), 0
    PAINT (55, 210), 8, 0
    LINE (200, 220)-(600, 150), 0, B
    LINE (600, 150)-(610, 140), 0
    LINE (600, 220)-(610, 200), 0
    LINE (610, 200)-(610, 140), 0
    LINE (200, 150)-(210, 140), 0
    LINE (210, 140)-(610, 140), 0
    PAINT (300, 219), 4, 0
    LINE (250, 130)-(550, 30), 0, B 'window
    PAINT (350, 35), 9, 0
    LINE (250, 250)-(550, 340), 0, B 'table
    LINE (250, 250)-(270, 230), 0
    LINE (550, 250)-(570, 230), 0
    LINE (550, 340)-(570, 320), 0
    LINE (270, 230)-(570, 230), 0
    LINE (570, 320)-(570, 230), 0
    PAINT (560, 250), 4, 0
    LINE (280, 220)-(280, 150), 0 'stove
    LINE (400, 220)-(400, 150), 0
    LINE (400, 150)-(410, 140), 0
    LINE (300, 142)-(400, 142), 0
    LINE (300, 142)-(290, 147), 0
    LINE (290, 147)-(395, 147), 0
    LINE (395, 147)-(400, 142), 0
    LINE (320, 141)-(330, 133), 0, B
    LINE (360, 141)-(370, 133), 0, B
    LINE (340, 220)-(340, 150), 0
    CIRCLE (330, 170), 5, 0
    PAINT (330, 170), 8, 0
    CIRCLE (350, 170), 5, 0
    PAINT (350, 170), 8, 0
    LINE (530, 220)-(530, 150), 0
    LINE (530, 150)-(540, 140), 0
    LINE (410, 155)-(460, 170), 0, B
    LINE (410, 180)-(460, 195), 0, B
    LINE (470, 155)-(520, 170), 0, B
    LINE (470, 180)-(520, 195), 0, B
    CIRCLE (435, 163), 3, 0
    CIRCLE (435, 188), 3, 0
    CIRCLE (495, 163), 3, 0
    CIRCLE (495, 188), 3, 0
    PAINT (435, 163), 8, 0
    PAINT (435, 188), 8, 0
    PAINT (495, 163), 8, 0
    PAINT (495, 188), 8, 0
    PAINT (415, 147), 4, 0
    LINE (590, 190)-(540, 160), 0, BF
    PAINT (350, 145), 8, 0
    LINE (210, 190)-(270, 160), 0, BF
    LINE (280, 150)-(300, 140), 0
    CIRCLE (220, 145), 9, 0, , , .3
    CIRCLE (245, 145), 9, 0, , , .3
    CIRCLE (270, 145), 9, 0, , , .3
    PAINT (220, 145), 8, 0
    PAINT (245, 145), 8, 0
    PAINT (270, 145), 8, 0
    LINE (250, 100)-(550, 100), 0
    PAINT (300, 110), 2, 0
    PAINT (55, 90), 8, 0
    LINE (50, 220)-(120, 80), 0, B 'refigerator
    PAINT (605, 160), 4, 0
    PAINT (605, 201), 4, 0
    LINE (600, 200)-(609, 200), 4
    PAINT (300, 10), 13, 0
    PAINT (300, 300), 4, 0
    PAINT (100, 320), 14, 0
    LINE (0, 291)-(630, 350), 0, BF
    CIRCLE (200, 100), 10, 0
    PAINT (200, 100), 0
    IF PENDANTUSE = 1 THEN CIRCLE (200, 100), 10, 7
    IF PENDANTUSE = 1 THEN PAINT (200, 100), 6, 7
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(\/)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE20:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION20$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION20$
        CASE "LOOK"
            LOCATE 23, 1: PRINT "Nice kitchen. Looks exactly like the one in HH22.zip!"
        CASE "EXAMINE REFRIGERATOR"
            LOCATE 23, 1: PRINT "The refrigerator is inpenetrable. It's not important anyway."
        CASE "EXAMINE HOLE"
            LOCATE 23, 1: PRINT "Looks as if something fits inside here."
        CASE "EXAMINE COUNTER"
            LOCATE 23, 1: PRINT "The counter top is built with white sanded oak."
        CASE "EXAMINE STOVE"
            LOCATE 23, 1: PRINT "You're not exactly Bonnie Hubbard."
        CASE "EXAMINE SINK"
            LOCATE 23, 1: PRINT "Stainless steel."
        CASE "EXAMINE DRAWERS"
            LOCATE 23, 1: PRINT "They are all empty. Looks like somebody packed in a hurry."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "Ugly floor you gotta admit."
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "There is a strange hole in the wall."
        CASE "USE PENDANT IN HOLE"
            LOCATE 23, 1: PRINT "The pendant fits perfectly. You hear a rumble."
            PENDANTUSE = 1
        CASE "USE PENDANT ON HOLE"
            IF PENDANT = 1 THEN LOCATE 23, 1: PRINT "The pendant fits perfectly. You hear a rumble."
            IF PENDANT = 0 THEN LOCATE 23, 1: PRINT "You don't have a PENDANT!"
            PENDANTUSE = 1
            GOTO KITCHENENTER
        CASE "EXAMINE CUPBOARDS"
            LOCATE 23, 1: PRINT "The cupboards are bare. What is this? Granny Goose?"
        CASE "EXAMINE WINDOW"
            LOCATE 23, 1: PRINT "You see the nice green lawn outside."
        CASE "RIGHT"
            LOCATE 23, 1: PRINT "Nothing here but a wall."
        CASE "LEFT"
            LOCATE 23, 1: PRINT "Nothing here but a wall."
        CASE "FORWARD"
            LOCATE 23, 1: PRINT "Ouch! You ran into the counter."
        CASE "OPEN REGRIGERATOR"
            LOCATE 23, 1: PRINT "It won't budge."
        CASE "OPEN STOVE"
            LOCATE 23, 1: PRINT "Open. Close. Open. Close. This is boring."
        CASE "OPEN WINDOW"
            LOCATE 23, 1: PRINT "This window doesn't open."
        CASE "USE STOVE"
            LOCATE 23, 1: PRINT "You bake a cake. It's gross. You give up cooking."
        CASE "USE SINK"
            LOCATE 23, 1: PRINT "The water is relaxing. Ahhhh..."
        CASE "BACKWARD"
            GOTO SUBEND
        CASE ELSE
            LOCATE 23, 1: PRINT "Whatever you had in mind didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE20

    STUDYENTER:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 150)-(629, 150), 15
    PAINT (2, 2), 1, 15
    PAINT (2, 151), 2, 15
    LINE (2, 30)-(100, 149), 6, BF 'DRESSER
    LINE (2, 30)-(100, 149), 0, B
    LINE (12, 40)-(90, 139), 0, B
    LINE (101, 30)-(200, 149), 6, BF
    LINE (101, 30)-(200, 149), 0, B
    LINE (112, 40)-(190, 139), 0, B
    CIRCLE (80, 90), 3, 0
    CIRCLE (120, 90), 3, 0
    CIRCLE (300, 220), 150, 4, , , .3 'rug
    PAINT (300, 220), 4
    CIRCLE (300, 220), 120, 0, , , .3
    PAINT (300, 220), 0
    CIRCLE (300, 220), 90, 4, , , .3
    PAINT (300, 220), 4
    CIRCLE (300, 220), 60, 0, , , .3
    PAINT (300, 220), 0
    CIRCLE (300, 220), 30, 4, , , .3
    PAINT (300, 220), 4
    CIRCLE (530, 180), 40, 0, , , .3 'SMALL TABLE
    PAINT (520, 180), 6, 0
    CIRCLE (530, 210), 30, 0, , , .3
    PAINT (520, 215), 6, 0
    CIRCLE (530, 180), 40, 12, , 2, .3
    CIRCLE (530, 180), 40, 0, , 1.1, .3
    IF battery = 0 THEN LINE (530, 170)-(540, 180), 4, BF 'battery
    IF battery = 0 THEN LINE (530, 170)-(540, 180), 15, B
    LINE (520, 191)-(540, 205), 1, BF
    LINE (400, 50)-(500, 100), 6, BF 'PAINTING
    LINE (400, 50)-(500, 100), 0, B
    LINE (410, 60)-(490, 90), 0, B
    PAINT (411, 61), 7, 0
    IF PENDANTUSE = 1 THEN LINE (230, 20)-(370, 149), 0, BF 'STAIRWAY
    IF PENDANTUSE = 1 THEN LINE (230, 20)-(370, 149), 6, B
    IF PENDANTUSE = 1 THEN LINE (231, 149)-(369, 139), 6, BF 'STEP 1
    IF PENDANTUSE = 1 THEN LINE (231, 149)-(369, 139), 0, B
    IF PENDANTUSE = 1 THEN LINE (236, 139)-(364, 133), 6, BF 'STEP 2
    IF PENDANTUSE = 1 THEN LINE (236, 139)-(364, 133), 0, B
    IF PENDANTUSE = 1 THEN LINE (241, 133)-(359, 130), 6, BF 'STEP 3
    IF PENDANTUSE = 1 THEN LINE (241, 133)-(359, 130), 0, B
    IF PENDANTUSE = 1 THEN LINE (246, 130)-(354, 128), 6, BF 'STEP 3
    IF PENDANTUSE = 1 THEN LINE (246, 130)-(354, 128), 0, B
    IF PENDANTUSE = 1 THEN LOCATE 1, 1: PRINT "(<)  (>)  (^)"
    LINE (150, 179)-(160, 239), 6, BF 'desk
    LINE (150, 179)-(160, 239), 0, B
    LINE (130, 178)-(320, 170), 6, BF
    LINE (130, 178)-(320, 170), 0, B
    LINE (300, 179)-(290, 239), 6, BF
    LINE (300, 179)-(290, 239), 0, B
    LINE (250, 179)-(240, 239), 6, BF
    LINE (250, 179)-(240, 239), 0, B
    LINE (251, 209)-(289, 229), 6, BF
    LINE (251, 209)-(289, 229), 0, B
    LINE (251, 179)-(289, 190), 6, BF
    LINE (251, 179)-(289, 190), 0, B
    LINE (265, 215)-(275, 218), 0, B 'bottom handle
    LINE (265, 184)-(275, 187), 0, B
    LINE (160, 179)-(240, 190), 6, BF
    LINE (160, 179)-(240, 190), 0, B
    LINE (192, 184)-(202, 187), 0, B
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(<)  (>)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE21:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION21$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION21$
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "You can feel a whisp of air as you near the wall."
        CASE "EXAMINE DESK"
            LOCATE 23, 1: PRINT "It's a nice desk, but there's nothing you need here."
        CASE "EXAMINE TABLE"
            LOCATE 23, 1: PRINT "There is a battery on the table."
        CASE "FORWARD"
            IF PENDANTUSE = 1 THEN GOTO BIGSWITCH
            IF PENDANTUSE = 0 THEN LOCATE 23, 1: PRINT "Bam! There you go again, thinkin yer an apparition!"
        CASE "RIGHT"
            GOTO LIVINGROOM
        CASE "TAKE BATTERY"
            LOCATE 23, 1: PRINT "You now have the BATTERY."
            battery = 1
        CASE "EXAMINE BATTERY"
            LOCATE 23, 1: PRINT "This BATTERY needs to be charged."
        CASE "EXAMINE PAINTING"
            LOCATE 23, 1: PRINT "Horrid painting of Mozart."
        CASE "EXAMINE RUG"
            LOCATE 23, 1: PRINT "What a putrid rug!"
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "Flat. Not an important clue."
        CASE "EXAMINE ROOF"
            LOCATE 23, 1: PRINT "Looks weak."
        CASE "OPEN DRESSER"
            LOCATE 23, 1: PRINT "It won't open."
        CASE "OPEN DESK"
            LOCATE 23, 1: PRINT "There's nothing in the desk."
        CASE "USE STAIRS"
            GOTO BIGSWITCH
        CASE "EXAMINE DRESSER"
            LOCATE 23, 1: PRINT "This sucker is huge! "
        CASE "LOOK"
            LOCATE 23, 1: PRINT "The Study.  A dresser, desk, painting, and table."
        CASE "LEFT"
            GOTO SUBEND
        CASE ELSE
            LOCATE 23, 1: PRINT "Whatever you had in mind didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE21

    BEDROOM2ENTER:
    LINE (0, 0)-(629, 350), 15, BF
    LINE (20, 20)-(0, 0), 0
    LINE (20, 200)-(0, 230), 0
    LINE (20, 200)-(20, 20), 0
    LINE (629, 0)-(609, 20), 0
    LINE (609, 200)-(629, 230), 0
    LINE (609, 200)-(609, 20), 0
    LINE (20, 20)-(609, 20), 0
    LINE (20, 200)-(50, 200), 0
    LINE (210, 200)-(225, 200), 0
    LINE (331, 200)-(300, 200), 0
    LINE (570, 200)-(609, 200), 0
    LINE (400, 30)-(500, 150), 0, B
    LINE (400, 140)-(500, 140), 0
    LINE (400, 130)-(500, 130), 0
    LINE (400, 120)-(500, 120), 0
    LINE (400, 110)-(500, 110), 0
    LINE (400, 100)-(500, 100), 0
    LINE (400, 90)-(500, 90), 0
    LINE (400, 80)-(500, 80), 0
    LINE (400, 70)-(500, 70), 0
    LINE (400, 60)-(500, 60), 0
    LINE (400, 50)-(500, 50), 0
    PAINT (450, 40), 4, 0
    LINE (300, 250)-(600, 350), 0, B 'BED
    LINE (320, 250)-(350, 200), 0
    LINE (580, 250)-(550, 200), 0
    LINE (350, 200)-(550, 200), 0
    LINE (331, 230)-(331, 170), 0
    LINE (570, 170)-(570, 230), 0
    LINE (331, 170)-(570, 170), 0
    LINE (50, 150)-(200, 250), 0, B 'DRAWER
    LINE (200, 150)-(210, 140), 0
    LINE (200, 250)-(210, 240), 0
    LINE (210, 240)-(210, 140), 0
    LINE (50, 150)-(60, 140), 0
    LINE (60, 140)-(210, 140), 0
    PAINT (100, 200), 6, 0
    PAINT (100, 145), 6, 0
    PAINT (205, 150), 6, 0
    CIRCLE (80, 170), 5, 0
    PAINT (80, 170), 14, 0
    CIRCLE (170, 170), 5, 0
    PAINT (170, 170), 14, 0
    CIRCLE (80, 215), 5, 0
    PAINT (80, 215), 14, 0
    CIRCLE (170, 215), 5, 0
    PAINT (170, 215), 14, 0
    LINE (60, 155)-(190, 185), 0, B
    LINE (60, 200)-(190, 230), 0, B
    LINE (225, 40)-(300, 230), 0, B 'CLOCK
    CIRCLE (263, 80), 33, 0
    LINE (235, 120)-(290, 220), 0, B
    CIRCLE (262, 55), 3, 0
    PAINT (262, 55), 14, 0
    CIRCLE (262, 106), 3, 0
    PAINT (262, 106), 14, 0
    CIRCLE (290, 80), 3, 0
    PAINT (290, 80), 14, 0
    CIRCLE (236, 80), 3, 0
    PAINT (236, 80), 14, 0
    PAINT (260, 42), 6, 0
    LINE (260, 80)-(240, 70), 0
    LINE (260, 80)-(280, 70), 0
    LINE (269, 120)-(269, 170), 0
    LINE (259, 120)-(259, 170), 0
    CIRCLE (264, 180), 10, 0
    PAINT (255, 130), 6, 0
    LINE (235, 220)-(240, 215), 0
    LINE (290, 220)-(285, 215), 0
    LINE (285, 215)-(240, 215), 0
    LINE (240, 215)-(240, 120), 0
    LINE (285, 215)-(285, 120), 0
    PAINT (260, 150), 4, 0
    PAINT (264, 180), 14, 0
    PAINT (30, 300), 1, 0 'PAINT ROOM, BED, ETC.
    PAINT (608, 300), 1, 0
    PAINT (400, 300), 6, 0
    PAINT (400, 175), 6, 0
    LINE (0, 291)-(630, 350), 0, BF
    IF blinds = 1 THEN LINE (401, 40)-(499, 150), 3, BF
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(<)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE22:
    LOCATE 23, 1: PRINT "                                                               "
    LOCATE 23, 1: INPUT "Command:", ACTION22$
    LOCATE 23, 1: PRINT "                                                               "
    SELECT CASE ACTION22$
        CASE "LOOK"
            LOCATE 23, 1: PRINT "Cozy bedroom. Dresser, bed, clock and window."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "Blue carpet."
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "Nothing important."
        CASE "EXAMINE BLINDS"
            LOCATE 23, 1: PRINT "Pretty dusty."
        CASE "EXAMINE BED"
            LOCATE 23, 1: PRINT "Oooh. A nice soft feather bed. It smells like perfume."
        CASE "EXAMINE DRESSER"
            LOCATE 23, 1: PRINT "There is a note on top of the dresser."
        CASE "EXAMINE NOTE"
            LOCATE 23, 1: PRINT "[If you find my bracelet, put it on the table in the ballroom.]"
        CASE "EXAMINE CLOCK"
            LOCATE 23, 1: PRINT "Tick. Tock. Times is running out!"
        CASE "EXAMINE WINDOW"
            IF blinds = 0 THEN LOCATE 23, 1: PRINT "There are blinds covering the window."
            IF blinds = 1 THEN LOCATE 23, 1: PRINT "Hmm.. a nice view of a doghouse."
        CASE "OPEN BLINDS"
            LOCATE 23, 1: PRINT "It's a bright cheery day outside."
            blinds = 1
            SLEEP
            GOTO BEDROOM2ENTER
        CASE "LEFT"
            GOTO SUBEND
        CASE ELSE
            LOCATE 23, 1: PRINT "Whatever you had in mind didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE22

    BIGSWITCH:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 220)-(629, 220), 15
    PAINT (2, 2), 1, 15
    PAINT (2, 222), 0, 15
    LINE (310, 70)-(320, 90), 6, BF 'Switch
    LINE (305, 70)-(325, 95), 0, B
    LINE (305, 75)-(308, 90), 6, BF
    LINE (305, 75)-(308, 90), 0, B
    LINE (325, 75)-(322, 90), 6, BF
    LINE (325, 75)-(322, 90), 0, B
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(\/)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE23:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION23$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION23$
        CASE "LOOK"
            LOCATE 23, 1: PRINT "There is absolutely nothing in here but a stupid switch!"
        CASE "EXAMINE SWITCH"
            LOCATE 23, 1: PRINT "A carving beside the switch. [hallway]"
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "Looks just like the wall in the basement."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "Musty. Mice live here..."
        CASE "USE SWITCH"
            LOCATE 23, 1: PRINT "More rumbling. What's going on?"
            x = 100
            FOR J = 1 TO 300
                IF x = 37 THEN x = 100: GOTO jump2
                IF x = 100 THEN x = 37
                jump2:
                SOUND x, .1
            NEXT J
            HALLWAYSWITCH = 0
        CASE "BACKWARD"
            GOTO STUDYENTER
        CASE ELSE
            LOCATE 23, 1: PRINT "That didn't work."
    END SELECT
    SLEEP
    GOTO COMMANDLINE23

    BIGPAINTING:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (0, 0)-(629, 350), 15, BF
    LINE (0, 0)-(50, 50), 0
    LINE (0, 0)-(0, 350), 0
    LINE (0, 350)-(50, 250), 0
    LINE (50, 50)-(50, 250), 0
    PAINT (10, 30), 7, 0
    LINE (50, 50)-(550, 50), 0
    LINE (550, 50)-(629, 0), 0
    LINE (550, 50)-(550, 250), 0
    LINE (550, 250)-(629, 350), 0
    LINE (629, 350)-(629, 0), 0
    PAINT (600, 50), 7, 0
    LINE (550, 250)-(50, 250), 0 'RUG
    LINE (100, 280)-(500, 280), 0
    LINE (100, 280)-(70, 350), 0
    LINE (500, 280)-(530, 350), 0
    PAINT (520, 340), 4, 0
    PAINT (520, 310), 8, 0
    PAINT (300, 2), 7, 0
    LINE (150, 200)-(450, 100), 0, B 'PAINTING
    LINE (150, 200)-(200, 150), 0
    LINE (200, 150)-(250, 200), 0
    LINE (230, 180)-(275, 140), 0
    LINE (275, 140)-(340, 200), 0
    LINE (330, 140)-(300, 162), 0
    LINE (330, 140)-(400, 200), 0
    LINE (387, 190)-(450, 190), 0
    LINE (210, 160)-(190, 160), 0
    LINE (240, 170)-(308, 170), 0
    LINE (302, 160)-(353, 160), 0
    PAINT (300, 102), 9, 0
    PAINT (250, 190), 6, 0
    PAINT (330, 190), 6, 0
    PAINT (180, 190), 6, 0
    PAINT (430, 195), 2, 0
    LINE (200, 320)-(230, 310), 0, B
    PAINT (210, 315), 15, 0 'MATCHES
    LINE (200, 310)-(205, 300), 0
    LINE (230, 310)-(235, 300), 0
    LINE (235, 300)-(205, 300), 0
    LINE (235, 300)-(235, 310), 0
    LINE (235, 310)-(230, 320), 0
    PAINT (231, 315), 0, 0
    PAINT (220, 309), 13, 0
    LINE (0, 291)-(630, 350), 0, BF
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(>)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE24:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION24$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION24$
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "There is nothing important here."
        CASE "EXAMINE ROOF"
            LOCATE 23, 1: PRINT "Aside from being bland, you discover nothing."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "Nothing."
        CASE "LOOK"
            LOCATE 23, 1: PRINT "Huge painting! There is also a ragged rug."
        CASE "EXAMINE PAINTING"
            LOCATE 23, 1: PRINT "This is a huge painting of the swiss alps."
        CASE "EXAMINE RUG"
            LOCATE 23, 1: PRINT "Looks like it came from cavemen days!"
        CASE "RIGHT"
            GOTO BALLROOMENTER
        CASE ELSE
            LOCATE 23, 1: PRINT "You can't do that."
    END SELECT
    SLEEP
    GOTO COMMANDLINE24

    LIVINGROOM:
    LINE (0, 0)-(629, 350), 15, BF
    LINE (0, 0)-(75, 30), 0
    LINE (629, 0)-(550, 30), 0
    REM right wall
    LINE (550, 30)-(550, 200), 0
    LINE (550, 200)-(629, 350), 0
    REM left wall
    LINE (75, 30)-(75, 200), 0
    LINE (0, 350)-(75, 200), 0
    REM ceiling
    LINE (75, 30)-(550, 30), 0
    REM floor
    LINE (75, 200)-(550, 200), 0
    PAINT (400, 300), 3, 0
    LINE (200, 210)-(400, 100), 0, B
    PAINT (300, 205), 4, 0
    LINE (200, 100)-(190, 95), 0
    LINE (190, 95)-(190, 200), 0
    LINE (190, 200)-(200, 210), 0
    LINE (400, 100)-(410, 95), 0
    LINE (410, 95)-(410, 200), 0
    LINE (410, 200)-(400, 210), 0
    LINE (190, 95)-(410, 95), 0
    PAINT (405, 100), 4, 0
    PAINT (195, 100), 4, 0
    PAINT (300, 150), 4, 0
    PAINT (405, 201), 4, 0
    PAINT (192, 201), 4, 0
    REM sofa
    LINE (150, 300)-(450, 300), 0
    LINE (150, 350)-(450, 350), 0
    LINE (150, 300)-(150, 350), 0
    LINE (450, 300)-(450, 350), 0
    LINE (150, 300)-(160, 290), 0
    LINE (160, 290)-(440, 290), 0
    LINE (440, 290)-(450, 300), 0
    LINE (165, 290)-(170, 275), 0
    LINE (435, 290)-(430, 275), 0
    LINE (430, 275)-(425, 275), 0
    LINE (425, 275)-(415, 275), 0
    PAINT (420, 295), 6, 0
    PAINT (427, 275), 6, 0
    LINE (415, 275)-(410, 290), 0
    LINE (170, 275)-(185, 275), 0
    LINE (185, 275)-(190, 290), 0
    LINE (188, 280)-(412, 280), 0
    PAINT (295, 285), 6, 0
    LINE (300, 280)-(300, 290), 0
    PAINT (300, 340), 6, 0
    PAINT (427, 277), 6, 0
    PAINT (176, 277), 6, 0
    REM t.v.
    LINE (430, 120)-(525, 190), 0, B
    LINE (525, 190)-(530, 185), 0
    LINE (525, 120)-(530, 115), 0
    LINE (530, 115)-(530, 185), 0
    LINE (430, 120)-(435, 115), 0
    LINE (435, 115)-(530, 115), 0
    PAINT (500, 135), 6, 0
    PAINT (500, 117), 6, 0
    PAINT (529, 117), 6, 0
    LINE (440, 130)-(515, 180), 0, BF
    LINE (450, 190)-(505, 210), 0, B
    PAINT (500, 195), 6, 0
    PAINT (500, 205), 6, 0
    LINE (450, 200)-(505, 200), 6
    CIRCLE (450, 185), 3, 0
    CIRCLE (470, 185), 3, 0
    CIRCLE (490, 185), 3, 0
    CIRCLE (510, 185), 3, 0
    PAINT (450, 185), 8, 0
    PAINT (470, 185), 8, 0
    PAINT (490, 185), 8, 0
    PAINT (510, 185), 8, 0
    REM TABLE
    LINE (170, 270)-(430, 270), 0
    LINE (190, 250)-(410, 250), 0
    LINE (190, 250)-(170, 270), 0
    LINE (430, 270)-(410, 250), 0
    LINE (410, 270)-(410, 280), 0
    LINE (190, 270)-(190, 280), 0
    PAINT (300, 260), 0, 0
    PAINT (300, 275), 14, 0
    REM LAMP
    LINE (110, 140)-(150, 140), 0
    LINE (120, 90)-(140, 90), 0
    LINE (120, 90)-(110, 140), 0
    LINE (140, 90)-(150, 140), 0
    CIRCLE (130, 160), 20, 0
    PAINT (130, 160), 12, 0
    PAINT (130, 120), 14, 0
    REM ROUND TABLE
    CIRCLE (130, 180), 40, 0, , , .3
    PAINT (120, 180), 9, 0
    LINE (120, 191)-(140, 210), 0, BF
    CIRCLE (130, 210), 30, 0, , , .3
    PAINT (120, 215), 9, 0
    CIRCLE (130, 180), 40, 12, , 2, .3
    CIRCLE (130, 180), 40, 0, , 1.1, .3
    REM BRICKS
    LINE (200, 150)-(400, 150), 0
    LINE (200, 140)-(400, 140), 0
    LINE (200, 152)-(250, 152), 0
    LINE (250, 152)-(250, 150), 0
    PAINT (230, 151), 15, 0
    LINE (400, 152)-(350, 152), 0
    LINE (350, 150)-(350, 152), 0
    PAINT (370, 151), 15, 0
    LINE (205, 150)-(205, 140), 15
    LINE (240, 150)-(240, 140), 15
    LINE (280, 150)-(280, 140), 15
    LINE (320, 150)-(320, 140), 15
    LINE (360, 150)-(360, 140), 15
    LINE (395, 150)-(395, 140), 15
    LINE (200, 138)-(400, 138), 0
    PAINT (300, 139), 15, 0
    LINE (200, 128)-(400, 128), 0
    LINE (200, 126)-(400, 126), 0
    LINE (201, 163)-(249, 163), 15
    LINE (400, 163)-(350, 163), 15
    LINE (210, 163)-(210, 152), 15
    LINE (243, 163)-(243, 152), 15
    LINE (355, 163)-(355, 152), 15
    LINE (390, 163)-(390, 152), 15
    LINE (201, 173)-(249, 173), 15
    LINE (351, 173)-(399, 173), 15
    LINE (215, 173)-(215, 163), 15
    LINE (235, 173)-(235, 163), 15
    LINE (360, 173)-(360, 163), 15
    LINE (385, 173)-(385, 163), 15
    LINE (201, 183)-(249, 183), 15
    PAINT (300, 127), 15, 0
    LINE (210, 128)-(210, 138), 0
    LINE (250, 128)-(250, 138), 0
    LINE (290, 128)-(290, 138), 0
    LINE (330, 128)-(330, 138), 0
    LINE (370, 128)-(370, 138), 0
    LINE (212, 128)-(212, 138), 0
    LINE (252, 128)-(252, 138), 0
    LINE (292, 128)-(292, 138), 0
    LINE (332, 128)-(332, 138), 0
    LINE (372, 128)-(372, 138), 0
    PAINT (211, 130), 15, 0
    PAINT (251, 130), 15, 0
    PAINT (291, 130), 15, 0
    PAINT (331, 130), 15, 0
    PAINT (371, 130), 15, 0
    LINE (351, 185)-(399, 185), 15
    LINE (351, 200)-(399, 200), 15
    LINE (201, 200)-(249, 200), 15
    LINE (211, 185)-(211, 200), 15
    LINE (242, 185)-(242, 200), 15
    LINE (355, 185)-(355, 200), 15
    LINE (390, 185)-(390, 200), 15
    LINE (205, 200)-(205, 210), 15
    LINE (235, 200)-(235, 210), 15
    LINE (365, 200)-(365, 210), 15
    LINE (395, 200)-(395, 210), 15
    LINE (220, 174)-(220, 183), 15
    LINE (245, 174)-(245, 183), 15
    LINE (245, 174)-(245, 183), 15
    LINE (365, 174)-(365, 183), 15
    LINE (390, 174)-(390, 183), 15
    LINE (201, 115)-(399, 115), 15
    LINE (220, 115)-(220, 126), 15
    LINE (240, 115)-(240, 126), 15
    LINE (270, 115)-(270, 126), 15
    LINE (300, 115)-(300, 126), 15
    LINE (335, 115)-(335, 126), 15
    LINE (365, 115)-(365, 126), 15
    LINE (395, 115)-(395, 126), 15
    LINE (210, 115)-(210, 101), 15
    LINE (245, 115)-(245, 101), 15
    LINE (275, 115)-(275, 101), 15
    LINE (305, 115)-(305, 101), 15
    LINE (340, 115)-(340, 101), 15
    LINE (375, 115)-(375, 101), 15
    LINE (199, 173)-(190, 166), 15
    LINE (199, 185)-(190, 175), 15
    LINE (199, 165)-(190, 155), 15
    LINE (199, 150)-(190, 142), 15
    LINE (199, 138)-(190, 130), 15
    PAINT (300, 97), 6, 0
    LINE (199, 115)-(190, 110), 15
    LINE (199, 125)-(190, 120), 15
    LINE (199, 200)-(190, 190), 15
    LINE (401, 200)-(409, 190), 15
    LINE (401, 125)-(409, 120), 15
    LINE (401, 115)-(409, 110), 15
    LINE (401, 138)-(409, 133), 15
    LINE (401, 150)-(409, 145), 15
    LINE (401, 163)-(409, 158), 15
    LINE (401, 173)-(409, 168), 15
    LINE (401, 185)-(409, 180), 15
    LINE (250, 210)-(350, 150), 0, BF
    REM left door
    LINE (20, 30)-(20, 309), 0
    LINE (65, 40)-(65, 220), 0
    LINE (20, 30)-(65, 40), 0
    PAINT (40, 100), 9, 0
    LINE (65, 200)-(20, 200), 0
    PAINT (55, 100), 6, 0
    REM right door
    LINE (600, 30)-(600, 295), 0
    LINE (560, 40)-(560, 217), 0
    LINE (560, 40)-(600, 30), 0
    LINE (610, 20)-(610, 313), 0
    LINE (610, 20)-(555, 37), 0
    LINE (555, 37)-(555, 210), 0
    PAINT (605, 30), 6, 0
    LINE (560, 200)-(600, 200), 0
    PAINT (580, 210), 14, 0
    PAINT (580, 180), 13, 0
    LINE (0, 291)-(630, 350), 0, BF
    LINE (0, 0)-(650, 15), 0, BF
    LINE (1, 15)-(629, 15), 15
    LOCATE 1, 1: PRINT "(<)  (>)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE25:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION25$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION25$
        CASE "EXAMINE TELEVISION"
            LOCATE 23, 1: PRINT "This tv is broken."
        CASE "EXAMINE TV"
            LOCATE 23, 1: PRINT "It's broken."
        CASE "EXAMINE FIREPLACE"
            LOCATE 23, 1: PRINT "There is a panel behind some wood."
        CASE "EXAMINE WOOD"
            LOCATE 23, 1: PRINT "There are some stupid bugs all over this wood."
        CASE "USE TV"
            LOCATE 23, 1: PRINT "You can't use a broken tv!"
        CASE "TAKE BUGS"
            LOCATE 23, 1: PRINT "Just the thing for your collection...you schmuck!"
        CASE "USE LAMP"
            LOCATE 23, 1: PRINT "Good thought. But nothing happens in this room."
        CASE "EXAMINE BUGS"
            LOCATE 23, 1: PRINT "A lotta good that's gonna do Porky!"
        CASE "EXAMINE PANEL"
            IF BRACELETUSE = 0 THEN
                LOCATE 23, 1: PRINT "Scribbling beside panel. [If you have left the bracelet in.."
                SLEEP
                LOCATE 23, 1: PRINT "                                                                  "
                LOCATE 23, 1: PRINT "the secret place, I'll open this panel for you.]"
            END IF
            IF BRACELETUSE = 1 THEN
                LOCATE 23, 1: PRINT "There is a BATTERY CHARGER!"
            END IF
        CASE "EXAMINE BATTERY CHARGER"
            LOCATE 23, 1: PRINT "WOO HOO!  It's a BATTERY CHARGER allright!"
        CASE "TAKE BATTERY CHARGER"
            LOCATE 23, 1: PRINT "You now have a crummy BATTERY CHARGER."
            BATTERYCHARGER = 1
        CASE "USE BATTERY CHARGER ON BATTERY"
            IF BATTERYCHARGER = 1 THEN LOCATE 23, 1: PRINT "The battery is replenished."
            IF BATTERYCHARGER = 0 THEN LOCATE 23, 1: PRINT "You don't have a battery charger putz!"
            IF BATTERYCHARGER = 1 THEN BATTERYPOWER = 1
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "There is nothing useful on the wall."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "You don't see anything useful."
        CASE "EXAMINE ROOF"
            LOCATE 23, 1: PRINT "Nothing."
        CASE "EXAMINE LAMP"
            LOCATE 23, 1: PRINT "What a beautiful lamp!"
        CASE "EXAMINE TABLE"
            LOCATE 23, 1: PRINT "The table has scratch marks on it."
        CASE "EXAMINE SCRATCH MARKS"
            LOCATE 23, 1: PRINT "As if you didn't know these were done with a knife!"
        CASE "LOOK"
            LOCATE 23, 1: PRINT "The livingroom. A couch, tv, fireplace, lamp...cool."
        CASE "EXAMINE COUCH"
            LOCATE 23, 1: PRINT "Comfy. Too bad you don't have time for this!"
        CASE "LEFT"
            GOTO STUDYENTER
        CASE "RIGHT"
            GOTO GADGETROOM
        CASE ELSE
            LOCATE 23, 1: PRINT "Good idea, but you can't do that in this game."
    END SELECT
    SLEEP
    GOTO COMMANDLINE25

    GADGETROOM:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 200)-(629, 200), 15
    PAINT (2, 2), 15
    PAINT (2, 201), 1, 15
    LINE (50, 50)-(70, 70), 6, B , &H5FF0 'BATTERY POD
    IF wallpower = 1 THEN LINE (50, 50)-(70, 70), 4, BF
    IF wallpower = 1 THEN LINE (51, 51)-(71, 71), 15, B
    LINE (71, 60)-(200, 63), 6, BF
    LINE (71, 60)-(200, 63), 0, B
    LINE (201, 50)-(250, 100), 2, BF 'switch box
    LINE (201, 50)-(250, 100), 0, B
    IF wallpower = 1 THEN LINE (220, 60)-(223, 70), 6, BF
    IF wallpower = 1 THEN LINE (220, 60)-(223, 70), 0, B
    LINE (251, 75)-(500, 78), 6, BF
    LINE (251, 75)-(500, 78), 0, B
    LINE (500, 30)-(600, 199), 8, BF 'metal door
    LINE (500, 30)-(600, 199), 0, B
    LINE (510, 40)-(590, 80), 3, BF
    LINE (510, 40)-(590, 80), 0, B
    IF openmetaldoor = 1 THEN LINE (500, 30)-(600, 199), 0, BF
    LINE (60, 70)-(60, 150), 6, , &H5FF0
    LINE (60, 150)-(499, 150), 6, , &H5FF0
    LINE (400, 150)-(400, 78), 6, , &H5FF0
    LINE (225, 150)-(225, 85), 6, , &H5FF0
    LINE (0, 0)-(650, 15), 0, BF
    IF openmetaldoor = 0 THEN LOCATE 1, 1: PRINT "(<)"
    IF openmetaldoor = 1 THEN LOCATE 1, 1: PRINT "(<)  (^)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE26:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION26$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION26$
        CASE "LOOK"
            LOCATE 23, 1: PRINT "A big metal door. There's no handle on it."
        CASE "EXAMINE DOOR"
            LOCATE 23, 1: PRINT "This door seems to be wired to some panels on the wall."
        CASE "USE SWITCH"
            IF wallpower = 0 THEN LOCATE 23, 1: PRINT "I don't see a switch..do you?"
            IF wallpower = 1 THEN
                LOCATE 23, 1: PRINT "You hear the big metal door click."
                openmetaldoor = 1
                SLEEP
                GOTO GADGETROOM
            END IF
        CASE "EXAMINE PANELS"
            LOCATE 23, 1: PRINT "The green panel is the only one that appears useful."
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "You see a battery pod."
        CASE "USE BATTERY ON POD"
            IF BATTERYPOWER = 0 THEN LOCATE 23, 1: PRINT "Nothing happens. The battery is not charged."
            IF BATTERYPOWER = 1 THEN
                LOCATE 23, 1: PRINT "Power runs through the panels.. a switch appears!"
                wallpower = 1
                SLEEP: GOTO GADGETROOM
            END IF
        CASE "USE BATTERY ON BATTERY POD"
            IF BATTERYPOWER = 0 THEN LOCATE 23, 1: PRINT "Nothing happens. The battery is not charged."
            IF BATTERYPOWER = 1 THEN
                LOCATE 23, 1: PRINT "Power runs through the panels.. a switch appears!"
                wallpower = 1
                SLEEP: GOTO GADGETROOM
            END IF
        CASE "EXAMINE PIPE"
            LOCATE 23, 1: PRINT "That's not a pipe, but good try."
        CASE "EXAMINE WIRES"
            LOCATE 23, 1: PRINT "The wires are partly covered in plaster."
        CASE "EXAMINE WIRE"
            LOCATE 23, 1: PRINT "The wires are partly covered in plaster."
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "There's nothing here, but keep up the good work."
        CASE "FORWARD"
            IF openmetaldoor = 0 THEN LOCATE 23, 1: PRINT "That door isn't open!"
            IF openmetaldoor = 1 THEN GOTO COINROOM
        CASE "EXAMINE ROOF"
            LOCATE 23, 1: PRINT "I didn't program anything useful into the roof.  :)"
        CASE "LEFT"
            GOTO LIVINGROOM
        CASE ELSE
            LOCATE 23, 1: PRINT "That won't work!"
    END SELECT
    SLEEP
    GOTO COMMANDLINE26

    COINROOM:
    LINE (0, 0)-(630, 290), 0, BF
    LINE (1, 1)-(630, 290), 15, B
    LINE (1, 200)-(629, 200), 15
    PAINT (2, 2), 11, 15
    PAINT (2, 201), 3, 15
    CIRCLE (300, 250), 10, 14
    PAINT (300, 250), 14
    LINE (0, 0)-(650, 15), 0, BF
    LOCATE 1, 1: PRINT "(\/)"
    LOCATE 22, 1: PRINT "[F](1)Examine(2)Look(3)Take(4)Use(5)Open(6)Forward(7)Backward(8)Right(9)Left"
    COMMANDLINE27:
    LOCATE 23, 1: PRINT "                                                              "
    LOCATE 23, 1: INPUT "Command:", ACTION27$
    LOCATE 23, 1: PRINT "                                                              "
    SELECT CASE ACTION27$
        CASE "EXAMINE WALL"
            LOCATE 23, 1: PRINT "Nothing important"
        CASE "EXAMINE FLOOR"
            LOCATE 23, 1: PRINT "There is a GOLD COIN here."
        CASE "EXAMINE GOLD COIN"
            LOCATE 23, 1: PRINT "It's solid gold.  "
        CASE "TAKE GOLD COIN"
            LOCATE 23, 1: PRINT "After all that work, you finally have the GOLD COIN!"
            GOLDCOIN = 1
        CASE "BACKWARD"
            GOTO GADGETROOM
        CASE ELSE
            LOCATE 23, 1: PRINT "Whatever you tried was not programmed into this game!"
    END SELECT
    SLEEP
    GOTO COMMANDLINE27


    SUBEND:
END SUB

SUB story
    CLS
    PRINT "Here's what happened:"
    PRINT "---------------------"
    PRINT "A rift in space sucked you in on a journey to the moon. "
    PRINT "  For reasons unexplained, you were placed in front of an eerie"
    PRINT "  colonial style house.  Even from a distance you can tell that "
    PRINT "  the house is collapsing.  An ominous forcefield surrounds you."
    PRINT "  It is forcing you toward the house.  There is no escaping it."
    PRINT "  Your only hope is to search this"
    PRINT "  house-from-an-alternate-dimension."
    PRINT "  During these events you are hounded by a sinister voice that"
    PRINT "  constantly repeats...GOLD COIN...GOLD COIN...YOU ARE NOT THE "
    PRINT "  FIRST TO HAVE COME!!"
    PRINT
    PRINT "  GOOD LUCK ... and um ... may the force be with you my son."
    theme$ = "MBT245 O4C5O3F5F5O4C5O3F5F5O4C5O3F5O4C+5C+5c<C>C<C"
    FOR J = 1 TO 3
        PLAY theme$
    NEXT J
    SLEEP
END SUB

SUB walkthrough
    CLS
    COLOR 4
    INPUT "ARE YOU SURE YOU WANT TO RUIN THE GAME BY CHEATING??? (Y/N)", cheatyes$
    IF cheatyes$ = "Y" THEN GOTO skp13
    EXIT SUB
    skp13:
    COLOR 1
    INPUT "ARE YOU COMPLETELY AND ABSOLUTELY CERTAIN???(Y/N)", cheatyes1$
    IF cheatyes1$ = "Y" THEN GOTO SKP14
    EXIT SUB
    SKP14:
    COLOR 2
    INPUT "ARE YOU COMPLETELY AND ABSOLUTELY CERTAIN???(Y/N)", cheatyes2$
    IF cheatyes2$ = "Y" THEN GOTO SKP15
    EXIT SUB
    SKP15:
    CLS
    COLOR 3
    PRINT "Allright, fine!  Here ya go!"
    PRINT "1) TAKE BROWN KEY"
    PRINT "2) USE BROWN KEY ON GATE"
    PRINT "3) OPEN GATE"
    PRINT "4) FORWARD"
    PRINT "5) TAKE RED KEY"
    PRINT "6) FORWARD"
    PRINT "7) OPEN DOOR"
    PRINT "8) FORWARD"
    PRINT "9) OPEN DOOR ONE"
    PRINT "10) USE LAMP"
    PRINT "11) EXAMINE PAINTING ONE"
    PRINT "12) EXAMINE PAINTING TWO"
    PRINT "13) EXAMINE PAINTING THREE"
    PRINT "14) RIGHT"
    PRINT "15) OPEN DOOR TWO"
    PRINT "16) FORWARD"
    SLEEP
    CLS
    COLOR 7
    PRINT "17) TAKE SILVER KEY"
    PRINT "18) BACKWARD"
    PRINT "19) USE RED KEY ON DOOR THREE"
    PRINT "20) OPEN DOOR THREE"
    PRINT "21) RIGHT THROUGH DOOR THREE"
    PRINT "22) USE ELEVATOR"
    PRINT "23) USE SWITCH"
    PRINT "24) USE ELEVATOR"
    PRINT "25) LEFT"
    PRINT "26) BACKWARD"
    PRINT "27) BACKWARD"
    PRINT "28) EXAMINE WELL"
    PRINT "29) USE LADDER"
    PRINT "30) TAKE BLACK KEY"
    PRINT "31) USE LADDER"
    PRINT "32) BACKWARD"
    PRINT "33) FORWARD"
    PRINT "34) OPEN DOOR"
    SLEEP
    CLS
    COLOR 5
    PRINT "35) FORWARD"
    PRINT "36) USE BLACK KEY ON DOOR FOUR"
    PRINT "37) OPEN DOOR FOUR"
    PRINT "38) RIGHT THROUGH DOOR FOUR"
    PRINT "39) EXAMINE KEYBOARD"
    PRINT "40) PRESS RED BUTTON"
    PRINT "41) PRESS A3 C8 B1"
    PRINT "42) FORWARD"
    PRINT "43) TAKE KNIFE"
    PRINT "44) BACKWARD"
    PRINT "45) LEFT"
    PRINT "46) BACKWARD"
    PRINT "47) BACKWARD"
    PRINT "48) BACKWARD"
    PRINT "49) USE KNIFE ON FENCE"
    PRINT "50) TAKE PENDANT"
    PRINT "51) FORWARD"
    PRINT "52) FORWARD"
    SLEEP
    CLS
    COLOR 11
    PRINT "53) OPEN DOOR"
    PRINT "54) FORWARD"
    PRINT "55) OPEN DOOR THREE"
    PRINT "56) RIGHT THROUGH DOOR THREE"
    PRINT "57) USE LADDER"
    PRINT "58) USE SWITCH"
    PRINT "59) RIGHT"
    PRINT "60) TAKE BRACELET"
    PRINT "61) LEFT"
    PRINT "62) USE LADDER"
    PRINT "63) LEFT"
    PRINT "64) OPEN DOOR ONE"
    PRINT "65) USE BRACELET ON TABLE"
    PRINT "66) RIGHT"
    PRINT "67) OPEN DOOR THREE"
    PRINT "68) RIGHT THROUGH DOOR THREE"
    PRINT "69) TAKE BATTERY"
    PRINT "70) RIGHT"
    PRINT "71) TAKE BATTER CHARGER"
    PRINT "72) USE BATTERY CHARGER ON BATTERY"
    PRINT "73) RIGHT"
    PRINT "74) USE BATTERY ON BATTERY POD"
    PRINT "75) USE SWITCH"
    SLEEP
    CLS
    COLOR 12
    PRINT "76) FORWARD"
    PRINT "77) TAKE GOLD COIN"
    PRINT "78) [go all the way back to the wishing well]"
    PRINT "79) USE GOLD COIN ON WISHING WELL"
    PRINT "80) EXAMINE BOX"
    PRINT "81) USE SILVER KEY ON BOX"
    SLEEP
    CLS
    PRINT "F I N A L L Y  . . .   Y O U  R  D O N E ! ! !"
    SLEEP
    CLS

END SUB

