"The Walking Dead - Days Gone By" by Marshall Lucas

The story genre is "Apocalyptic and Post-Apocalyptic Fiction".  The release number is 1.  The story headline is "The Walking Dead - Days Gone By".  The story description is "You groggily awaken to the sight of your best friend Shane bringing you flowers.  You recall the incident that put you here, in the hospital, when you were . . . what, what is that?  You fully awaken in your empty hospital room.  A small boquet of dying flowers is on the stand next to your bed.  You try to call the nurse, but no one answers.  The only thing you know for certain at the moment is that your are alive and your name is 'Rick Grimes.'  Aside from that, everything is quite foggy and it is eerily quiet."  The story creation year is 2013.

Release along with a solution, source text, a website.

Index map with room-shape set to "square" and room-size set to 60 and room-name-size set to 9 and room-name-length set to 13 and route-thickness set to 15 and room-outline set to off and map-outline set to off and route-colour set to "White" and room-colour set to "White" and font set to "Trebuchet-MS-Regular" and EPS file.

Include Locksmith by Emily Short.

Include Modified Exit by Emily Short.

Include Exit Lister by Gavin Lambert.

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

Instead of looking under something which is carried by the player:
	say "Since you are holding [the noun], it stands to reason that nothing of interest could be concealed beneath."
	
Instead of looking under something which is worn by the player:
	say "Underneath there is only yourself."
	
Instead of looking under a door:
	say "[The noun] meets the floor with very little space to spare."

Section 2 - Rooms

A room can be indoors or outdoors.

Section 3 - Sights

Section 4 - Sounds

Section 5 - Smells

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

Freshness is a kind of value.  The Freshnesses are Fresh, DayOld, Stale, Rotted and Immoble.

A walker is a kind of Patroller.  The MovementType of a walker is usually Aimless.  A walker is usually On Patrol.  Reporting is Collective.  The StartTurn of a walker is 1.   A walker has a Freshness.  A walker is usually DayOld.  The Drive of a walker is usually 60.  

Instead of examining a walker (called W):
	if the Freshness of W is:
		-- Fresh: say "It looks pale, slightly slouched forward and has bulging yellow eyes.";
		-- DayOld: say "It is ashen and pale, with a significant hunch and dark yellow-brown eyes.";
		-- Stale: say "It is decaying even as you look at it, it can barely walk or stand up at all.  It's eyes are a deep golden-brown.";
		-- Rotted: say "It is missing various body parts.  It's eyes are a murky grey-brown.";
		-- otherwise: say "It is lying on the ground unable to move much at all.  It looks as if it has been dead for years.";
	say " It looks at you as if you were it's next meal!"

After Patrolling something (called the Bod):
	if the Bod is Off Patrol:
		now the Bod is Aimless;
		now the Bod is On Patrol.
		
After Patrolling something (called the Bod):
	if the location of the Bod is the location of the Player:
		now the Bod is Following;
		now the StartTurn of the Bod is the turn count + 1.

Before Patrolling something (called the Bod):
	if the Freshness of the Bod is:
		-- Fresh: now the Drive of the Bod is 80;
		-- DayOld: now the Drive of the Bod is 60;
		-- Stale: now the Drive of the Bod is 40;
		-- Rotted: now the Drive of the Bod is 20;
		-- Immoble: now the Drive of the Bod is 0.
		
After Patrolling something (called the Bod):
	if the Bod is Following:
		if the location of the Bod is not the location of the Player:
			now the Bod is Targeted;
			now the Destination of the Bod is the location of the Player.
		
After opening a door (called D):
	repeat with zombie running through walkers in the back side of D:
		now the zombie is Targeted;
		now the Destination of the zombie is front side of D.
		
After going through a door:
	repeat with zombie running through walker in room:
		now the zombie is Following.
		
Section 4 - Actions

Include Facing by Emily Short.

Part 2 - The World

When play begins:
	mention doors.

Chapter 1 - The Hospital

Harrison Memorial Hospital is a Region.

The Hospital Room is a room.  A Hospital Bed is a bed in the Hospital Room.

The player is on the Hospital Bed.  The player is reclining.

The Hospital Room Door is a door.  It is west of the Hospital Room and east of Hallway1.

Hallway1 is a room.

The Walker1 is a walker in Hallway1.  The Walker2 is a walker in Hallway1.  Walker1 is Rotted.

Hallway2 is a room. Hallway2 is north of Hallway1.

Hallway3 is a room. Hallway3 is north of Hallway2.

Hallway4 is a room. Hallway4 is west of Hallway3.

Hallway5 is a room. Hallway5 is west of Hallway4.

Hallway6 is a room. Hallway6 is south of Hallway5.

Hallway7 is a room.  Hallway7 is south of Hallway6.