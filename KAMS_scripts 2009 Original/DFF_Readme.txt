This is my GTA DFF Importer/Exporter script for Max & GMax.


How to Import:
==============
- This script only support Standard GTA Games DFF (no zmod or locked) 
- select the type of texture if you want to show/render it in MAX
- press 'Import DFF' button
- If the dff contains more than 1 models, a message will show up
- Now 'Multi. Clump' Group will enabled.
- select which model(Clump) you want to import and press the 'Import'
  button next to the spinner.


How to Export:
==============
To use this script you should have this in mind:
For all SA vehicle DFF(others I don't know). You need to have 
collision file(COL3/COLL) ready before use my exporter script! 

- It could be COL3 form original SA DFF. Or
- Single COLL file from GTA3/VC/your own. But the shadows didn't 
  look right! What I mean a 'Single COLL file' is a *.col contains 
  only 1 COLL inside. You can use my 'COL IO' import the COL to MAX 
       ^^^^^^^^^^^^^
  and SaveAs to a 'Single COLL file'.

Now fire up you Max and import/create your vehicles. Be aware that
the SA vehicles have different dummies from GTA3/VC. so you might 
need to delete/add new dummies. BE CAREFUL about the HIERARCHY link 
are DIFFERENT as well.

Ready to export? Run my SA_DFF_IO_beta script. In the export rollout
check the SA(green) button, 'MMC'(which allow color change ingame)
and press 'COL3 Model' to select collision file. You can either choose 
DFF or COL, see above! Press 'Export DFF'

If every thing OK. You are ready to put it in SA!!! :)


How to use Max's Material(updated 06Jul05):
===========================================
Diffuse Color                           -> ingame color (primary color should be [60 255 0], secondary [255 0 175])
DiffuseMap                              -> ingame texture

Opacity                                 -> ingame transparency
OpacityMap                              -> ingame transparency mask

ReflectionMap with BitmapTexture        -> ingame Image ReflectionMap
ReflectionMapAmount                     -> ingame Reflection Level

Specular Color                          -> Specular Color
Glossiness + Soften                     -> Reflection/Specular Blend
                                           (0: no reflection, 100: full reflection)

SpecularMap with BitmapTexture          -> ingame Specular Image
Specular_Level                          -> ingame Specular Power
**if you want to try this SpecularMap, Make sure the length of it's name < 19.
  (better = 19). Seems not effect anyway.**


How to use 2nd UV Map
=====================
2nd UV Map is for Advance Max User, Don't PM/email me asking why didn't
work! Go and get more tutorial on how to do UV Mapping with Max.

Since Maxscript didn't allow to access muti-channel mapping. But there
is always ways to hack! 

To enable 2nd UV Map. Simply place a UV related modifier(UVW Map, 
Unwarp UVW, Edit Mesh etc) in Modifier Stack and name it "2nd UV Map".
2nd UV will export form the top modifier, 1st UV will export form just 
below "2nd UV Map" modifier.

Limitation:
- Number of Faces cannot change after "2nd UV Map" (Verts can). 
- If you collapse the Stack, you will lost 1st UV Map.
- No "2nd UV Map" for importer, is there a point to do so!?


Kam
kam.lai@ntlworld.com