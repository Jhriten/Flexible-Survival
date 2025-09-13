Version 1 of Lockdown by Jhriten begins here.

"Adds a series of micro focused encounters"

Section 1 - Shroom Events

Table of GameEventIDs (continued)
Object	Name
Lockdown	"Lockdown"

Lockdown is a situation.
ResolveFunction of Lockdown is "[ResolveEvent Lockdown]".
Sarea of Lockdown is "Forest".

when play begins:
    add Lockdown to BadSpots of MaleList;

LockdownFound is a number that varies. LockdownFound is usually 0

to say ResolveEvent Lockdown:
    if LockdownFound is 0:
        say "Wondering through the woods you're surprised when the overgrown grass ahead is suddenly buried under a layer of solid grey stone. A flat slab of firm ground that extends towards a pair of metal doors placed in front of a mound of dirt and grass. It's another bunker and based on the lack of vines around the stone and scatterings of supplies at the front, you must imagine it's been recently occupied." 
        say "With the doors currently closed and a few goods hidden under cloth near the rising ground, the temptation to approach and loot is too much to ignore. You step onto the stone and walk towards the entryway, remaining alert for any traps but finding the area clear. There's no obstacle on your path to the supplies, and with a tug you pull the cloth covering the create. Its contents revealed or rather lack of them. An empty box greeting you, already looted and emptied."
        WaitLineBreak;
        say "'Survivor... there?'"
        say "A voice calls to you from the set of double doors only a few steps away. The tone of the words sounded friendly, though it was hard to tell their intent. Both due to not seeing whoever said this, and because of the nature of their voice. The words spoken slowly, with great effect made for every syllable with deep grunts between. Maybe they just have a poor understanding of the language…"
        say "Should you reply to this man? ([link]Y[as]y[end link]) or try to sneak away? ([link]N[as]n[end link])"
        if Player consents:
            LineBreak;
            say "Calling back to the man, you confirm that you’re both a survivor and quite sane. Still you keep your distance, ready to run just in case the doors open and something tries to attack. Though nothing of the sort happens, the doors remaining closed as the stranger responds in the same slowed speech."
            say "'Mmm. Good, survivor good. But, you need… stay away. Don’t catch.'"
            say "Don’t catch? Whatever has gone on behind those doors seems to have taken a big hit on this man, and now you’re more concerned he’s keeping something in rather than trying to keep others out. Still, his warning is clear despite your new curiosity to understand just what is going on."
            say "Should you get closer despite the risk, ([link]Y[as]y[end link]) or leave? ([link]N[as]n[end link])"
            if Player consents:
                LineBreak;
                say "Whoever is speaking to you doesn’t sound threatening, well not intentionally at least. Yes his deep voice and primitive tongue does give you the image of a burly beast that could tear you to shreds, but all he has offered you is concerned warnings. Taking the chance to make a new friend, you take a step closer and ask him who he is."
                say "'You brave. I Colten, soldier. Military team here. With me in bunker.'"
                say "Military? The supplies at the front suddenly make more sense, whatever squad found this place must have been moving things in. Yet you’ve only just grasped a basic understanding on the situation, and you ask him the more important question, what’s going on."
                WaitLineBreak;
                say "'Long story. Long. We scouted city. Captain found object. Big stone, wet but big! He took, brought back here. Then… he change, others change, I change.'"
                say "You’d have hoped that the military would be wiser to the nanite infection plaguing the city, but even they can make simple mistakes. Colten takes a moment before continuing, a loud banging heard from inside and the door shaking but the actual reassured by the soldier as he blurts out ‘Getting comfy.’ Though the words are followed by a few groans, and the sound of something wet being rubbed."
                WaitLineBreak;
                say "'He gave order. No one get in. No one get out. Can’t spread. Need other squads help.'"
                say "Growls are heard alongside grumbles, Colten’s words quicker and yet it’s anything but easier to understand. The words mixing in with the primitive bellows, blurred between the escalating pleasure that he feels as his dim mind imagines the hopeful future."
                say "'They find us. Help us. Cure us… or… mmm orrrr'"
                WaitLineBreak;
                say "You take a step back, ready to flee if necessary as the soldier’s voice fills with a mix of lust and dominance. A predator, needing to find someone, claim someone. The banging on the doors only getting louder as the man tries to finish his story. The steel threatening to give way to whatever impressive frame this man holds but thankfully remaining locked and in place."
                say "'We find them! Make them like us! Make them big, hot!'"
                say "Colten roars as he gives one final slam, and you spot something leaking from under the door. Cum, slipping under a fist sized crack and washing out onto the smooth slab of stone. A thick and fresh wave of spunk that spreads out onto the ground, then slows as its creator takes deep breaths and recomposes."
                WaitLineBreak;
                say "'See? Dangerous. You leave.'"
                say "You hear the soldiers heavy footsteps fade further into the bunker. Leaving you to pure silence outside this makeshift prison. Some part of you hopes you’ve be able to help this unfortunate soul out, at least visit to help him retain whatever little humanity he has. Yet another side of you fears the danger, the potent cum still wet on the ground a forever reminder of how far gone the men inside are. Then ever further, your stare at that small crack under the door… maybe it would be possible to even pay the poor man a visit."
                now LockdownFound is 1;
                now resolution of Lockdown is 1;
            else:
            LineBreak;
            say "His warning was clear, and you don’t need any unnecessary risks with all the mayhem going on in the city. You wish the man the best and head off."
            now Lockdown is resolved;
        else:
        LineBreak;
        say "Considering the danger of it all, you remain silent and listen for anything further from behind the doors. No more words spoken by the man, only a deep sigh which is followed by primitive grunts and groans. You use the noise to make your escape, and leave him to whatever fate the city has given him."
        now Lockdown is resolved;
    else:
    LineBreak;
        say "Test"
        WaitLineBreak;
	say "What do you want to do?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk to Colten";
	now sortorder entry is 1;
	now description entry is "Check in on the soldier?";
	[]
	if glowing mushroom is owned:
		choose a blank row in table of fucking options;
		now title entry is "Eat one of the mushrooms and visit Colten";
		now sortorder entry is 2;
		now description entry is "Pay the man a visit?";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Just leave[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Talk to Colten"):
					say "[LockdownChat]";
				if (nam is "Eat one of the mushrooms and visit Colten"):
					say "[LockdownVisit]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "Not in the mood you return to the forest.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say LockdownChat:
    say "test"
    wait for any key;

to say LockdownVisit:
    say "test"
    now Lockdown is resolved