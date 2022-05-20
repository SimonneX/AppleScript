on jump()
	activate application "World of Warcraft Classic"
	tell application "System Events" to keystroke {space}
	log "Jump"
end jump

on skill1()
	activate application "World of Warcraft Classic"
	tell application "System Events"
		key code 29
	end tell
	log "skill1"
end skill1

on sleep()
	
end sleep

--------------------------------
-- set i to 0
jump()
repeat while true
	delay 240
	jump()
	delay 240
	skill1()
end repeat

