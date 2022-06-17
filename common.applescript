on screencapture(window_name, path)
	do shell script ("~/Library/Python/3.8/bin/screenshot \"" & window_name & "\" -f " & path)
end screencapture

on shutdown(t_delay)
	delay t_delay
	tell application "Finder" to shut down
end shutdown

on sleep(t_delay)
	delay t_delay
	tell application "Finder" to sleep
end sleep

shutdown(9600)
-- screencapture("Wow","~/Library/Mobile\\ Documents/com~apple~CloudDocs/image/wow/lastest.png")
