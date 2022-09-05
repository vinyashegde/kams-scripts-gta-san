This is my GTA IFP Animation Importer/Exporter script for 
Max & GMax.


How to Import
=============
- You need my DFF IO script(dated 10Aug05 or later) to import 
  char/bones to (G)MAX.
- Run the 'SA_IFP_IO.ms' script and load an SA ifp.
- Select all the parts you want to apply animation to.
- Press the little 'M' button so it store the original 
  transformation of the models.
- Form the listbox, highlight any action you would like to import.
- Be sure to set the TimeSlider back to 0 since my script will now
  import at the time where TimeSlider is!
- Select all char/bones and press 'Apply Animation' 
- To restore the original Position, press the little 'R' button.


How to Export
=============
There are two button for export:
'Replace' is to put your animation in MAX back to the .ifp you loaded
'Save' is act as backup animation to a new .ifp

REMEMBER only selected parts/bones will be exported! And my script 
should be smart enough NOT to export parts/bones without animation
data! So the best way to export your animation is to 'select all and
export'.

GMax user need extra steps to get your ifp.
1. Use 'saIFP_dump.ms' to convert the .ifp to .txt (Copy/Paste 
   from Listener or use a GMax graber)
2. Export your animation as above
3. Open up your .txt file and replace the section with new export
4. use T2B.exe to convert the .txt to a real .ifp 

.ifp -> .txt -> .ifp
          |
          |
       edit .txt



Since animation data only apply to the selected objects with SAME name
as in the animation.(eg. Smid data in ifp only apply to Smid mesh in Max)
Specific animations applies to specific models only. So not all animation
appliable.
You can have different models in you scene, only selected one will be
applied! But don't select them together. Also you can just select some 
parts to apply animation.


**GTA animation are in second base. So when you import the animation 
into (G)MAX. Depend on your FrameRate setting in (G)Max. Keys 
generated in different frames. eg:LHand had 12 keys and animation 
finished in 1 second. If you set your system to PAL, last key will 
be at 30f. At 24f if NTSC and 25 for FILM. So you can import/export 
real time animation and make your own discreet animation. 


Limitation
==========
Sibling are calculated each time you save/replace.
I assume that each model have 5 chains.
	Root-Head			Swaist-Shead
	L Thigh-L Toe0			Supperarml-SLhand
	R Thigh-R Toe0			Supperarmr-SRLhand
	Bip01 L Clavicle-L Finger	Supperlegl-Sfootl
	Bip01 R Clavicle-R Finger	Supperlegr-Sfootr
A whole chain can be missing when there is no animation.
But you can't have any member in the middle of chain missing.
eg: L Calf can't be missing while the other have animation data!
(But it seems the top or bottom one can be missing!! Not sure!!)
Be sure to add some keys there!


Kam.
kam.lai@ntlworld.com