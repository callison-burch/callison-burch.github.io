---
title: Language to Avrae Commands - Study Details for Participants
layout: default
active_tab: main_page 
keep_sidebar: true
---

# Artifical Intelligence for Avrae

The University of Pennsylvania is collaborating with Fandom to create an Artifical Intelligence (AI) module that will translate language onto Avrae commands.  The project will attempt to improve the usability of Avrae.  The sceintific goal of the project is to improve AI's ability to understand language.

## What is the goal of this study?

This study will observe people playing role-playing games like Dungeons & Dragons and collect data about their gaming session.  Specifically, we are interested in collecting the text that people use when they role play, and match it with the commands that they issue to the Avrae system, which tracks information about the game like combat order, monsters, hit points and characters’ weapons.

The goal of the data collection effort is to build technology that can automatically translate from a sentence written in English onto a corresponding command for Avrae to execute.  For example,  if a player says “I shoot my bow at the goblin” then the system should transform that onto the Avrae command “`!attack bow -t go1`”. 


| English | Avrae Command |
| ------- | ------------- |
| I shoot my bow at the goblin | `!attack bow -t go1` |
| Dirk listens for footsteps | `!check perception` |
| Strength save!!! | `!save strength` |
| I cast fire bolt on the fourth zombie | `!cast "fire bolt" -t zo4` |


The larger goal of this research is to improve artificial intelligence (AI) systems in order to make them better at understanding the meaning of language, and how language is used to represent facts about the world.   AI research has focused on studying games throughout its history.  Examples include chess playing AI systems like Deep Blue to IBM’s Watson system which participated in Jeopardy to DeepMind’s AlphaGo.  We believe that role playing games present an interesting challenge for AI because they are primarily played using language.  Advances to the ability of AI systems to be able to understand and play RPGs may lead to better smart speakers or digital assistants.

If your roleplaying group uses Avrae, and if you are interested in participating in the study, we would love to have you participate!  Please read the information below to get started. 
 
## What information is collected during this study?

We will collect information from your Discord channel, if your server administrator opts in to participate in the study.  Information will be collected when you are using Avrae and when it detects that the game is in active combat.

The following information will be recorded:
1. The text of messages sent in the channel, plus the time that they were sent and who they were sent by.
2. The Avrae commands that were issued in the channel plus which character issued the command, their character sheet, which monsters or characters they targeted with the command, and the target’s character sheet. 
This will allow us to track details about the combat including things like how hit points change over time.  It will also let us collect the text used before and after commands are issued to Avrae, so that we can associate the language used during roleplay with the game commands.
Additionally, when Avrae detects that combat has begun or ends, it will also collect up to 25 additional messages before and after the combat, so that we can capture the roleplay text about how battles begin and end. 

This data will be used by researchers at the University of Pennsylvania and by employees of Fandom (which owns Avrae).  It will be distributed to other researchers who study artificial intelligence. 

## How to Participate

You can opt-in to contribute data to this project.  Participation is limited to people 18 years old and older.  Your discord server administrator can opt in through the server settings menu built in to Avrae.  Here are the steps that the admin should run to opt-in.  In the server settings menu:
1. Run the `!servsettings` command
2. Click on the "Miscellaneous Settings" button on the presented menu
3. Review the project description, FANDOM Privacy Policy, and the informed consent documents from the University of Pennsylvania. 
4. Click on "Toggle NLP Opt In" and ensure the "Contribute Message Data to Natural Language AI Training" setting is set to True

To begin combat in a participating channel, a user can:
1. Run the `!init begin` command
2. If the combat recording has successfully begun, a message will appear stating that the channel is now being recorded.  

All users in the channel will see this message to ensure that they know that their messages are being recorded for the study. 

## Risks and Benefits of Participation

All scientific studies that are run at universities and that involve people must list the risks and benefits of participation.  For this study, there are minimal risks.  The primary risk is a possible break of your confidentiality.  The steps that we are taking to try to reduce those risks are:
* Removing your Discord ID and replacing it with a pseudonym.
* Replace your Discord nickname, character names, and mentions of people’s names in the discord chat logs that we collect before distributing the data to other researchers. 

We will run an algorithm to automatically identify names in the chat.  Because the algorithm is imperfect, some names may be retained in the chat data that we distribute to other researchers.   

Participation is voluntary and unpaid, so there are no direct benefits for your participation.  However, your participation may lead to advances in technology that will help improve future versions of Avrae and online roleplaying experiences.  It may also lead to advances to related artificial intelligence technology, like improvements to smart speakers or personal assistants. 

In our assessment, the potential benefits outweigh the risks.

## How to Opt Out

Participation in this study is completely voluntary.  If you would like to stop participating, you can do so.  

As an individual user, you may opt-out of participating by not sending any messages in a recorded channel, or by leaving the channel. A channel that is recorded will be identified by a message underneath a pinned initiative list in the channel.

As a server moderator, you may choose to end the participation of any current active recordings in the server by running the `!init nlp stopall` command.

As a server administrator, you may choose to end the participation of any current and future recordings in the server by taking the following steps:
1. Run the `!servsettings` command
2. Click on the "Miscellaneous Settings" button on the presented menu
3. Click on "Toggle NLP Opt In" and ensure the "Contribute Message Data to Natural Language AI Training" setting is set to False

## Requesting Data Deletion

Individuals and server administrators may submit a D&D Beyond support ticket to request deletion of their data at https://support.dndbeyond.com/hc/en-us/requests/new?ticket_form_id=602788. 

To help us process your request, please provide the following information:
* The Discord ID of the server you participated in
* Your Discord user ID
* The time you participated in the collection

Note that after the data in this study has been released to other researchers, it may be difficult or impossible to delete all copies of your data. 

## Who to contact with questions or concerns

If you have questions or concerns about this project, you may contact these people:

1. Professor Chris Callison-Burch <ccb@upenn.edu> – Chris is the research lead on the project. He can be your first point of contact. 
2. Andrew Zhu <azhu@fandom.com> – Andrew is the lead developer of the Avrae software and he wrote the software to collect the user interactions with Avrae for this study.
3. The Institutional Review Board (IRB) at the University of Pennsylvania <PROVOST-IRB@pobox.upenn.edu> – Oversees all scientific studies at the university that involve human participants to ensure that participants are treated fairly, and that researchers have put careful consideration into the tradeoff between potential harms and potential benefits of their studies.  
