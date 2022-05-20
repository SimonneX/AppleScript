on activewow()
	activate application "World of Warcraft Classic"
end activewow

on screenshot(win, path)
	do shell script ("~/Library/Python/3.8/bin/screenshot \"" & win & "\" -f " & path)
end screenshot

on jump()
	activewow()
	tell application "System Events" to keystroke {space}
	log "Jump"
end jump

on skill1()
	activewow()
	tell application "System Events"
		key code 29
	end tell
	log "skill1"
end skill1

on sleep()
	
end sleep

--------------------------------
set i to 0
jump()
repeat while true
	if i > 5 then
		set i to 0
	end if
	screenshot("Wow", "~/Library/Mobile\\ Documents/com~apple~CloudDocs/image/wow/capture_" & i & ".png")
	delay 240
	jump()
	delay 240
	skill1()
	set i to i + 1
end repeat

