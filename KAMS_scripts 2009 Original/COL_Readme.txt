This is my GTA COL Collision Importer/Exporter script for 
Max & GMax.


How to import
=============
- In Max/GMax run COL3_IO_alpha2.mse
- Press 'Open Collision File' top button and select .col or .dff
 * in SA, All vehicles' collision file are stalled inside the dff
 * you can select GTA3/VC .col or SA .col (both supported)
- If you are importing col inside dff, the collision models will 
  load into Max/GMax directly.
- If you are importing .col files. All col are listed in the listbox.
  either double click the name in listbox or use the 'load' button to
  load it into Max/GMax.


How to export
=============
- select which format you wanted.
- if you want to exoprt Collision Mesh. Press the 'Collision Mesh'
  button and pick the mesh.
- Same as Shadow Mesh. Press the 'Shadow Mesh' button and pick the 
  mesh.
- Select everything you want to export.
- Remember to give this COL a name in the textbox just above the 
  'Export' button.
- Press 'Export' button and the .COL file will be created!
* GMax user need Copy the text to a text file and use T2B.exe
  to convert it into a real .col file.


How to create new collision objects
===================================
- Use sphere or box as collision objects
- Go to material editor and apply 'GTA COL Sufrace' material as you 
  wanted
- for Shadow Mesh, use 'GTA COL Shadow' material.
- You can apply multimaterial to a Mesh object for collision mesh or
  Shadow Mesh.
- The best learning is load a SA vehicle and open the material editor 
  to see how Collision/shadow material applied.


Kam
kam.lai@ntlworld.com