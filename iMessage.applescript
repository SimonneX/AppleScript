on sendmessage(content, phone)
	tell application "Messages"
		set myid to 1st account whose service type = iMessage
		
		set theBuddy to participant phone of myid
		repeat with i from 1 to 1
			send content to theBuddy
		end repeat
	end tell
end sendmessage

on sendimage()
	tell application "Messages"
		set myid to 1st account whose service type = iMessage
		set theBuddy to participant phone of myid
		repeat with i from 1 to 1
			send content to theBuddy
		end repeat
	end tell
end sendimage

sendmessage("123","+8619921645279")