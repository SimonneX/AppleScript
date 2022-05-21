on sendmessage(content, phone)
	tell application "Messages"
		set myid to 1st account whose service type = iMessage
		set theBuddy to participant phone of myid
		send content to theBuddy
	end tell
end sendmessage

on sendimage(file_path, phone)
	set theAttachment1 to POSIX file file_path as alias
	set the clipboard to theItem
	tell application "Messages"
		set myid to 1st account whose service type = iMessage
		set theBuddy to participant phone of myid
		send theAttachment1 to theBuddy
	end tell
end sendimage

-- samples
-- sendmessage("123","+8613712345678")
-- sendimage("/Users/xxx/Desktop/test.png", "+8613712345678")