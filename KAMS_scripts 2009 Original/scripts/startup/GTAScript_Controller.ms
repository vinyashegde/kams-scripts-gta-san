utility Kams_Scripts "Kam's GTA Scripts" 
(
	button script01 "DFF IO" width:140 align:#center
	on script01 pressed do ( 
		try ( fileIn (scriptspath+"\\GTA_Tools\\GTA_DFF_IO.ms") quiet:true   )
		catch messagebox "Please re-install my DFF IO script!" title:"Can't find DFF IO script"
	)		
	button script02 "Collision IO" width:140 align:#center --offset:[0,-5]
	on script02 pressed do (   
		try ( fileIn (scriptspath+"\\GTA_Tools\\GTA_COL_IO.mse") quiet:true   )
		catch messagebox "Please re-install my Collision IO script!" title:"Can't find Collision IO script"
	)
	button script03 "Map IO" width:140 align:#center --offset:[0,-5]
	on script03 pressed do ( 
		try ( fileIn (scriptspath+"\\GTA_Tools\\GTA_Map_IO.ms") quiet:true   )
		catch messagebox "Please re-install my Map IO script!" title:"Can't find Map IO script"
	)	

	group "Animation" (
		button script04 "IFP dump" width:140 align:#center tooltip:"This script is for GMax only"--offset:[0,-5]
		button script05 "IFP IO" width:140 align:#center offset:[0,-5]
	)
		on script04 pressed do (
			try ( fileIn (scriptspath+"\\GTA_Tools\\GTA_IFP_dump.ms") quiet:true   )
			catch messagebox "Please re-install my IFP IO script!" title:"Can't find Animation IO script"
		)	
		on script05 pressed do (
			try ( fileIn (scriptspath+"\\GTA_Tools\\GTA_IFP_IO.ms") quiet:true   )
			catch messagebox "Please re-install my IFP IO script!" title:"Can't find Animation IO script"
		)

	button script06 "Modelling Helper" width:140 align:#center
	on script06 pressed do ( 
		try ( fileIn (scriptspath+"\\GTA_Tools\\GTA_Helper_v31.ms") quiet:true   )
		catch messagebox "Please re-install my Helper script!" title:"Can't find Helper script"
	)
	button script07 "Envelopes Helper" width:140 align:#center
	on script07 pressed do ( 
		try ( fileIn (scriptspath+"\\GTA_Tools\\Kam_envelope_tools.ms") quiet:true   )
		catch messagebox "Please re-install my Helper script!" title:"Can't find Helper script"
	)

	group "Reflection Fix" (
		spinner tuneRef "Ref. increment" fieldwidth:45 range:[-100,100,0] align:#right
		button MtlFix "Apply increment" width:120 tooltip:"Apply Reflection increment to all selected objects" align:#center
	)
	on MtlFix pressed do (
 		if $selection.count > 0 then ( 
  			objAry = $selection as array
  			for obj in objAry where obj.material != undefined do (
   				if classof obj.material == Multimaterial then (
    				for i = 1 to obj.material.count do (
     					oldref = obj.material[i].Reflection
     					newref = tuneRef.value - oldref
     					if newref < 0 then newref = 0
     					if newref > 100 then newref = 100
     					obj.material[i].Reflection = newref
					)
				) else (
					oldref = obj.material.Reflection
					newref = oldref + tuneRef.value
					if newref < 0 then newref = 0
					if newref > 100 then newref = 100
					obj.material.Reflection = newref
				)
			)
 		)
	) 
	    	
)
openUtility Kams_Scripts