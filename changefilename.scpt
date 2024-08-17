on run {input, parameters}
	
	set ficheroinfo to item 1 of input
	
	set nombreficInfo to name of (info for ficheroinfo)
	
	set respuestaCambioNombre to display dialog "Cambio de Nombre de Archivo " default answer nombreficInfo with icon caution buttons {"Cancel", "Cambiar"} default button "Cambiar"
	
	if button returned of respuestaCambioNombre = "Cambiar" then
		tell application "Finder"
			try
				set name of ficheroinfo to (text returned of respuestaCambioNombre)
			end try
		end tell
	end if
	
end run
