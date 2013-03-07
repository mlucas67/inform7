"The Walking Dead - Days Gone By" by Marshall Lucas

The story genre is "Apocalyptic and Post-Apocalyptic Fiction".  The release number is 1.  The story headline is "The Walking Dead - Days Gone By".  The story description is "You groggily awaken to the sight of your best friend Shane bringing you flowers.  You recall the incident that put you here, in the hospital, when you were . . . what, what is that?  You fully awaken in your empty hospital room.  A small boquet of dying flowers is on the stand next to your bed.  You try to call the nurse, but no one answers.  The only thing you know for certain at the moment is that your are alive and your name is 'Rick Grimes.'  Aside from that, everything is quite foggy and it is eerily quiet."  The story creation year is 2013.

Release along with a solution, source text, a website.

Index map with room-shape set to "square" and room-size set to 60 and room-name-size set to 9 and room-name-length set to 13 and route-thickness set to 15 and room-outline set to off and map-outline set to off and route-colour set to "White" and room-colour set to "White" and font set to "Trebuchet-MS-Regular" and EPS file.

Include Locksmith by Emily Short.

Include Exit Lister by Gavin Lambert.

Use full-length room descriptions, American dialect, no scoring, and the serial comma. Use memory economy. Use MAX_SYMBOLS of 7000. 

Part 1 - Adjustments to the World Model

Chapter 1 - Modifying Existing Kinds

Include Plurality by Emily Short.

The printed name of the player is "Rick Grimes".

Section 1 - Doors

Instead of attacking a closed door: say "[The noun] reverberates but does not open."

Understand "knock on [something]" or "knock [something]" as attacking.  Understand the commands "bang" and "tap" and "rap" as "knock".

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

A thing has a text called odor.

A room has a text called odor.

The block smelling rule is not listed in the check smelling rulebook.

The last carry out smelling rule:
	say "[if the odor of the noun is not empty][the noun] smells like [the odor of the noun][paragraph break][otherwise]You smell nothing unexpected.[end if]".
	
Report someone smelling:
	say "[The person asked] smells [the noun]".

Instead of smelling in the presence of a walker:
	say "It smells like rotting flesh in here".

Section 6 - Vehicles

Include Rideable Vehicles by Graham Nelson.

Section 7 - Clothes

Instead of wearing a thing (called the NewThing) when the player is wearing a thing (called the OldThing):
	say "You have to take off the [the OldThing] before putting on the [the NewThing]."
	
Section 8 - Player

Instead of examining the player:
	say "You are [the printed name of the player].  You are wearing [list of things worn by the player]."

Chapter 2 - New Kinds

Include Postures by Emily Short.

Section 1 - Objects

A bed is a kind of supporter.  A bed is usually enterable.  Every bed allows seated and reclining.  A bed is usually reclining.

A television is a kind of device.

After switching on the television:
	say "Nothing happens."

Section 2 - Doors

Section 3 - Walkers

Include Patrollers by Michael Callaghan

Freshness is a kind of value.  The Freshnesses are Fresh, DayOld, Stale, Rotted and Immobile.

A walker is a kind of Patroller.  A walker is usually Aimless.  Reporting is Collective.  The StartTurn of a walker is 1.   A walker has a Freshness.  A walker is usually DayOld.  The odor of a walker is usually "rotting flesh." The Drive of a walker is usually 60.  The description of a walker is usually "[printed name of the noun] (walker)"

A roamer is a kind of walker.  A roamer is usually Aimless.  A roamer is usually On Patrol.

A lurker is a kind of walker.  A lurker is usually Off Patrol.

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
		-- Immobile: 
			now the Drive of the Bod is 0; 
			now the Bod is Off Patrol;
			stop the action.
		
After Patrolling something (called the Bod):
	if the Bod is Following:
		if the location of the Bod is not the location of the Player:
			now the Bod is Targeted;
			now the Destination of the Bod is the location of the Player.
		
After opening a door (called D):
	repeat with zombie running through walkers in the back side of D:
		now the zombie is Targeted;
		now the Destination of the zombie is front side of D.
		
After going:
	try looking;
	repeat with zombie running through walkers in room:
		now the zombie is Following;
		now the zombie is On Patrol.
		
Section 4 - People

A nurse is a kind of person.

Section 5 - Clothes

Section 6 - Actions

Include Facing by Emily Short.

Chapter 3 - New Verbs

Calling is an action applying to one thing.

Understand "call [someone]" as calling.

After calling a nurse:
	say "Nothing happens.";
	stop the action.

Understand "look out [something]" as examining.

Part 2 - The World

When play begins:
	mention doors.

Chapter 1 - The Hospital

After printing the banner text, say "[paragraph break][story description][paragraph break]".

Harrison Memorial Hospital is a Region.

The Hospital Room is a room in Harrison Memorial Hospital.  A Hospital Bed is a bed in the Hospital Room.

The player is on the Hospital Bed.  The player is reclining.  The player is wearing a Hospital Robe and a pair of Boxer Shorts.

The TV is a television in the Hospital Room.

The Window is a backdrop.  It is in the Hospital Room.  The initial appearance of the window is "Sunlight and fresh air stream in from the open window."  The description of the window is "You can see a good portion of the small town of Cynthiana, Kentucky, where you serve as Deputy Sheriff."

The Hospital Room Door is a door.  It is west of the Hospital Room and east of Hallway1.

Hallway1 is a room in Harrison Memorial Hospital.  The printed name of Hallway1 is "Hallway".  Hallway1 is west of the Hospital Room Door.

The Walker1 is a lurker in Hallway1.  The Walker2 is a roamer in Hallway1.  Walker1 is Rotted.

Hallway2 is a room in Harrison Memorial Hospital.  The printed name of Hallway2 is "Hallway". Hallway2 is north of Hallway1.

Hallway3 is a room in Harrison Memorial Hospital.  The printed name of Hallway3 is "Hallway". Hallway3 is north of Hallway2.

The Cafeteria Door is a locked door.  It is north of Hallway3 and south of the Hospital Cafeteria.  "On the cafeteria door are hastily painted words."

Instead of examining the Cafeteria Door:
	say "Someone has chained the doors shut and painted the words 'Do not open! Dead inside!' on the front of it."
	
Before opening the Cafeteria Door:
	say "As you reach for the door a decayed looking arm shoots out to try and grab you from between the double doors.  You stumble backwards, startled, just in time.  'What is going on here?' you wonder."

Hospital Cafeteria is a room in Harrison Memorial Hospital.  The Hospital Cafeteria is north of the Cafeteria Door.  

Top Stairwell Door is a door.  It is west of Hallway3 and east of the Top of the Stairwell.  The printed name of Top Stairwell Door is "Stairwell Door".

Top of the Stairwell is a room.  It is west of the Top Stairwell Door and up from Bottom of the Stairwell.

Bottom of the Stairwell is a room.  It is down from Top of the Stairwell and south of the Bottom Stairwell Door.  The printed name of Bottom Stairwell Door is "Stairwell Door".

Bottom Stairwell Door is a door.  It is north of the Bottom of the Stairwell and south of CynthianaRoom1.

Chapter 2 - Cynthiana, Kentucky

CynthianaRoom1 is a room.  The printed name of CynthianaRoom1 is "Millersburg Pike".  CynthianaRoom1 is southeast of CynthianaRoom2.

A rideable vehicle called a Bicycle is in CynthianaRoom1.

A walker called the Dead Bicycle Rider is in CynthianaRoom1.  The Dead Bicycle Rider is immobile.  The Dead Bicycle Rider is Off Patrol.

CynthianaRoom2 is a room.  The printed name of CynthianaRoom2 is "E. Pine St & Highland Ave".  CynthianaRoom2 is southeast of CynthianaRoom7, northwest of CynthianaRoom1, northeast of CynthianaRoom3.
CynthianaRoom3 is a room.  The printed name of CynthianaRoom3 is "E. Bridge St & Highland Ave".  CynthianaRoom3 is southwest of CynthianaRoom2, southeast of CynthianaRoom8.
CynthianaRoom4 is a room.  The printed name of CynthianaRoom4 is "Oddville Pike & Cs 1060".  CynthianaRoom4 is northwest of CynthianaRoom5, northeast of CynthianaRoom9.
CynthianaRoom5 is a room.  The printed name of CynthianaRoom5 is "Wilson Ave & Cs 1060".  CynthianaRoom5 is north of CynthianaRoom6, east of CynthianaRoom10, southeast of CynthianaRoom4.
CynthianaRoom6 is a room.  The printed name of CynthianaRoom6 is "E. Pleasant St & N. Elmarch Ave".  CynthianaRoom6 is south of CynthianaRoom5, north of CynthianaRoom7, east of CynthianaRoom14.
CynthianaRoom7 is a room.  The printed name of CynthianaRoom7 is "E. Pike St & N. Elmarch Ave".  CynthianaRoom7 is south of CynthianaRoom6, north of CynthianaRoom8, southeast of CynthianaRoom19, northwest of CynthianaRoom2.
CynthianaRoom8 is a room.  The printed name of CynthianaRoom8 is "E. Bridge St & N. Elmarch Ave".  CynthianaRoom8 is south of CynthianaRoom7, southeast of CynthianaRoom20, northwest of CynthianaRoom3.
CynthianaRoom9 is a room.  The printed name of CynthianaRoom9 is "Oddville Pike & Marshall Ave".  CynthianaRoom9 is north of CynthianaRoom10, southwest of CynthianaRoom4, northeast of CynthianaRoom11.
CynthianaRoom10 is a room.  The printed name of CynthianaRoom10 is "Wilson Ave & Marshall Ave".  CynthianaRoom10 is south of CynthianaRoom9, west of CynthianaRoom5, east of CynthianaRoom12.
CynthianaRoom11 is a room.  The printed name of CynthianaRoom11 is "Oddville Pike & Vine St".  CynthianaRoom11 is north of CynthianaRoom12, east of CynthianaRoom15, southwest of CynthianaRoom9.
CynthianaRoom12 is a room.  The printed name of CynthianaRoom12 is "Wilson Ave & Vine St".  CynthianaRoom12 is south of CynthianaRoom11, west of CynthianaRoom10, east of CynthianaRoom13.
CynthianaRoom13 is a room.  The printed name of CynthianaRoom13 is "Wilson Ave & St. Clair St".  CynthianaRoom13 is north of CynthianaRoom14, west of CynthianaRoom12, east of CynthianaRoom16.
CynthianaRoom14 is a room.  The printed name of CynthianaRoom14 is "E. Pleasant St & St. Clair St".  CynthianaRoom14 is south of CynthianaRoom13, west of CynthianaRoom6, east of CynthianaRoom18.
CynthianaRoom15 is a room.  The printed name of CynthianaRoom15 is "Oddville Pike & Miller St".  CynthianaRoom15 is north of CynthianaRoom16, west of CynthianaRoom11, southeast of CynthianaRoom21, northeast of CynthianaRoom22.
CynthianaRoom16 is a room.  The printed name of CynthianaRoom16 is "Wilson Ave & Miller St".  CynthianaRoom16 is south of CynthianaRoom15, north of CynthianaRoom17, west of CynthianaRoom13, northeast of CynthianaRoom27.
CynthianaRoom17 is a room.  The printed name of CynthianaRoom17 is "Bull Dog Alley & N. Miller St".  CynthianaRoom17 is south of CynthianaRoom16, north of CynthianaRoom18, east of CynthianaRoom28.
CynthianaRoom18 is a room.  The printed name of CynthianaRoom18 is "E. Pleasant St & N. Miller St".  CynthianaRoom18 is south of CynthianaRoom17, north of CynthianaRoom19, west of CynthianaRoom14, east of CynthianaRoom29.
CynthianaRoom19 is a room.  The printed name of CynthianaRoom19 is "E. Pike St & S. Miller St".  CynthianaRoom19 is south of CynthianaRoom18, north of CynthianaRoom20, east of CynthianaRoom23, northwest of CynthianaRoom7.
CynthianaRoom20 is a room.  The printed name of CynthianaRoom20 is "E. Bridge St & S. Miller St".  CynthianaRoom20 is south of CynthianaRoom19, east of CynthianaRoom24, northwest of CynthianaRoom8.
CynthianaRoom21 is a room.  The printed name of CynthianaRoom21 is "E. Pearl St & Reynolds Ave".  CynthianaRoom21 is north of CynthianaRoom22, northwest of CynthianaRoom15, northeast of CynthianaRoom25.
CynthianaRoom22 is a room.  The printed name of CynthianaRoom22 is "Oddville Pike & Reynolds Ave".  CynthianaRoom22 is south of CynthianaRoom21, southwest of CynthianaRoom15, northeast of CynthianaRoom26.
CynthianaRoom23 is a room.  The printed name of CynthianaRoom23 is "E. Pike St & Clifton Rd".  CynthianaRoom23 is north of CynthianaRoom24, west of CynthianaRoom19, east of CynthianaRoom30.
CynthianaRoom24 is a room.  The printed name of CynthianaRoom24 is "Co Rd 2358 & Clifton Rd".  CynthianaRoom24 is south of CynthianaRoom23, west of CynthianaRoom20, east of CynthianaRoom31.
CynthianaRoom25 is a room.  The printed name of CynthianaRoom25 is "E. Pearl St & Church St".  CynthianaRoom25 is north of CynthianaRoom26, southwest of CynthianaRoom21.
CynthianaRoom26 is a room.  The printed name of CynthianaRoom26 is "Oddville Pike & Church St".  CynthianaRoom26 is south of CynthianaRoom25, north of CynthianaRoom27, southwest of CynthianaRoom22.
CynthianaRoom27 is a room.  The printed name of CynthianaRoom27 is "Wilson Ave & Church St".  CynthianaRoom27 is south of CynthianaRoom26, north of CynthianaRoom28, southwest of CynthianaRoom16.
CynthianaRoom28 is a room.  The printed name of CynthianaRoom28 is "Bull Dog Alley & Church St".  CynthianaRoom28 is south of CynthianaRoom27, north of CynthianaRoom29, west of CynthianaRoom17.
CynthianaRoom29 is a room.  The printed name of CynthianaRoom29 is "E. Pleasant St & Church St".  CynthianaRoom29 is south of CynthianaRoom28, north of CynthianaRoom30, west of CynthianaRoom18.
CynthianaRoom30 is a room.  The printed name of CynthianaRoom30 is "E. Pike St & S. Church St".  CynthianaRoom30 is south of CynthianaRoom29, north of CynthianaRoom31, west of CynthianaRoom23.
CynthianaRoom31 is a room.  The printed name of CynthianaRoom31 is "Co Rd 2358 & S. Church St".  CynthianaRoom31 is south of CynthianaRoom30, west of CynthianaRoom24.
