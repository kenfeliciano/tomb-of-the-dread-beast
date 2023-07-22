"Tomb of the Dread Beast" by Ken Feliciano

Part 1 - Kinds, values, and such

Use American dialect, brief room descriptions, and the serial comma. 
An animal can be alive or dead. An animal is usually alive.

Diagnosing is an action applying to one visible thing. Understand "diagnose [something]" as diagnosing. 

Check diagnosing: 
	if the noun is not a person, say "Only people can have diagnoses." instead. 

Carry out diagnosing: 
	if the noun is sickly kobold:
		say "(You diagnose the sickly kobold)[line break]";
		say "He does not look well, you're not a doctor, but even you can see there is something dreadfully wrong. The kobold is lying on the floor, eyes fluttering, shaking more than what could be considered normal. Besides that, the veins on his neck and face are dark. Is he poisoned, diseased, cursed, or just in a state of unwellness?";
	if the noun is well kobold:
		say "(You diagnose the kobold)[line break]";
		say "He looks pretty good from what you can tell. His eyes seem alert, he shakes as much as a kobold normally shakes. The veins on his face are almost gone. The ones on his neck are disappearing but are still visible.";
	if the noun is dead kobold:
		say "(You diagnose the corpse)[line break]";
		say "We'll, you're no doctor but lack of pulse and breathing seems to rule out life. You're no medical examiner either but, based on recent actions taken by the kobold and well, you, you killed it with that random vial you thrust into his hands.";
	otherwise:
		say "Not a doctor. You would certainly harm without some more knowledge.";

Part 2 - Testing descriptions - Not for release 

When play begins (this is the run property checks at the start of play rule): 
	say "The following items have no description:[line break][items without description]"

When play begins (this is the run room checks at the start of play rule): 			
	say "The following rooms have no description:[line break][rooms without description]"

To say items without description:
	repeat with item running through things: 
		if description of the item is "": 
			say "  [item][line break]"

To say rooms without description:
	repeat with place running through rooms:
		if description of the place is "":
			say "  [place][line break]"

Chapter 1 - The Player

Instead of examining the player:
	try diagnosing the player;

Instead of diagnosing the player: 
	if a random chance of 1 in 4 succeeds, say "(You diagnose yourself)[line break]";
	if location is Tomb Entrance:
		if dedication level is 0:
			say "You are very worried, looking back over your shoulder at where you wish you still were. You search the area for alternatives.";
		if dedication level is 1:
			say "Looking down, your legs are a bit wobbly.";
		if dedication level is 2:
			say "Sweat is pouring down into your eyes causing you tear up. You aren't crying! It's sweat!";
		if dedication level is 3:
			say "You are now dedicated to the task at hand. Your legs are no longer wobbly. A real change is apparent from when you started.";
	otherwise:
		[open locker, then open PRIVATE door]
		if self-knowledge level is 1:
			say "You feel oppressivness surrounding you everywhere. You have almost no confidence you can do what you were tasked to do.";
		if self-knowledge level is 2:
			say "You still know so little about what happened here. The place still gives you chills. What if you left? How bad could it be?";
		if self-knowledge level is 3:
			say "You haven't jumped at your own shadow in quite some time! Perhaps there is hope.";
		if self-knowledge level is 4:
			say "As you start to acclimate to this place, your thoughts are not *spinning* out of control so much. You are seeing patterns, numbers, systems that only you understand. You've got some confidence my friend!";
		if self-knowledge level is 5:
			say "You're starting to feel at home here. A little bit more work on the walls, a bit of sweeping and who knows?! It's like you can open anything in this place!";
		if self-knowledge level is 6:
			say "You are in control. This is your house (well, your peoples' new home). You are their monarch. Whatever is going on here, it is yours to solve, or die...or die...or, run away? No, you'll die trying! Such a change--YOU!";

Chapter 2 - The Kobold

A man called sickly kobold is in The Kitchen. "A kobold lies on the ground here looking quite sickly." The description is "He is sick, he's a kobold".

A man called well kobold is nowhere. "A spry kobold is here. When he catches your eye, he smiles." The description is "He is feeling much better."

A man called dead kobold is nowhere. "A kobold, recently alive, lies on the ground here." The description is "He's dead. He's an ex-kobold".

Instead of examining the sickly kobold:
	try diagnosing the sickly kobold instead;	
	
Instead of examining the well kobold:
	try diagnosing the well kobold instead;
	
Instead of examining the dead kobold:
	try diagnosing the dead kobold instead;
	
Instead of giving the pan to the sickly kobold:
	say "The kobold is much too weak from sickness to hold onto the frying pan."
	
Instead of asking the sickly kobold about anything:
	say "The kobold just stares at you."
	
Instead of asking the well kobold about anything:
	say "He points to his throat and grimaces."
	
Instead of giving the pan to the well kobold:
	say "The kobold takes the frying pan from you, flips it around and gives it a quick spin like he's used it before. He then holds it up like a weapon and nods.";
	rule succeeds;
	
Instead of giving the red vial to the sickly kobold:
	say "The kobold drinks as much of the liquid as he can. Almost immediately he looks better. He gives you a toothy smile and tries to speak but apparently he is not 100% just yet.";
	now the sickly kobold is nowhere;
	now the red vial is nowhere;
	now the well kobold is in The Kitchen.
	
Instead of giving the brown vial to the sickly kobold:
	say "The kobold brings the vial to his mouth but catches a whiff of something and gives it back to you even sadder than before.";
	rule fails;
	
Instead of giving the green vial to the sickly kobold:
	say "The kobold drinks as much of the liquid as he can. Almost immediately he looks better. He starts to give you a toothy smile when he starts convulsing. His eyes roll up in his head as he passes out and stops breathing. If this is a two kobold job, you're out of luck. And it is, so... sorry, you should probably wake up from this nightmare and start over (RESTART) or give up (QUIT).";
	now the sickly kobold is nowhere;
	now the green vial is nowhere;
	now the dead kobold is in The Kitchen.
	
Instead of giving the blue vial to the sickly kobold:
	say "The kobold drinks as much of the liquid as he can. A sour look comes over his face. The dark veins seem darker and he seems to be shaking more. His breath seems uneven. He looks at you sadly, eyes barely open.";
	now the blue vial is nowhere;
	
Persuasion rule for asking well kobold to try going:
	if location is Kitchen:
		persuasion succeeds;
	otherwise:
		say "The kobold shakes his head and stays put.";
		persuasion fails.

Chapter 3 - The World

[The starting room!]
The player is in Tomb Entrance.

Part 2 - Introduction

Tomb Entrance is a room. "For many years, the tomb of the Dread Beast remained sealed. Until recently, when it was squatted by a legion of kobolds. Now, the entrance stands before you! You stand at the end of the road you took from the final basecamp. You left while it was still dark. That camp is now a peaceful stroll to the south. The sun is just now rising over the mountains to the east. The mountain range continues northward. In the mountainside, a short flight of stone steps stand before you, leading to a large stone door, [if stone door is open]open wide, at the entrance to the tomb[otherwise]sealing the entrance[end if]. To the west is a forested valley."

Lush Valley is west of Tomb Entrance. "The valley extends from the mountain range to the north all the way to the horizon. To the south, you see another mountain range. There is plenty trees for lumber with pastures for farming."
Start of Mountain Paths is east of Tomb Entrance.  "The mountain paths are numerous here. Many paths are shortcuts to established kobold settlements in your domain. Others head off to other settlements in the massive Kobold Alliance."

Mountain range is scenery in Tomb Entrance. "The mountains that surround you are very majestic. This is a deep valley in the corner of two great mountain ranges. The peaks are covered with snow even though the weather is balmy." Understand "mountains" and "snow" and "peak" and "peaks" as Mountain range.

Steps are scenery in Tomb Entrance. "The stone steps appear old but freshly swept. There is a faint layer of dust on them but they seem quite safe although their destination looks forboding."

Road is scenery in Tomb Entrance. "The road, such that it is, is a well worn track coming from the south. You are at the end of it. Yes, the end of the road."

The Road Back is south of Tomb Entrance. "The road back to your camp begins here. It is well maintained and invites one to stroll down it without a care in the world."

test tomb with "x mountains / x steps / x dust / x road / x tomb"

Part 3 - Getting into the tomb

The dedication level is a number that varies.

Alternative is a kind of value. The alternatives are untried, went, and available. An alternative  is usually untried.
The forest tried is an alternative that varies.
The mountain tried is an alternative that varies.
The road tried is an alternative that varies.

[todo: perhaps a custom action for a developer that can jump to endgame?]
[These get set when the beast is dead so player can explore if they wish]
[Forest tried is available.
Mountain tried is available.
Road tried is available.]

Instead of going north from Tomb Entrance when stone door is closed:
	say "There is no way to get in but through the door, which is closed."

Instead of going north from Tomb Entrance when dedication level is less than 3:
	say "The dim light from the tomb does not look inviting. Wisps of dust are blown about the entrance. There must be another option to walking up those steps.";
	
Instead of going west from Tomb Entrance when forest tried is untried:
	now forest tried is went;
	say "The lush valley is enticing but it is not your destiny to walk amongst the trees this day.";	
	increment the dedication level;
	try diagnosing the player;

Instead of going west from Tomb Entrance when forest tried is went:
	say "You are still the same person, expect the same result. You cannot walk amongst the trees right now!";

Instead of going east from Tomb Entrance when mountain tried is untried:
	now mountain tried is went;
	say "The harsh mountain environment does have numerous paths winding about its many peaks and valleys. Those ways are known to you already.";
	increment the dedication level;
	try diagnosing the player;
	
Instead of going east from Tomb Entrance when mountain tried is went:
	say "You know all about that area. There is nothing new for you to see there.";
	
Instead of going south from Tomb Entrance when road tried is untried:
	now road tried is went;
	say "This is certainly a much more inviting path at the moment but you did just come from that direction. You know there is safety there but for how long? You cannot return just yet. 'Examine youself! Is this who you want to be?' you cry out.";
	increment the dedication level;
	try diagnosing the player;
	
Instead of going south from Tomb Entrance when road tried is went:
	say "You decide to happily retrace your steps from the night. In the back of your mind, you do realize that it was rather stupid to hike all this way to the tomb just to leave the task unfinished but you don't care. The road is rather long and you've been up all night so you stop for a bit in a cozy spot off the side of the road. You fall asleep instantly. Your dreams are rather on the boring side. As you sleep, it gets dark and you of course are eaten by a grue. Not that you knew this being dead and all, but the grue and it's cohorts head down the peaceful path to your people. They too are eaten up...by grues.";
	end the story;
	
Instead of waiting in the Tomb Entrance when dedication level is 3:
	say "Though you feel a sense of dread, you know what you must do. You look upon the tomb again with a new sense of purpose."
	
Instead of waiting in the Tomb Entrance when dedication level less than 3:
	say "Time passes. Your people die. You really should figure this out!"

Instead of going north from Tomb Entrance when dedication level is 3 and Foyer is unvisited:
	say "There really is no other choice. This is your destiny. You will forego safety and make peace with the unknown.";
	increment the self-knowledge level;
	move the player to Foyer;
	try diagnosing the player;

Part 4 - Exploration

The self-knowledge level is a number that varies.

Chapter 1 - Inhabited Region

The large stone door is north of Tomb Entrance and south of Foyer. The large stone door is an open door and scenery. "A thick stone door of seemingly ponderous weight. [if open]It stands open[otherwise]It is closed[end if]."
Before opening the stone door:
	say "With almost no effort, you are able to move what appears to be a massive door. It opens.";
	rule succeeds;
Before closing the stone door:
	say "Amazingly, the massive door seems to almost move of its own volition at your touch. It closes.";
	rule succeeds;

Section 1 - Simple areas

The Foyer is a room. "This is a brief transition between the entrance and the Grand Hall to the north. The foyer is as wide as the hall with the stone floor heading to the east and west. [if stone door is open]The doorway south leads back to the[end if] [if visited]entrance to the tomb[otherwise]end of the road--er, entrance to the tomb, yeah, that's it[end if]."

Barracks is west of Foyer. "This appears to be what will be a large barracks. Construction seems mostly complete but the room is mostly bare. The stone floor continues from the Foyer to the east."

[Reinforced Locker]
A reinforced locker is a locked and closed container in Barracks. The description is "The locker is about as wide as you can reach with your hands. It is made of metal with reinforced bands. This was made to be secure! On the front is a set of dials that can *spin* to create a multitude of numbers."
The reinforced locker has a number called the current combination. The current combination is usually 0.

Understand "dial" and "dials" and "bands" as the reinforced locker.

Instead of opening the locker, say "The locker is securely locked. Someone will have to spin the dials to the correct combination before it opens."

[enter combination number - if self-aware enough, as long as number is between 0 and 9999, the locker opens]
Spinning it to is an action applying to one thing and one number. Check spinning it to: if the noun is not the reinforced locker, say "[The noun] does not spin." instead. 
Report spinning it to: say "Click! and nothing else happens."

Understand "spin [something] to [a number]" as spinning it to.

After spinning the reinforced locker to [a number]: 
	if self-knowledge level is less than 4:
		say "There are many, many combinations possible! Each dial consists of 10 numbers. You do the math and decide that there are more than 20 possibilities. You do some more thinking and wonder if it might be more like 100,000! There's no way you know what the combination is, right?![line break]You feel like if you try some random combination, you'll be wrong and break something so you step away.";
	if self-knowledge level is at least 4:
		say "You quickly set the dials knowing full well it is the only number out of the...over one thousand...ten thousand! Yes, the ten thousand possible combinations it could be. You hear a soft click.";
		now the reinforced locker is open; 
		say "The reinforced locker springs up a bit to open, revealing [a list of things in the reinforced locker]."

Instead of taking locker:
	say "It is much too heavy to move."
Instead of pushing or pulling locker:
	try taking locker.

[Eldritch Tome]
The has-clue is a truth state that varies. The has-clue is false.

An eldritch tome is in the reinforced locker. The description is "This is a thick book, with black covers and spine. The spine is reinforced with silver bracings. Runic characters in silver ink followed by a simple circular symbol adorn the cover. Markers have been placed into the book at certain pages. Flipping through the tome at random looking for information seems futile."

The spine is part of the eldritch tome. Understand "bracing" and "bracings" as spine. The description is "Reinforced with silver bracings, this is a sturdy spine. I bet you could open it all the way and lay it flat without breaking this spine. This book is meant to last!";

The characters are part of the eldritch tome. Understand "runic" and "runic characters" as characters. The description is "You look over the characters on the cover but while you can appreciate the artistry in the flowing script, you don't read this language."

The circular symbol is part of the eldritch tome. The description is "The circle is separated into four sections, each with a different color: green, red, purple, and blue. Each color appears in its own teardrop pattern that flows into the next. These colors seem to match some of the marks placed into the books."

After examining circular symbol:
	now has-clue is true.

Markers are part of the eldritch tome. The description is "Colorful bookmarks are stuck into the tome in various places. Many colors are represented but never more than once."

The green section is a part of the eldritch tome. The description is "[if has-clue is false]You cannot just randomly jump...oh, I guess you can get lucky once in a while. [end if]The tome opens to a diagram: a symbol of poison or acid next to a crude picture of a nasty looking creature. A patient with dark lines on their skin is being given a drout from a red bottle by a doctor."
The red section is a part of the eldritch tome. The description is "[if has-clue is false]You cannot just randomly jump...oh, I guess you can get lucky once in a while. [end if]The red section opens to an artistic drawing of stone walls, pillars, rather looking like the Grand Hall with a beam of red light shining down in the middle."
The purple section is a part of the eldritch tome. The description is "[if has-clue is false]You cannot just randomly jump...oh, I guess you can get lucky once in a while. [end if]A depiction of a kobold entering what appears to be the secret chamber you found. Above their head is a regal crown decorated with exquistely designed with various gears and sprockets. You feel a sense of power looking at this! 'I did this!' you shout. 'I am this!'"
The blue section is part of the eldritch tome. The description is "[if has-clue is false]You cannot just randomly jump...oh, I guess you can get lucky once in a while. [end if]A page with multiple panels: a well lit room, a figure places an unknown device on the floor, the figure leaves, pitch black except for a lit doorway with the figure running out."
The wrong section is part of the eldritch tome. The description is "You cannot just randomly jump to any section. There is too much here and it can't all be relevant. There must be a method to this."

After examining purple section:
	increment the self-knowledge level;
	try diagnosing the player;

[All the colors that are not correct, the more I get here, the better!]
[Good: green, red, purple, blue]
Understand "black section" as wrong section.
Understand "white section" as wrong section.
Understand "orange section" as wrong section.
Understand "yellow section" as wrong section.
Understand "teal section" as wrong section.
Understand "indigo section" as wrong section.
Understand "mauve section" as wrong section.
Understand "aqua section" as wrong section.
Understand "lime section" as wrong section.
Understand "brown section" as wrong section.
Understand "pink section" as wrong section.
Understand "gray section" as wrong section.
Understand "magenta section" as wrong section.
Understand "maroon section" as wrong section.
Understand "olive section" as wrong section.
Understand "silver section" as wrong section.
Understand "cyan section" as wrong section.
Understand "violet section" as wrong section.
Understand "beige section" as wrong section.
Understand "gold section" as wrong section.

Section 2 - Mess and Kitchen

The Mess is east of Foyer. "The formation of tables and chairs on the stone floor make this seem like it was going to be a mess hall. Wrapping around the north and east side walls is a kitchen area. A large room opens up to the south."

Some tables are scenery in the Mess. "The tables are bare, utilitarian, and mostly clean. You see a thin layer of dust, perhaps from construction work going on, but it wouldn't take much to get them ready for use."
Some chairs are scenery in the Mess. "The chairs are utilitarian, like the tables, and luckily for your astetics match. There isn't much to say about them. They are chairs. You've seen chairs, you know chairs. These all look good and sturdy enough."

Instead of pushing or pulling some tables:
	say "The tables are placed precisely where they should go and should not be moved.";
	
Instead of pushing or pulling some chairs:
	say "The chairs have been placed with military precision to be exactly the perfect location for each seat. Who is in charge of this place?";

The Kitchen is north of The Mess. "Kobolds have started to work on the kitchen area but haven't gotten far."
A frying pan is here. "A heavy duty frying pan is here." The description is "This is a heavy duty cast iron frying pan. It looks like it has seen use but is in good repair. The chef who owns it must treat it with respect."
The Kitchen is east of The Mess.

Before going east from the Mess when Kitchen is unvisited:
	increment the self-knowledge level;
	try diagnosing the player;

Before going north from the Mess when Kitchen is unvisited:
	increment the self-knowledge level;
	try diagnosing the player;

Section 3 - Conference Room

Conference Room is south of The Mess. "A large conference table takes up most of the space in this room. There is a newly installed doorway to the west [if private door is closed]with a closed door marked PRIVATE[end if]. To the east is an ancient mouth-shaped double door, which is [if mouth-shaped door is closed]closed[otherwise]open[end if]."

The conference table is in Conference Room. "[if conference table is askew]The table has been moved so it is angled akwardly in the room[otherwise]The table is centered in the middle of the room[end if]." The description is "A massive project to create. The table is made of equisite woods from the local area. The craftsmanship is beyond compare."
The conference table can be askew. It is not askew.

Instead of taking the conference table:
	say "It is much too heavy to lift but it does seem you can push or pull it a bit."

Instead of pushing or pulling the conference table:
	if conference table is askew:
		now the conference table is not askew;
		say "You give it all your strength and...the table is now centered in the room leaving ample room around it.";
	otherwise:
		now the conference table is askew;
		say "You give it all your strength and...the table is now askew, making it difficult to traverse the room.";

A private door is west of Conference Room and east of Private Office. It is a closed door. It is scenery. The description is "The door is stamped very officially with the word PRIVATE on it."
Instead of opening the PRIVATE door:
	if self-knowledge level is less than 4:
		say "You place your hand on the handle, ready to enter, but it says PRIVATE. Certainly you should respect that…right?";
	if self-knowledge level is at least 5:
		say "You assertively open the door knowing that no one but you would dare enter this room without leave.";
		now the private door is open;

Before going a direction (called way) in Conference Room when conference table is askew:		
	if way is west or way is east:
		say "(slowly squeezing past the conference table)";
	continue the action;

The mouth-shaped double door is a door. It is east of Conference Room and west of Altar. It is lockable and locked. It is scenery. The description is "Slightly rounded corners with some artfully placed stones to make it appear as if it is a mouth. There is ornate keyhole in the middle of it." The ornate key unlocks the mouth-shaped double door. 

Chapter 2 - The Grand Hall

A room called South End of Grand Hall is north of Foyer. "The end of the hall closest to the tomb entrance shows a lot of usage. Kobold footprints, judging from their size and shape, head in all directions. Pillars support the high ceiling throughout the hall. The walls are made of mortared stone. The hall continues to the north. There are doorways to the west and east."

There is a room called West Side of Grand Hall. "At this point, the you see where kobolds have been at work, cleaning? The hall continues north. The midpoint of the hall is west of you."
The pile of debris is here. Understand "dirt" and "grime" as debris. "Old dirt and grime from the seams in the walls, most likely removed by kobolds during their work." The description is "It's mostly dirt and grime."
The worn rock is here. The description is "This rock fits in your hand nicely and it has some heft to it. It doesn't appear to have come from this wall though."

[todo: randomly throw the rock in some adjoining room]
Instead of dropping the rock:
	if location is North End of Grand Hall and Secret Chamber is mapped north of North End of Grand Hall:
		say "You throw the rock deftly so it lands on the shelf in the secret chamber. You hear whirling gears above you coming from the south.";
		now the rock is on the shelf-like depression;
		now the red shaft of light is in Midpoint of the Grand Hall;
	otherwise:
		let destination be a random adjacent room;
		if destination is a room, move the rock to destination;
		let the way be the best route from the location to the destination;
		say "You toss the rock and it sails away to the [way].";
		
After putting rock on shelf-like depression:
	say "You hear whirling gears above you coming from the south.";
	now the red shaft of light is in Midpoint of the Grand Hall;
	
After taking rock:
	now the red shaft of light is nowhere;

There is a room called Midpoint of the Grand Hall. "The hall continues to the north."

A red shaft of light is nowhere. "A shaft of light coming through a red window above is blazing with intensitity." The description is "The light pulses with energy. You can't even get near it because you know, you aren't in this room."
[todo: do all the time things! Ugh Different levels of intensity, including nothing for night. Straight up sunlight is just fine. It should be not good to walk into the light.]
[todo: when the red shaft of light is here, all the rooms adjacent should sense the heat]

There is a room called East Side of Grand Hall. "Something written on the wall here... graffiti maybe? The hall continues north. The midpoint of the hall is east of you."

Graffiti is scenery in East Side of Grand Hall. "'Our monarch knows how and where to spi...' and the rest is scrubbed clean."
Understand "writing" as graffiti.

After examining graffiti for the first time:
	increment the self-knowledge level;
	try diagnosing the player;
	
every turn when player is in Midpoint of the Grand Hall:
	if red shaft of light is in location:
		end the story finally saying "Before you can do much beyond admiring the color of red coming from above, you are cooked like an ant from a magnifying glass."
		
every turn when player is in hall area:
	if red shaft of light is in Midpoint of the Grand Hall:
		say "You feel intense and foreboding heat coming from the [best route from the location to Midpoint of the Grand Hall]."

test trap with "s / e / w / n / n / nw / get rock / n / x pillar / press switch / throw rock"

Section 1 - Grand Hall Map Connections

North of South End of Grand Hall is Midpoint of the Grand Hall.
Northwest of South End of Grand Hall is West Side of Grand Hall.
Northeast of South End of Grand Hall is East Side of Grand Hall.
South of West Side of Grand Hall is South End of Grand Hall.
South of East Side of Grand Hall is South End of Grand Hall.
North of West Side of Grand Hall is North End of Grand Hall.
Southwest of North End of Grand Hall is West Side of Grand Hall.
Southeast of North End of Grand Hall is East Side of Grand Hall.
South of North End of Grand Hall is Midpoint of the Grand Hall.
North of East Side of Grand Hall is North End of Grand Hall.
North of Midpoint of the Grand Hall is North End of Grand Hall.
East of West Side of Grand Hall is Midpoint of the Grand Hall.
West of East Side of Grand Hall is Midpoint of the Grand Hall.

Section 2 - Hidden room

The hidden switch is a device. The description is "The switch looks just like any other stone on any other pillar, except, it does not fit in with the pattern of the rest of the pillar's construction. It appears as a rectangular rock embedded inside the decidedly mostly unrecatangular rocks that make up the pillar."
Secret Chamber is a room. "This alcove has barely enough room for you to be in. There's a small shelf-like depression in the wall."
South of Secret Chamber is North End of Grand Hall.
The shelf-like depression is a supporter in Secret Chamber. It is scenery. Understand "shelf" as the shelf-like depression. "Set into the wall at your waist height is a depression set into the wall."
[shelf needs a description]

There is a room called North End of Grand Hall. "The north end is much the same. Same walls, same pillars, same footprints... It does appear different in subtle ways[if Secret Chamber is mapped north of North End of Grand Hall]. An opening to the north reveals a secret chamber[end if]."
North of North End of Grand Hall is nowhere.
A false wall is scenery in North End of Grand Hall. "[if nowhere is mapped north of North End of Grand Hall]The wall here has a crack slightly above your eye level.[otherwise]The wall has opened up!"
A crack is scenery in North End of Grand Hall. "[if nowhere is mapped north of North End of Grand Hall]The crack is quite small. It slopes downwards to the left a bit and is jagged. It's not really all that special and you probably wouldn't have noticed it if it were not right where you could see it."

Before going north from North End of Grand Hall when Secret Chamber is unvisited:
	increment the self-knowledge level;
	try diagnosing the player;
	
A special pillar is scenery in North End of Grand Hall. "One of the pillars here has a stone that is very subtlely out of place. Its only now visible upon your close examination. It looks like a hidden switch!"
After examining the pillar:
	now the hidden switch is in North End of Grand Hall;
	
Instead of examining pillars in North End of Grand Hall:
	try examining special pillar instead.

Instead of pushing the pillar:
	try pushing the hidden switch instead.

Before pushing the hidden switch:
	say "*click* You sense movement nearby.";
	if nowhere is mapped north of North End of Grand Hall, now Secret Chamber is mapped north of North End of Grand Hall;
	otherwise now nowhere is mapped north of North End of Grand Hall;
	rule succeeds;

Chapter 3 - Off limits areas

After deciding the scope of the player when the location is dark: 
	if blackout sprocket is in location:
		place blackout sprocket in scope.

There is a room called Private Office. "A cozy area for monarchs to think big thoughts in peace."
The presedential desk is an openable closed container in the Private Office. It is fixed in place. "An extra presedential desk takes up a large portion of the room." The description is "The desk is oversized with small and large drawers facing the exalted one that sits there."
Drawers are part of the presedential desk. Understand "drawer" as drawers. The description is "The drawers are of various sizes, each with some sort of handle to open them with."
Instead of opening drawers, try opening desk instead.
	
The blackout sprocket is inside the presedential desk. "You can somehow sense the presence and exact location of a blackout sprocket here." The description is "This technological marvel is baffling to look upon. You read the inscription and it says 'INSTRUCTIONS: place on ground for a good night's sleep.'"

[If it is in a dark room: You can somehow sense the presensence and exact location of a blackout sprocket here: and make it in scope]
		
[Why is it looking before the room is dark?]
Instead of dropping the blackout sprocket:
	say "You place the blackout sprocket onto the ground here and...";
	now the location is dark;
	move blackout sprocket to location;

Rule for printing the announcement of darkness:
	say "It is pitch dark but you can see light from [exit list].";
	say "Even though it is too dark to see, you can somehow still sense the presence and exact location of a blackout sprocket here.";		

After taking the blackout sprocket:
	if location is dark:
		now the location is not dark;
		say "Picking up the blackout sprocket quickly restores light to the [location].";
		
Rule for printing the description of a dark room:
	say "It is pitch dark, and you can't see a thing[if blackout sprocket is in location] but, even though it is too dark to see, you can somehow sense the presence and exact location of a blackout sprocket here[end if]." 

An executive office chair is here. It is fixed in place and a supporter. It is enterable. "An executive office chair sits behind the desk." The description is "This chair has multiple casters that allow it to effortlessly move in any direction. The upholstery is exquisite. The arms are perfectly positioned for your arms. The head rest is designed to cup your head in a gentle embrace."

Instead of taking, pushing, or pulling the executive office chair, say "While the chair could move (smoothly and flawlessly), the desk is too big for this space and there is no room anywhere to move it. Kobolds aren't known for their interior design skills it seems."
 
A visitor chair is here. It is fixed in place and a supporter. It is enterable. "A small, short, uncomfortable looking visitor chair sits in front of the desk." The description is "The chair has enough cushion to know it is a cushion but it was not designed for comfort. The back rest is hard metal with tiny imperfections that would not be comfortable to rest against. There are no arm rests. Whoever sits in here, is not meant to sit long."

Instead of taking, pushing, or pulling the visitor chair, say "The chair is bolted in place. Paranoia? Captive audience?".

A liquor cart is here.
[liquor cart can be pushed from room to room, but for why?]
[descriptions: desk, expensive office chair, shorter visitor chair, liquor cart]
[todo: flavor when sitting in chairs]
The liquor cart is a supporter. The description is "Gold poles with ebony shelves. An important part of any Kobold Alliance office."
A vial is a kind of thing. The description of a vial is usually "The liquid inside [the noun] is colorless and odorless. It seems like water."

A green vial is a vial on the liquor cart.
A blue vial is a vial on the liquor cart.
A red vial is a vial on the liquor cart.
A brown vial is a vial on the liquor cart. The description is "The liquid inside the brown vial is colorless, with some particles suspended in it. It smells herbal."

[This list should be a comma delimited list]
[used by sprocket]
To say exit list: 
	let place be location; 
	let exits be a list of directions;
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, add way to exits;
	say "[exits with definite articles]";		

[By this time, player should start realizing they are the leader of the Kobolds...now]
A shattered display case is in Private Office. The description is "Some construction gone awry most likely. This will have to be repaired!"

The ornate key is in the shattered display case. The description is "This is ancient looking key perhaps found by one of your workers. Perhaps the same one that destroyed your display case?"

Altar is a room. "A stone slab sits in the middle of this room. Dried and not so dried blood trails down the sides and into a recessed drain next to it. Above, a stone outcropping, [if lever is switched on]discharging a massive amount of water[otherwise]slowly dripping water[end if], is connected to a lever set in the wall. Around the north and east edges of the room are stone platforms with what appear to be wrapped corpses. To the south a wide archway looks into a larger room."
A stone slab, a recessed drain, a stone outcropping, a lever, stone platforms, the archway, and wrapped corpses are scenery in Altar.

Water is scenery in Altar. The description is "[if lever is switched on]Water is gushing out of the stone outcropping on the slab and from there onto the floor[otherwise]Water slowly drips out of the stone outcropping[end if]."

The description of the stone slab is "This is your standard issue 'examination' table used by kobolds for 'researching' other species."
The description of the recessed drain is "The drain is small and can handle a modest amount of outflow efficiently. Bits of blood and small pieces of biological material are in the grate."
The description of the stone outcropping is "High up on one wall there is a stone outcropping with a channel in the middle."
The lever is a device.
The description of the lever is "A well maintained lever is set into the floor. It is at a perfect height to grip and pull."
The description of the stone platforms is "The platforms are akin to build-in shelves but instead of books or storage, there are wrapped corpses. Is it input or output?".
The description of the wrapped corpses is "Each corpse is tightly wrapped in a light gray cloth. They are a few different shapes. None of them seem to be kobolds." Understand "wrapped corpse" and "corpse" as wrapped corpses.
The description of the archway is "The archway is made up of polished stone."

Instead of pulling the lever:
	say "Opening up the sluice gate causes water to gush out of the stone outcropping. It flows over the stone slab, perhaps slightly cleaning it a bit, and onto the floor. The massive amount of water and prior gunk on the floor make the floor slippery and slow to walk upon.";
	now lever is switched on;
	
Instead of pushing the lever:
	say "You close up the sluice gate and water flow decreases to an annoying drip. Well, it would be if you were trying to sleep! The excess water on the floor exits the drain and the floor is less slippery and easy to walk upon again.";
	now lever is switched off;
	
Before going somewhere in Altar when lever is switched on:
	say "(slowly, and carefully, wading across the slippery water logged floor)";
	continue the action;

Instead of taking the wrapped corpses:
	say "Best to leave them be."

Instead of going to Grand Tomb the first time, say "Before you step through the doorway, you catch a smell that stops you in your tracks. 'Death is in there!' you think to yourself. Whatever has died in there cannot be saved, but you can SAVE yourself by just turning around and leaving. If you do continue onwards, you have been warned that you may not be able to survive. 'SAVE myself?'" instead.

Grand Tomb is south of Altar. "Stone cauldrons line either side of this room, their fires long since extinguished. At the south end is a raised platform. On that platform is a solitary stone coffin."
A kobold corpses are here. "Kobold corpses in various states of decay are here." The description is "Some kobolds look freshly dead but others, it seems, have been dead for months." Understand "kobold corpse" and "corpse" as kobold corpses.

Instead of taking the kobold corpses:
	say "If you tried to pick this poor creature up, it would probably disinitegrate in your hands. You leave it alone."

A coffin is a closed openable container in Grand Tomb. The description is "The coffin is made of heavy stone, perhaps granite? 'You're not a geologist!' It looks quite heavy duty."
Instead of opening the coffin:
	say "The lid resists your considerable strength!"

The Dread Beast is an animal. The Dread Beast is alive. The Dread Beast is inside the coffin. The description is "Very tall, very scary. The beast has a hairy mane, large fangs with dried blood on them, viscious claws dripping with green ichor...you don't want to get near it."

[todo: You'll need something, not really an object, to open the lid, no, the dread beast opens it!]

Chapter 5 - Regions 

The hall area is a region.
South End of Grand Hall, West Side of Grand Hall, East Side of Grand Hall, Midpoint of the Grand Hall, and North End of Grand Hall are in the hall area.

The inhabited area is a region.
The hall area is in the inhabited area.
Foyer, Barracks, The Mess, The Kitchen, Conference Room, and Private Office are in the inhabited area.

Chapter 6 - Backdrops

Kobold footprints are a backdrop in the inhabited area. "Small, with the tell-tale tread pattern of most kobolds. [if location is Foyer]Many of the footprints seem to be headed out of the tomb.[else if location is Midpoint of the Grand Hall]Actually...what looked like footprints are merely black smudges.[else if location is North End of Grand Hall]Only one or two sets of footprints are in this section.[end if]";

Mortared Stone Walls are a backdrop in the hall area. "The stones are mostly of equal size, fit together well with mortar. The craftmanship looks serviceable. [if location is North End of Grand Hall] The wall here has a crack slightly above your eye level.[end if]"

Pillars are a backdrop in the hall area. "The pillars are mostly functional but do have a subtle pattern to them. You're no architect but they look serviceable and not unpleasing to the eye. They show wear but seem sturdy."

Stone floor is a backdrop in the inhabited area. "A level floor made up of irregular stones. There is a slight layer of dust."

Dust is a backdrop in the inhabited area. Dust is a backdrop in the Tomb Entrance. Description is "The dust appears to be the same consticency as the area around the tomb. After begin swept away, it returns until swept again."

Part 5 - The Battle

Part 6 - After Battle

Before going west from Tomb Entrance when forest tried is available:
	say "With a sense of peace, you head off into the valley.";
	
Before going east from Tomb Entrance when mountain tried is available:
	say "You scamper up to where the mountain paths begin to make sure all is well."
	
Before going south from Tomb Entrance when road tried is available:
	say "'Off we go!' you say to your new friend. The road heads to the encampment where you started your journey. Your tale will be celebrated when you arrive!";
	end the story finally;
	
Instead of going nowhere from the Lush Valley:
	say "You'll have plenty of time to explore your new lands after you report back!"
	
Instead of going nowhere from the Start of Mountain Paths:
	say "Everything looks fine here, you better head back!"

test enter with "s / e / w / n"