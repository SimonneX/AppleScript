on activewow()
	activate application "World of Warcraft Classic"
end activewow

on hidewindow()
	tell application "System Events" to keystroke "h" using command down
end hidewindow

on screencapture(i)
	activewow()
	set screen_capture_path to "~/Library/Mobile\\ Documents/com~apple~CloudDocs/image/wow/capture_" & i & ".png"
	do shell script ("~/Library/Python/3.8/bin/screenshot \"Wow\" -f " & screen_capture_path)
	hidewindow()
end screencapture

on doJump()
	activewow()
	tell application "System Events" to keystroke {space}
	log "Jump"
	hidewindow()
end doJump

on useSkill()
	activewow()
	tell application "System Events"
		key code 29
	end tell
	log "skill1"
end useSkill

on sleep()
	
end sleep

----------------Loop----------------
-- screencapture -> jump -> useskill

set capture_count_max to 10
set jump_delay to 180
set skill_delay to 180

set i to 0
useSkill()
repeat while true
	if i ³ capture_count_max then
		set i to 0
	end if
	screencapture(i)
	set i to i + 1
	delay jump_delay
	doJump()
	delay skill_delay
	useSkill()
end repeat