on run
	
	set project_directory to "Sites/afterwake/"
	
	tell application "iTerm"
		
		activate
		
		set myterm to last terminal
		
		tell myterm
			
			tell the last session
				
				write text "cd " & project_directory
				
				write text "mvim ."
				
				write text "rails s"
				
			end tell
			
			tell i term application "System Events" to keystroke "D" using command down
			
			tell the last session
				
				write text "cd " & project_directory & "public/stylesheets"
				
				write text "sass --watch application.scss:application.css"
				
			end tell
			
			tell i term application "System Events" to keystroke "d" using command down
			
			tell the last session
				
				write text "cd " & project_directory
				
			end tell
			
		end tell
		
	end tell
	
	
	delay 10
	
	
	tell application "Safari"
		
		activate
		
		if (count of documents) = 0 then
			
			make new document
			
		end if
		
		tell the last document
			
			set URL to "http://0.0.0.0:3000"
			
		end tell
		
	end tell
	
end run
