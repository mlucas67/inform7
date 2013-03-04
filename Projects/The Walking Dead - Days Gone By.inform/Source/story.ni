"The Walking Dead - Days Gone By" by Marshall Lucas

The story genre is "Post-Apocalyptic Fiction".  The release number is 1.  The story creation year is 2013.

Release along with a solution, source text, a website.

Index map with room-shape set to "square" and room-size set to 60 and room-name-size set to 9 and room-name-length set to 13 and route-thickness set to 15 and room-outline set to off and map-outline set to off and route-colour set to "White" and room-colour set to "White" and font set to "Trebuchet-MS-Regular" and EPS file.

Include Locksmith by Emily Short.

Use full-length room descriptions, American dialect, no scoring, and the serial comma. Use memory economy. Use MAX_SYMBOLS of 7000. 

Part 1 - Adjustments to the World Model

Chapter 1 - Modifying Existing Kinds

Include Plurality by Emily Short.

Section 1 - Doors

Instead of attacking a closed door: say "[The noun] reverberates but does not open."

Understand "knock on [something]" or "knock [something]" as attacking.  Understand the commands "bang" and "tap" and "rap" as "knock".

Before printing the name of an open door (called target) when looking or going: 
	if the target is a staircase, do nothing;
	otherwise say "open ".

After opening a door (called D):
	repeat with zombie running through walkers in the back side of D:
		now the zombie is Targeted;
		now the Destination of the zombie is front side of D.

Instead of looking under something which is carried by the player:
	say "Since you are holding [the noun], it stands to reason that nothing of interest could be concealed beneath."
	
Instead of looking under something which is worn by the player:
	say "Underneath there is only yourself."
	
Instead of looking under a door:
	say "[The noun] meets the floor with very little space to spare."

Section 2 - Smells

Section 3 - Sounds

Section 4 - Rooms

A room can be indoors or outdoors.

Chapter 2 - New Kinds

Include Postures by Emily Short.

Section 1 - Objects

A bed is a kind of supporter.  A bed is usually enterable.  Every bed allows seated and reclining.  A bed is usually reclining.

Section 2 - Doors

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. Understand "stairs" or "stair" or "staircase" as a staircase. Understand "upstairs" or "downstairs" as a staircase.

Instead of climbing a staircase:
	try entering the noun. 
	
Understand the commands "ascend" and "descend" as climb. Understand "go down [staircase]" as climbing. Understand "go up [staircase]" as climbing.

Section 3 - Walkers

Include Patrollers by Michael Callaghan

A walker is a kind of Patroller.  The MovementType of a walker is usually Aimless.  A walker is usually On Patrol.  Reporting is Collective.  The StartTurn of a walker is 1.

After Patrolling something (called the Bod):
	if the Bod is Off Patrol:
		now the Bod is Aimless;
		now the Bod is On Patrol.
		
After Patrolling something (called the Bod):
	if the location of the Bod is the location of the Player:
		now the Bod is Following.

Part 2 - The World

Chapter 1 - The Hospital

The Hospital Room is a room.  A Hospital Bed is a bed in the Hospital Room.

The player is on the Hospital Bed.

The Hospital Room Door is a door.  It is west of the Hospital Room and east of Hallway1.

Hallway1 is a room.

The Walker1 is a walker in Hallway1.  The Walker2 is a walker in Hallway1.

Hallway2 is a room. Hallway2 is north of Hallway1.

Hallway3 is a room. Hallway3 is north of Hallway2.