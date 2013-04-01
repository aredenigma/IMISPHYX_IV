import controlP5.*;

ControlP5 cp5;

ControlWindow controlWindow;

Textarea characterOne;
Textarea characterTwo;
Textarea speechBubbleOne;
Textarea speechBubbleTwo;
Textarea characterAboutOne;
Textarea characterAboutTwo;

PImage bg;

int myColor = color(255);
int myColor2 = color(255);

int c1, c2, c3, c4;

float n, n1;

PFont title = createFont("A La Nage", 180, true);
PFont headings = createFont("opificio", 18, true);
PFont smalltext = createFont("superhelio_regular", 8, true);

int lastTime = 0;
int lastTime2 = 2500;
int getCount = 0;
int getCount2 = 0; 

String[] joyceLines = new String[7];
String[] danny1Lines = new String[3];
String[] danny2Lines = new String[2];
String[] ei1Lines = new String[3];
String[] ei2Lines = new String[3];
String[] kasimireianthe1Lines = new String[11];
String[] kasimireianthe2Lines = new String[10];
String[] fadehale1Lines = new String[13];
String[] fadehale2Lines = new String[12];
String[] aricei1Lines = new String[9];
String[] aricei2Lines = new String[10];
String[] dannyjoyce1Lines = new String[17];
String[] dannyjoyce2Lines = new String[24];


void setup() {
  size(1200, 800);
  noStroke();
  lastTime = millis();

  bg = loadImage("vial.png");

  joyceLines[0] = "}} Ooooh!"; 
  joyceLines[1] = "}} Ooooh!\n\n}} Amazing!";
  joyceLines[2] = "}} Ooooh!\n\n}} Amazing!\n\n}} Am I being refracted?"; 
  joyceLines[3] = "}} Ooooh!\n\n}} Amazing!\n\n}} Am I being refracted?\n\n}} This is everything I was hoping for!";
  joyceLines[4] = "}} Ooooh!\n\n}} Amazing!\n\n}} Am I being refracted?\n\n}} This is everything I was hoping for!\n\n}} Are you me? Are you inverse me?!";
  joyceLines[5] = "}} Ooooh!\n\n}} Amazing!\n\n}} Am I being refracted?\n\n}} This is everything I was hoping for!\n\n}} Are you me? Are you inverse me?!\n\n}} There are so many questions I have for me!";
  joyceLines[6] = "}} Ooooh!\n\n}} Amazing!\n\n}} Am I being refracted?\n\n}} This is everything I was hoping for!\n\n}} Are you me? Are you inverse me?!\n\n}} There are so many questions I have for me!\n\n}} But I'm not going to answer am I. Oh, typical.";

  danny1Lines[0] ="}} No. No, this can't be happening...";
  danny1Lines[1] ="}} No. No, this can't be happening...\n\n}} No. He wasn't supposed to be right.";
  danny1Lines[2] ="}} No. No, this can't be happening...\n\n}} No. He wasn't supposed to be right.\n\n}} It was just another one of his stories. A Story! Godsdamnit!";

  danny2Lines[0] ="}} Relax, Danny. It just means Hale was right about everything.";
  danny2Lines[1] ="}} Relax, Danny. It just means Hale was right about everything.\n\n}} But I wanted him to be right. I always hoped he was right.";

  ei1Lines[0] ="}} I am Ei.";
  ei1Lines[1] = ei1Lines[0]+"\n\n}} Am I Ei?";
  ei1Lines[2] = ei1Lines[1]+"\n\n}} Ei am not anyone. I never was. Please go away.";

  ei2Lines[0] ="}} Ei am I?";
  ei2Lines[1] = ei2Lines[0]+"\n\n}} Is Ei I?";
  ei2Lines[2] = ei2Lines[1]+"\n\n}} Please!";

  kasimireianthe2Lines[0] ="}} The lights on the wharf are amber gold—";
  kasimireianthe2Lines[1] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…";
  kasimireianthe2Lines[2] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…";
  kasimireianthe2Lines[3] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]";
  kasimireianthe2Lines[4] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]\n\n}} Your lead was correct… The lights—";
  kasimireianthe2Lines[5] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]\n\n}} Your lead was correct… The lights—\n\n}} His face… his voice… both of them, that lead the field—and hers… that leads a charmed life…";
  kasimireianthe2Lines[6] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]\n\n}} Your lead was correct… The lights—\n\n}} His face… his voice… both of them, that lead the field—and hers… that leads a charmed life…\n\n}} Yes. Yes, and there was one other, a fat man. The bartender. Jacoby was trying to buy something off him—but the bartender wouldn’t take his money. The girl just laughed. She looked so happy… ";
  kasimireianthe2Lines[7] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]\n\n}} Your lead was correct… The lights—\n\n}} His face… his voice… both of them, that lead the field—and hers… that leads a charmed life…\n\n}} Yes. Yes, and there was one other, a fat man. The bartender. Jacoby was trying to buy something off him—but the bartender wouldn’t take his money. The girl just laughed. She looked so happy…\n\n}} Your lead is solid, but up the garden path… the garden path! And you can’t see because you don’t keep the lights on… the leads are cut… ";  
  kasimireianthe2Lines[8] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]\n\n}} Your lead was correct… The lights—\n\n}} His face… his voice… both of them, that lead the field—and hers… that leads a charmed life…\n\n}} Yes. Yes, and there was one other, a fat man. The bartender. Jacoby was trying to buy something off him—but the bartender wouldn’t take his money. The girl just laughed. She looked so happy…\n\n}} Your lead is solid, but up the garden path… the garden path! And you can’t see because you don’t keep the lights on… the leads are cut…\n\n}} I only lead the horses to water… You make them drink. You always do—you have that magic…you compell me…!";
  kasimireianthe2Lines[9] ="}} The lights on the wharf are amber gold—\n\n}} He used to keep those lights on in this very office—sometimes all through the night, when I would watch him for you…You don’t keep this office lit—even though it’s all yours. All yours, sir! It’s all dark… even when the lights go on: a dark light…\n\n}} —a vile light, though you try so hard to be him, you can’t keep the light on…\n\n}} […]\n\n}} Your lead was correct… The lights—\n\n}} His face… his voice… both of them, that lead the field—and hers… that leads a charmed life…\n\n}} Yes. Yes, and there was one other, a fat man. The bartender. Jacoby was trying to buy something off him—but the bartender wouldn’t take his money. The girl just laughed. She looked so happy…\n\n}} Your lead is solid, but up the garden path… the garden path! And you can’t see because you don’t keep the lights on… the leads are cut…\n\n}} I only lead the horses to water… You make them drink. You always do—you have that magic…you compell me…!\n\n}} And when he’s dead? What then? Will I repell you when you’re him? Will you love me?";

  kasimireianthe1Lines[0] ="}} Was he there?";
  kasimireianthe1Lines[1] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.";
  kasimireianthe1Lines[2] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.";
  kasimireianthe1Lines[3] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!";
  kasimireianthe1Lines[4] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?";
  kasimireianthe1Lines[5] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?\n\n}} I don’t want to hear about your fucking lights! I want to hear confirmation—a face! A voice! HIS voice. Tell me!";
  kasimireianthe1Lines[6] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?\n\n}} I don’t want to hear about your fucking lights! I want to hear confirmation—a face! A voice! HIS voice. Tell me!\n\n}} Oh, fucking christ, you and your worthless idioms! Jacoby and the girl. You saw them, in the bar on the wharf, like Kiefer’s puppet said?";
  kasimireianthe1Lines[7] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?\n\n}} I don’t want to hear about your fucking lights! I want to hear confirmation—a face! A voice! HIS voice. Tell me!\n\n}} Oh, fucking christ, you and your worthless idioms! Jacoby and the girl. You saw them, in the bar on the wharf, like Kiefer’s puppet said?\n\n}} And then? What else? Anything else?";
  kasimireianthe1Lines[8] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?\n\n}} I don’t want to hear about your fucking lights! I want to hear confirmation—a face! A voice! HIS voice. Tell me!\n\n}} Oh, fucking christ, you and your worthless idioms! Jacoby and the girl. You saw them, in the bar on the wharf, like Kiefer’s puppet said?\n\n}} And then? What else? Anything else?\n\n}} I swear to god, if you’ve led me up some garden path, you useless bitch…";
  kasimireianthe1Lines[9] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?\n\n}} I don’t want to hear about your fucking lights! I want to hear confirmation—a face! A voice! HIS voice. Tell me!\n\n}} Oh, fucking christ, you and your worthless idioms! Jacoby and the girl. You saw them, in the bar on the wharf, like Kiefer’s puppet said?\n\n}} And then? What else? Anything else?\n\n}} I swear to god, if you’ve led me up some garden path, you useless bitch…\n\n}} You repell me…";
  kasimireianthe1Lines[10] ="}} Was he there?\n\n}} I don’t have time for your blather. Tell me what I want to know.\n\n}} Shut up.\n\n}} I said: Shut. Up!\n\n}} Was the lead solid or was it not?\n\n}} I don’t want to hear about your fucking lights! I want to hear confirmation—a face! A voice! HIS voice. Tell me!\n\n}} Oh, fucking christ, you and your worthless idioms! Jacoby and the girl. You saw them, in the bar on the wharf, like Kiefer’s puppet said?\n\n}} And then? What else? Anything else?\n\n}} I swear to god, if you’ve led me up some garden path, you useless bitch…\n\n}} You repell me…\n\n}} Always. Now get out of my office.";

  fadehale1Lines[0] = "}} Faedylas Gallaghière with The Panorama, sir.";
  fadehale1Lines[1] = fadehale1Lines[0]+"\n\n}} I just wanted to ask you a few questions about how the operation against the Promise of Eris went yesterday.";
  fadehale1Lines[2] = fadehale1Lines[1]+"\n\n}} Well, the media has been giving a lot of attention to these sorts of separatist groups for some time now—would it be right to estimate that there are a lot of groups like this in the city?";
  fadehale1Lines[3] = fadehale1Lines[2]+"\n\n}} Well, The Promise of Eris was a fairly large cell, wouldn’t you say?";
  fadehale1Lines[4] = fadehale1Lines[3]+"\n\n}} And you’d been tracking them for awhile?";  
  fadehale1Lines[5] = fadehale1Lines[4]+"\n\n}} And now that you’ve raided their base of operations, would it be fair to say that the city’s a safer place?";
  fadehale1Lines[6] = fadehale1Lines[5]+"\n\n}} To be frank, usually your type are the ones feeding us the agenda—forgive me if I felt rather caged in my purpose.";
  fadehale1Lines[7] = fadehale1Lines[6]+"\n\n}} Page 6, sir, and yes, I do, actually. I was told you lost an officer in yesterday’s mission…";
  fadehale1Lines[8] = fadehale1Lines[7]+"\n\n}} Do you feel like such a loss was worth the gain to community safety?";
  fadehale1Lines[9] = fadehale1Lines[8]+"\n\n}} Was it an honorable death, then?";
  fadehale1Lines[10] = fadehale1Lines[9]+"\n\n}} It was just a question. The community likes to know about the sacrifices of heroes…You know, it gives them something to dream about— ";
  fadehale1Lines[11] = fadehale1Lines[10]+"\n\n}}  Sir, I don’t think you have the right to—";
  fadehale1Lines[12] = fadehale1Lines[11]+"\n\n}} [...]";

  fadehale2Lines[0] = "}} Martlet Joyce Jacoby, sir. How can I help you?";
  fadehale2Lines[1] = fadehale2Lines[0]+"\n\n}} Right… So ask them…";
  fadehale2Lines[2] = fadehale2Lines[1]+"\n\n}} Oh, some. They’re not all so big—some are only a handful of people. But there are dozens of groups that could be categorized as splinter cells… Of course, only the big ones are of any real concern to the community.";
  fadehale2Lines[3] = fadehale2Lines[2]+"\n\n}} I would, but not massive. There are bigger ones out there.";
  fadehale2Lines[4] = fadehale2Lines[3]+"\n\n}} Yes we have.";  
  fadehale2Lines[5] = fadehale2Lines[4]+"\n\n}} You know, as a reporter for a paper that claims not to have an agenda, you are phenomenal at putting words in people’s mouths. Are you going to ask me any open-ended questions? Or do you already have the story written?";
  fadehale2Lines[6] = fadehale2Lines[5]+"\n\n}}  […] Do you have anything else to ask me? Otherwise, I can just agree that the city’s much safer thanks to the deeds and sacrifices of my terribly honorable men, and you can go write your little celebratory column for page 10, and be out of here.";
  fadehale2Lines[7] = fadehale2Lines[6]+"\n\n}} Still not a question, and yeah, I did. Why do you want to know?";
  fadehale2Lines[8] = fadehale2Lines[7]+"\n\n}} He was doing his job. The world isn’t kind sometimes. He knew that and so do the rest of us.";
  fadehale2Lines[9] = fadehale2Lines[8]+"\n\n}} What kind of question is that?";
  fadehale2Lines[10] = fadehale2Lines[9]+"\n\n}} You know nothing about heroes and nothing about dreaming! So don’t walk in here in your little bohemian coat pretending to ask me questions for a newspaper, when you’re really just looking for an excuse to tear apart the people who do dare to believe in anything.";
  fadehale2Lines[11] = fadehale2Lines[10]+"\n\n}}  Shut up and ask me any other questions you have before my next appointment.";

  aricei1Lines[0] = "}} Do you want me to turn the light back on?";
  aricei1Lines[1] = aricei1Lines[0]+"\n\n}} Yes.";  
  aricei1Lines[2] = aricei1Lines[1]+"\n\n}} […]";
  aricei1Lines[3] = aricei1Lines[2]+"\n\n}} You helped me.";  
  aricei1Lines[4] = aricei1Lines[3]+"\n\n}} They were. They were, and I was coming for them.";  
  aricei1Lines[5] = aricei1Lines[4]+"\n\n}} I won’t tell you how to feel about this.";  
  aricei1Lines[6] = aricei1Lines[5]+"\n\n}} Because it’s easier to see how things were when you can’t see how they are?";  
  aricei1Lines[7] = aricei1Lines[6]+"\n\n}} […] I’m—";  
  aricei1Lines[8] = aricei1Lines[7]+"\n\n}} I guess it’s safer that way.";  

  aricei2Lines[0] = "}} Can’t you see them all here with us anyway?";
  aricei2Lines[1] = aricei2Lines[0]+"\n\n}} So can Ei…";  
  aricei2Lines[2] = aricei2Lines[1]+"\n\n}} You killed them all…";
  aricei2Lines[3] = aricei2Lines[2]+"\n\n}} They were here for me. They weren’t coming for you.";  
  aricei2Lines[4] = aricei2Lines[3]+"\n\n}} I don’t want to cry. Am I supposed to cry?";  
  aricei2Lines[5] = aricei2Lines[4]+"\n\n}} You know, I like the darkness.";  
  aricei2Lines[6] = aricei2Lines[5]+"\n\n}} Because if you look hard enough, you start seeing how they could be. I’m not used to thinking about things like that--not used to how they could be…";  
  aricei2Lines[7] = aricei2Lines[6]+"\n\n}} Stop. I don’t want to know your name.";  
  aricei2Lines[8] = aricei2Lines[7]+"\n\n}} If you tell me your name, I can’t sit here and imagine what it could be. And that's what I want to do, right now. Do you understand? Otherwise I would have to think of all the things that you're thinking right now, and you wouldn’t want that for me, would you?";
  aricei2Lines[9] = aricei2Lines[8]+"\n\n}} No, I know you wouldn't.";  

  dannyjoyce1Lines[0] = "}} You know. If Mathander manages to levy those taxes the CIB'll be back solving cases using pen and paper.";
  dannyjoyce1Lines[1] = dannyjoyce1Lines[0]+"\n\n}} Maybe it’s just my wishful thinking then.";
  dannyjoyce1Lines[2] = dannyjoyce1Lines[1]+"\n\n}} Hey, don’t look so skeptical. If we had to patrol this city noir-style with our pocket notebooks and a pack of cigarettes for a few years, you and I would end up running this town.";
  dannyjoyce1Lines[3] = dannyjoyce1Lines[2]+"\n\n}} We wouldn’t have to inhale. It’d just be for the posturing.";
  dannyjoyce1Lines[4] = dannyjoyce1Lines[3]+"\n\n}} I’ll take the fedora.";
  dannyjoyce1Lines[5] = dannyjoyce1Lines[4]+"\n\n}} Not our department.";
  dannyjoyce1Lines[6] = dannyjoyce1Lines[5]+"\n\n}} Fuck no.";
  dannyjoyce1Lines[7] = dannyjoyce1Lines[6]+"\n\n}} Just ‘cause you have a backwards, antique car doesn’t mean—";
  dannyjoyce1Lines[8] = dannyjoyce1Lines[7]+"\n\n}} You need me in shotgun. What’s that supposed t—";
  dannyjoyce1Lines[9] = dannyjoyce1Lines[8]+"\n\n}} So long as I get an actual shotgun in shotgun. Not some pointy stick that you call a harpoon.";
  dannyjoyce1Lines[10] = dannyjoyce1Lines[9]+"\n\n}} So, what then, do we go back home and start writing Mathander an inaugural address?";
  dannyjoyce1Lines[11] = dannyjoyce1Lines[10]+"\n\n}} [...]";
  dannyjoyce1Lines[12] = dannyjoyce1Lines[11]+"\n\n}} … what?!";
  dannyjoyce1Lines[13] = dannyjoyce1Lines[12]+"\n\n}} There is nothing easy about what I think you just said. Nothing!";
  dannyjoyce1Lines[14] = dannyjoyce1Lines[13]+"\n\n}} I know you realize that. So how could you just say it all of a sudden, sipping your damned coffee like you’re telling me you saw a snowflake?!";
  dannyjoyce1Lines[15] = dannyjoyce1Lines[14]+"\n\n}} You sure as hell aren’t.";
  dannyjoyce1Lines[16] = dannyjoyce1Lines[15]+"\n\n}} So finish then!";


  dannyjoyce2Lines[0] = "}} Doubtful. The government will give the CIB all the tech it wants, ‘cause we’ll be the only force large enough to deal with the civil backlash against the rest of his laws.";  
  dannyjoyce2Lines[1] = dannyjoyce2Lines[0]+"\n\n}} You want pen and paper?";
  dannyjoyce2Lines[2] = dannyjoyce2Lines[1]+"\n\n}} I don’t smoke…";
  dannyjoyce2Lines[3] = dannyjoyce2Lines[2]+"\n\n}} I don’t want a fedora. I hate those things.";
  dannyjoyce2Lines[4] = dannyjoyce2Lines[3]+"\n\n}} I don’t want any fuckin’ damsels in distress either. Or femmes fatales, for that matter. No crazy women.";
  dannyjoyce2Lines[5] = dannyjoyce2Lines[4]+"\n\n}} I get to drive.";
  dannyjoyce2Lines[6] = dannyjoyce2Lines[5]+"\n\n}} I’m a much better driver than you.";
  dannyjoyce2Lines[7] = dannyjoyce2Lines[6]+"\n\n}} I need you in shotgun, Hardy.";
  dannyjoyce2Lines[8] = dannyjoyce2Lines[7]+"\n\n}} I’m a better driver and you’re a better shot. It just makes sense. We’ll snag a shiny black Chrysler and rid the town of Imisphyx one speakeasy at a time.";
  dannyjoyce2Lines[9] = dannyjoyce2Lines[8]+"\n\n}} Done.";
  dannyjoyce2Lines[10] = dannyjoyce2Lines[9]+"\n\n}} [...]";
  dannyjoyce2Lines[11] = dannyjoyce2Lines[10]+"\n\n}} I love you.";
  dannyjoyce2Lines[12] = dannyjoyce2Lines[11]+"\n\n}} Hey, easy…";
  dannyjoyce2Lines[13] = dannyjoyce2Lines[12]+"\n\n}} You think I don’t realize that?";
  dannyjoyce2Lines[14] = dannyjoyce2Lines[13]+"\n\n}} Look, Danny, you know I’m not very good at this, so—";
  dannyjoyce2Lines[15] = dannyjoyce2Lines[14]+"\n\n}} Would you let me finish?!";
  dannyjoyce2Lines[16] = dannyjoyce2Lines[15]+"\n\n}} […] The thing is, Hardy, I… I have spent my whole life scared to look at you because every time I do, I see it’s just the two of us against the world. And that’s fucking terrifying—not for what it is, but because I feel the world looking with me. I think it’s one stolen glance away from realizing that we’re the only thing left in its way.";
  dannyjoyce2Lines[17] = dannyjoyce2Lines[16]+"\n\n}} And I have pulled bluff after bluff trying to throw the world off our trail. I pretend to see nothing when I look at you. I call you Hardy so the world won’t hear your name. I feign weakness so the world won’t see how invincible you make me—that when I have you beside me I feel the strength of angelic legions in my blood.";
  dannyjoyce2Lines[18] = dannyjoyce2Lines[17]+"\n\n}} I thought, if I could convince myself, that I could re-stitch reality and no god or devil would ever rip the seams.";
  dannyjoyce2Lines[19] = dannyjoyce2Lines[18]+"\n\n}} But walking down this street just now, the cold cut my lungs, and the entire city seemed empty, like hell broke through to earth first and then froze over—like the prism gods had blown the sky wide open as they left: and every soul on earth save mine had gazed upon it, and every soul had shattered in one blast.";
  dannyjoyce2Lines[20] = dannyjoyce2Lines[19]+"\n\n}} And I started thinking about just letting myself fall away. I don’t have a whole lot in this world, Hardy. I’ve never had much to keep me here. It would’ve been so quick, and so easy to just abandon myself to the sky.";
  dannyjoyce2Lines[21] = dannyjoyce2Lines[20]+"\n\n}} But then you sighed into your coffee, and it was the sweetest damned sound, and instead of looking at the sky I looked at you. I actually looked at you, and suddenly I understood that the world hadn’t won, and even if the world ended and another one began, you’d still be right here beside me.";
  dannyjoyce2Lines[22] = dannyjoyce2Lines[21]+"\n\n}} And I realized that I would rather risk letting myself need you so much that I would die without you, than continue watching you slowly die here beside me, while I refuse admit that I love you, Daniel.";
  dannyjoyce2Lines[23] = dannyjoyce2Lines[22]+"\n\n}} … And I thought… I-I guess I thought if I just admitted it freely, just said it in full view of the gods, right here in the glare of this damned white sky, that maybe we could hide ourselves in plain sight and just—";

  cp5 = new ControlP5(this);


  characterOne = cp5.addTextarea("txt3")
    .setPosition(70, 105)
      .setSize(360, 50)
        .setFont(createFont("opificio", 28))
          .setLineHeight(16)
            .setColor(color(57, 74, 86, 180))
              .setColorBackground(color(0, 1))
                .setColorForeground(color(0, 1));
  ;

  characterTwo = cp5.addTextarea("txt4")
    .setPosition(width-390, 105)
      .setSize(360, 50)
        .setFont(createFont("opificio", 28))
          .setLineHeight(16)
            .setColor(color(57, 74, 86, 180))
              .setColorBackground(color(0, 1))
                .setColorForeground(color(0, 1));
  ;

  speechBubbleOne = cp5.addTextarea("txt")
    .setPosition(70, 175)
      .setSize(340, 250)
        .setFont(createFont("Century Gothic", 14))
          .setLineHeight(16)
            .setColor(color(210, 210, 240))
              .setColorBackground(color(0, 1))
                .setColorForeground(color(0, 1))
                  .scroll(1);
  ;

  speechBubbleTwo = cp5.addTextarea("txt2")
    .setPosition(width-390, 175)
      .setSize(340, 250)
        .setFont(createFont("Century Gothic", 14))
          .setLineHeight(16)
            .setColor(color(210, 210, 240))
              .setColorBackground(color(0, 1))
                .setColorForeground(color(0, 1))
                  .scroll(1);
  ;

  characterAboutOne = cp5.addTextarea("txt5")
    .setPosition(125, height-195)
      .setSize(200, 125)
        .setFont(createFont("superhelio_thin", 10, true))
          .setLineHeight(13)
            .setColorBackground(color(0, 220))
              .setColorForeground(color(0, 100))
                .scroll(1);
  ;

  characterAboutTwo = cp5.addTextarea("txt6")
    .setPosition(width-335, height-195)
      .setSize(210, 125)
        .setFont(createFont("superhelio_thin", 10, true))
          .setLineHeight(13)
            .setColorBackground(color(0, 220))
              .setColorForeground(color(0, 100))
                .scroll(1);
  ;

  Group Point = cp5.addGroup("Point")
    .setPosition(20, height-230)
      .setBackgroundHeight(200)
        //       .setBarHeight(20)
        .setColorForeground(color(50, 50, 75, 100))
          .setColorLabel(color(255, 255, 255))
            .setColorBackground(color(50, 50, 75, 60))
              .setBackgroundColor(color(50, 50, 75, 60))
                ;

  Group Counterpoint = cp5.addGroup("Counterpoint")
    .setPosition(width-120, height-230)
      .setBackgroundHeight(200)
        //       .setBarHeight(20)
        .setColorForeground(color(50, 50, 75, 100))
          .setColorLabel(color(255, 255, 255))
            .setColorBackground(color(50, 50, 75, 100))
              .setBackgroundColor(color(50, 50, 75, 100))
                ;

  Group Objects = cp5.addGroup("Objects")
    .setPosition((width/2)-269, height-120)
      .setBackgroundHeight(100)
        .setWidth(528)
          //       .setBarHeight(20)
          .setColorForeground(color(50, 50, 75, 100))
            .setColorLabel(color(255, 255, 255))
              .setColorBackground(color(50, 50, 75, 60))
                .setBackgroundColor(color(50, 50, 75, 60))
                  ;

  cp5.addButton("joyce")
    .setValue(0)
      .setPosition(10, 20)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(200, 25, 25))
              .setColorLabel(color(0, 0, 0))
                .setColorBackground(color(180, 5, 5))
                  .setGroup(Point)
                    ;

  cp5.addButton("faedylas")
    .setValue(100)
      .setPosition(10, 40)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(85, 125, 220))
              .setColorLabel(color(0, 215, 215))
                .setColorBackground(color(65, 105, 200))
                  .setGroup(Point)
                    ;

  cp5.addButton("miyuma")
    .setValue(0)
      .setPosition(10, 60)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(20, 140, 150))
              .setColorLabel(color(104, 204, 57))
                .setColorBackground(color(0, 120, 130))
                  .setGroup(Point)
                    ;

  cp5.addButton("daniel")
    .setValue(100)
      .setPosition(10, 80)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(140, 25, 100))
              .setColorLabel(color(255, 36, 96))
                .setColorBackground(color(120, 5, 80))
                  .setGroup(Point)
                    ;

  cp5.addButton("kasimir")
    .setValue(0)
      .setPosition(10, 120)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(60, 60, 65))
              .setColorLabel(color(180, 180, 180))
                .setColorBackground(color(40, 40, 45))
                  .setGroup(Point)
                    ;

  cp5.addButton("eianthe")
    .setValue(0)
      .setPosition(10, 100)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(105, 20, 184))
              .setColorLabel(color(65, 105, 200))
                .setColorBackground(color(85, 0, 164))
                  .setGroup(Point)
                    ;

  cp5.addButton("aric")
    .setValue(0)
      .setPosition(10, 140)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(40, 40, 40)) 
              .setColorLabel(color(255))
                .setColorBackground(color(0, 0, 0))
                  .setGroup(Point)
                    ;
  cp5.addButton("off")
    .setValue(0)
      .setPosition(10, 160)
        .setSize(40, 19)
          .setColorActive(color(150, 0, 0))
            .setColorForeground(color(255, 255, 255, 150)) 
              .setColorLabel(color(210, 210, 240))
                .setColorBackground(color(0, 0, 0, 150))
                  .setGroup(Point)
                    ;

  cp5.addButton("joyce2")
    .setValue(0)
      .setPosition(10, 20)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(200, 25, 25))
              .setColorLabel(color(0, 0, 0))
                .setColorBackground(color(180, 5, 5))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("faedylas2")
    .setValue(100)
      .setPosition(10, 40)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(85, 125, 220))
              .setColorLabel(color(0, 215, 215))
                .setColorBackground(color(65, 105, 200))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("miyuma2")
    .setValue(0)
      .setPosition(10, 60)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(20, 140, 150))
              .setColorLabel(color(104, 204, 57))
                .setColorBackground(color(0, 120, 130))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("daniel2")
    .setValue(100)
      .setPosition(10, 80)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(140, 25, 100))
              .setColorLabel(color(255, 36, 96))
                .setColorBackground(color(120, 5, 80))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("kasimir2")
    .setValue(0)
      .setPosition(10, 120)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(60, 60, 65))
              .setColorLabel(color(180, 180, 180))
                .setColorBackground(color(40, 40, 45))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("eianthe2")
    .setValue(0)
      .setPosition(10, 100)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(105, 20, 184))
              .setColorLabel(color(65, 105, 200))
                .setColorBackground(color(85, 0, 164))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("aric2")
    .setValue(0)
      .setPosition(10, 140)
        .setSize(80, 19)
          .setColorActive(color(0, 0, 0))
            .setColorForeground(color(40, 40, 40)) 
              .setColorLabel(color(255))
                .setColorBackground(color(0, 0, 0))
                  .setGroup(Counterpoint)
                    ;

  cp5.addButton("off2")
    .setValue(0)
      .setPosition(10, 160)
        .setSize(40, 19)
          .setColorActive(color(150, 0, 0))
            .setColorForeground(color(255, 255, 255, 150)) 
              .setColorLabel(color(210, 210, 240))
                .setColorBackground(color(0, 0, 0, 150))
                  .setGroup(Counterpoint)
                    ;

  PImage[] barettes = {
    loadImage("baretteA.png"), loadImage("baretteB.png"), loadImage("baretteC.png")
    };
  PImage[] ribbons = {
    loadImage("ribbonA.png"), loadImage("ribbonB.png"), loadImage("ribbonC.png")
    };
  PImage[] rings = {
    loadImage("ringA.png"), loadImage("ringB.png"), loadImage("ringC.png")
    };

  PImage[] tags = {
    loadImage("tagdpA.png"), loadImage("tagdpB.png"), loadImage("tagdpC.png")
    };

  PImage[] snowflakes = {
    loadImage("snowflakeA.png"), loadImage("snowflakeB.png"), loadImage("snowflakeC.png")
    };

  PImage[] forcepses = {
    loadImage("forcepsA.png"), loadImage("forcepsB.png"), loadImage("forcepsC.png")
    };

    cp5.addButton("barette")
      .setValue(0)
        .setPosition(10, 10)
          .setImages(barettes)
            .updateSize()
              .setGroup(Objects)
                ;

  cp5.addButton("ribbon")
    .setValue(0)
      .setPosition(112, 10)
        .setImages(ribbons)
          .updateSize()
            .setGroup(Objects)
              ;

  cp5.addButton("ring")
    .setValue(0)
      .setPosition(214, 10)
        .setImages(rings)
          .updateSize()
            .setGroup(Objects)
              ;

  cp5.addButton("tag")
    .setValue(0)
      .setPosition(316, 10)
        .setImages(tags)
          .updateSize()
            .setGroup(Objects)
              ;

  cp5.addButton("snowflake")
    .setValue(0)
      .setPosition(418, 10)
        .setImages(snowflakes)
          .updateSize()
            .setGroup(Objects)
              ;

  cp5.addButton("forceps")
    .setValue(0)
      .setPosition(418, 10)
        .setImages(forcepses)
          .updateSize()
            .setGroup(Objects)
              ;
}

void draw() {
  background (bg);

  //  textFont(smalltext);
  //  fill (45,45,65,180);
  //  textAlign(CENTER);
  //  text ("IT WAS THE AUTHOR’S INTENT TO PROVIDE HEREIN\nA COMPREHENSIVE GUIDE FROM POINT A TO POINT B.\nBUT IN AETHRYN I HAVE HEARD THAT ALL BENDS\nBACK UPON ITSELF, AND THUS IN TRAVELING FROM A TO B\n I FEAR I HAVE BECOME LOST, AS I WAS TOO PROUD\n TO ASK FOR A TOUR FROM THE MAN WHO GUARDED\n THIS PRISMATIC REALM BEFORE HE TOO BECAME\nWHAT IS LIGHT AND COLOR.", width/2, 80);

  textFont(headings);
  fill (45, 45, 65, 180);
  textSize(18);
  textAlign(CENTER);
  text ("nobody ever has the", (width/2)-100, 590);
  text ("whole story", (width/2)+52, 590); 

  fill(129, 0, 244, 255);
  textFont(title);
  textAlign(CENTER);
  text("imisphyx", width/2, 570);

  rectMode(CENTER);

  fill (myColor);
  myColor = lerpColor(c1, c2, n);
  n += (1-n)* 0.1;

  rect(225, height-135, 200, 180, 15);

  beginShape();
  vertex(165, 510);
  vertex(165, 450);
  vertex(215, 450);
  vertex(165, 510);
  endShape(CLOSE);

  rect(width/3-170, (height/2)-100, 420, 300, 80);

  fill (myColor2);
  myColor2 = lerpColor(c3, c4, n);
  n += (1-n)* 0.1;

  rect(width-230, height-135,210,180,15);

  beginShape();
  vertex(width-165, 510);
  vertex(width-165, 450);
  vertex(width-215, 450);
  vertex(width-165, 510);
  endShape(CLOSE);

  rect((width/3)*2+170, (height/2)-100, 420, 300, 80);
  
  textFont(headings);
  textSize(18);
  textAlign(CENTER);
  fill (210, 210, 240);
  text ("[about]", 160, 598);
  text ("[about]", width-300, 598);

  if (characterOne.getText()  == "[who's talking?]" && characterTwo.getText()  == "[who's replying?]") {
    speechBubbleOne.setColor(color(0, 0, 0, 180));
    speechBubbleTwo.setColor(color(0, 0, 0, 180));
  }
  else if (characterOne.getText() =="[who's talking?]") {
    speechBubbleOne.setColor(color(0, 0, 0, 180));
  }
  else if (characterTwo.getText() =="[who's replying?]") {
    speechBubbleTwo.setColor(color(0, 0, 0, 180));
  }
  else {
    speechBubbleOne.setColor(color(255, 255, 255, 180));
    speechBubbleTwo.setColor(color(255, 255, 255, 180));
  }

  if (characterOne.getText()  == "joyce 'hale' jacoby" && characterTwo.getText()  == "joyce 'hale' jacoby") {
    if ( millis() - lastTime > 5000 ) {
      if (getCount < joyceLines.length) {
        speechBubbleOne.setText(joyceLines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    speechBubbleTwo.setText("{{ uncontrollable giggling }}");
  }
  else if (characterOne.getText()  == "faedylas 'fade' gallaghiere" && characterTwo.getText()  == "faedylas 'fade' gallaghiere") {
    speechBubbleOne.setText("}} I have no idea what sort of absurd farce this is, but there is no way in a million years I would talk to myself.");
    speechBubbleTwo.setText("");
  }
  else if (characterOne.getText()  == "miyuma whiteriver" && characterTwo.getText()  == "miyuma whiteriver") {
    speechBubbleOne.setText("}} Alright, feet, looks like it's just you and me again. Time to start running. Sometime right about.... now.");
    speechBubbleTwo.setText("...");
  }
  else if (characterOne.getText()  == "daniel pyrran" && characterTwo.getText()  == "daniel pyrran") {
    if ( millis() - lastTime > 5000 ) {
      if (getCount < danny1Lines.length) {
        speechBubbleOne.setText(danny1Lines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    if ( millis() - lastTime2 > 5000 ) {
      if (getCount2 < danny2Lines.length) {
        speechBubbleTwo.setText(danny2Lines[getCount2]);
        println("an Event just happened");
        getCount2 = getCount2+1;
        println(getCount);
        lastTime2 = lastTime+2500;
      }
    }
  }
  else if (characterOne.getText()  == "daniel pyrran" && characterTwo.getText()  == "joyce 'hale' jacoby") {
    if ( millis() - lastTime > 10000 ) {
      if (getCount < dannyjoyce1Lines.length) {
        speechBubbleOne.setText(dannyjoyce1Lines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    if ( millis() - lastTime2 > 10000 ) {
      if (getCount2 < dannyjoyce2Lines.length) {
        speechBubbleTwo.setText(dannyjoyce2Lines[getCount2]);
        println("an Event just happened");
        getCount2 = getCount2+1;
        println(getCount);
        if (getCount2 > dannyjoyce1Lines.length) {
          lastTime2= millis();
        }
        else { 
          lastTime2 = lastTime+5000;
        }
      }
    }
  }
  else if (characterOne.getText()  == "kasimir novikov" && characterTwo.getText()  == "kasimir novikov") {
    speechBubbleOne.setText("...");
    speechBubbleTwo.setText("...");
  }
  else if (characterOne.getText()  == "eianthe finn" && characterTwo.getText()  == "eianthe finn") {
    if ( millis() - lastTime > 5000 ) {
      if (getCount < ei1Lines.length) {
        speechBubbleOne.setText(ei1Lines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    if ( millis() - lastTime2 > 5000 ) {
      if (getCount2 < ei2Lines.length) {
        speechBubbleTwo.setText(ei2Lines[getCount2]);
        println("an Event just happened");
        getCount2 = getCount2+1;
        println(getCount);
        lastTime2 = lastTime+2500;
      }
    }
  }
  else if (characterOne.getText()  == "aric ashby" && characterTwo.getText()  == "aric ashby") {
    speechBubbleOne.setText("...");
    speechBubbleTwo.setText("...");
  }  

  else if (characterOne.getText()  == "joyce 'hale' jacoby" && characterTwo.getText()  == "faedylas 'fade' gallaghiere") {
    speechBubbleOne.setText("}} What do you want now, Gallaghiere?");
    speechBubbleTwo.setText("}} Ah, the diplomat returns, I see.");
  }
  else if (characterOne.getText()  == "faedylas 'fade' gallaghiere" && characterTwo.getText()  == "joyce 'hale' jacoby") {
    if ( millis() - lastTime > 10000 ) {
      if (getCount < fadehale1Lines.length) {
        speechBubbleOne.setText(fadehale1Lines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    if ( millis() - lastTime2 > 10000 ) {
      if (getCount2 < fadehale2Lines.length) {
        speechBubbleTwo.setText(fadehale2Lines[getCount2]);
        println("an Event just happened");
        getCount2 = getCount2+1;
        println(getCount2);
        lastTime2 = lastTime+5000;
      }
    }
  }

  else if (characterOne.getText()  == "kasimir novikov" && characterTwo.getText()  == "eianthe finn") {
    if ( millis() - lastTime > 10000 ) {
      if (getCount < kasimireianthe1Lines.length) {
        speechBubbleOne.setText(kasimireianthe1Lines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    if ( millis() - lastTime2 > 10000 ) {
      if (getCount2 < kasimireianthe2Lines.length) {
        speechBubbleTwo.setText(kasimireianthe2Lines[getCount2]);
        println("an Event just happened");
        getCount2 = getCount2+1;
        println(getCount2);
        lastTime2 = lastTime+5000;
      }
    }
  }

  else if (characterOne.getText()  == "aric ashby" && characterTwo.getText()  == "eianthe finn") {
    if ( millis() - lastTime > 10000 ) {
      if (getCount < aricei1Lines.length) {
        speechBubbleOne.setText(aricei1Lines[getCount]);
        println("an Event just happened");
        getCount = getCount+1;
        println(getCount);
        lastTime = millis();
      }
    }
    if ( millis() - lastTime2 > 10000 ) {
      if (getCount2 < aricei2Lines.length) {
        speechBubbleTwo.setText(aricei2Lines[getCount2]);
        println("an Event just happened");
        getCount2 = getCount2+1;
        println(getCount2);
        lastTime2 = lastTime+5000;
      }
    }
  }
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}

public void joyce(int theValue) {
  c1 = c2;
  c2 = color(180, 5, 5);
  characterOne.setText("joyce 'hale' jacoby");
  getCount = 0;
  speechBubbleOne.setText("");
  characterAboutOne.setColor(color(200, 5, 5));
  characterAboutOne.setText("\n NAME: Joyce Arthur Jacoby\n NICKNAME: Hale, or JJ\n TITLE: Martlet (MTLT.)\n CURRENT AGE: 32\n GENDER: Male\n OCCUPATION: Federal Detective\n PREOCCUPATION: Metaphors");
}

public void faedylas(int theValue) {
  c1 = c2;
  c2 = color(65, 105, 200);
  characterOne.setText("faedylas 'fade' gallaghiere");
  getCount = 0;
  speechBubbleOne.setText("");
  characterAboutOne.setColor(color(65, 105, 200));
  characterAboutOne.setText("\n NAME: Faedylas Lochley Gallaghiere\n NICKNAME: Fade, or Dylan\n TITLE:\n CURRENT AGE: 26\n GENDER: Male\n OCCUPATION: Reporter/Junkie\n PREOCCUPATION: Patterns");
}

public void miyuma(int theValue) {
  println("a button event from miyuma:"+theValue);
  c1 = c2;
  c2 = color(0, 160, 100);
  characterOne.setText("miyuma whiteriver");
  getCount = 0;
  speechBubbleOne.setText("");
  characterAboutOne.setColor(color(0, 160, 100));
  characterAboutOne.setText("\n NAME: Miyuma Midori Whiteriver\n NICKNAME: Mim, Mia, Yumi\n TITLE:\n CURRENT AGE: 27\n GENDER: Female\n OCCUPATION:\n PREOCCUPATION: Dating Drama");
}

public void daniel(int theValue) {
  println("a button event from joyce:"+theValue);
  c1 = c2;
  c2 = color(120, 5, 80);
  characterOne.setText("daniel pyrran");
  getCount = 0;
  speechBubbleOne.setText("");
  characterAboutOne.setColor(color(225, 36, 96));
  characterAboutOne.setText("\n NAME: Daniel Pyrran\n NICKNAME: Hardy, Dan, Danny\n TITLE: Detective (DCT.)\n CURRENT AGE: 31\n GENDER: Male\n OCCUPATION: Federal Detective\n PREOCCUPATION: Hale");
}

public void kasimir(int theValue) {
  c1 = c2;
  c2 = color(40, 40, 45);
  characterOne.setText("kasimir novikov");
  getCount = 0;
  characterAboutOne.setColor(color(140, 140, 145));
  characterAboutOne.setText("\n NAME: Kasimir Novikov\n NICKNAME: The Mir-Kat\n TITLE: Detective (DCT.)\n CURRENT AGE: 48\n GENDER: Male\n OCCUPATION: Federal Detective\n PREOCCUPATION: Power");
}

public void eianthe(int theValue) {
  c1 = c2;
  c2 = color(85, 0, 164);
  characterOne.setText("eianthe finn");
  getCount = 0;
  speechBubbleOne.setText("");
  characterAboutOne.setColor(color(125, 70, 204));
  characterAboutOne.setText("\n NAME: Eianthe Eleanor Finn\n NICKNAME: Ei\n TITLE: Mantling Officer (MTO.)\n CURRENT AGE: 19\n GENDER: Female\n OCCUPATION: Federal Officer\n PREOCCUPATION: Everything");
}

public void aric(int theValue) {
  c1 = c2;
  c2 = color(0, 0, 0);
  characterOne.setText("aric ashby");
  getCount = 0;
  speechBubbleOne.setText("");
  characterAboutOne.setColor(color(255, 255, 255));
  characterAboutOne.setText("\n NAME: Aric Ashby\n NICKNAME: Double-A, Rubythroat\n TITLE: Mantling Officer (MTO.)\n CURRENT AGE: 21\n GENDER: Male\n OCCUPATION: Federal Officer\n PREOCCUPATION: Clarity");
}

public void off(int theValue) {
  c1 = c2;
  c2 = color(50, 50, 75, 60);
  characterOne.setText("[who's talking?]");
  speechBubbleOne.setText("Select a character below to gain insight into their thoughts.");
  getCount = 0;
  characterAboutOne.setColor(color(210, 210, 240));
  characterAboutOne.setText("\n NAME:\n NICKNAME\n TITLE:\n CURRENT AGE:\n GENDER:\n OCCUPATION:\n PREOCCUPATION:");
}

public void joyce2(int theValue) {
  c3 = c4;
  c4 = color(180, 5, 5);
  characterTwo.setText("joyce 'hale' jacoby");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(200, 5, 5));
  characterAboutTwo.setText("\n NAME: Joyce Arthur Jacoby\n NICKNAME: Hale, or JJ\n TITLE: Martlet (MTLT.)\n CURRENT AGE: 32\n GENDER: Male\n OCCUPATION: Federal Detective\n PREOCCUPATION: Metaphors");
}

public void faedylas2(int theValue) {
  c3 = c4;
  c4 = color(65, 105, 200);
  characterTwo.setText("faedylas 'fade' gallaghiere");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(65, 105, 200));
  characterAboutTwo.setText("\n NAME: Faedylas Lochley Gallaghiere\n NICKNAME: Fade, or Dylan\n TITLE:\n CURRENT AGE: 26\n GENDER: Male\n OCCUPATION: Reporter/Junkie\n PREOCCUPATION: Patterns");
}

public void miyuma2(int theValue) {
  c3 = c4;
  c4 = color(0, 160, 100);
  characterTwo.setText("miyuma whiteriver");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(0, 160, 100));
  characterAboutTwo.setText("\n NAME: Miyuma Midori Whiteriver\n NICKNAME: Mim, Mia, Yumi\n TITLE:\n CURRENT AGE: 27\n GENDER: Female\n OCCUPATION:\n PREOCCUPATION: Dating Drama");
}

public void daniel2(int theValue) {
  c3 = c4;
  c4 = color(120, 5, 80);
  characterTwo.setText("daniel pyrran");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(225, 36, 96));
  characterAboutTwo.setText("\n NAME: Daniel Pyrran\n NICKNAME: Hardy, Dan, Danny\n TITLE: Detective (DCT.)\n CURRENT AGE: 31\n GENDER: Male\n OCCUPATION: Federal Detective\n PREOCCUPATION: Hale");
}

public void kasimir2(int theValue) {
  c3 = c4;
  c4 = color(40, 40, 45);
  characterTwo.setText("kasimir novikov");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(140, 140, 145));
  characterAboutTwo.setText("\n NAME: Kasimir Novikov\n NICKNAME: The Mir-Kat\n TITLE: Detective (DCT.)\n CURRENT AGE: 48\n GENDER: Male\n OCCUPATION: Federal Detective\n PREOCCUPATION: Power");
}

public void eianthe2(int theValue) {
  c3 = c4;
  c4 = color(85, 0, 164);
  characterTwo.setText("eianthe finn");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(125, 70, 204));
  characterAboutTwo.setText("\n NAME: Eianthe Eleanor Finn\n NICKNAME: Ei\n TITLE: Mantling Officer (MTO.)\n CURRENT AGE: 19\n GENDER: Female\n OCCUPATION: Federal Officer\n PREOCCUPATION: Everything");
}


public void aric2(int theValue) {
  c3 = c4;
  c4 = color(0, 0, 0);
  characterTwo.setText("aric ashby");
  getCount2 = 0;
  speechBubbleTwo.setText("");
  characterAboutTwo.setColor(color(255, 255, 255));
  characterAboutTwo.setText("\n NAME: Aric Ashby\n NICKNAME: Double-A, Rubythroat\n TITLE: Mantling Officer (MTO.)\n CURRENT AGE: 21\n GENDER: Male\n OCCUPATION: Federal Officer\n PREOCCUPATION: Clarity");
}

public void off2(int theValue) {
  c3 = c4;
  c4 = color(50, 50, 75, 60);
  characterTwo.setText("[who's replying?]");
  speechBubbleTwo.setText("Select another character below to start a conversation.");
  getCount2 = 0;
  characterAboutTwo.setColor(color(210, 210, 240));
  characterAboutTwo.setText("\n NAME:\n NICKNAME\n TITLE:\n CURRENT AGE:\n GENDER:\n OCCUPATION:\n PREOCCUPATION:");
}

