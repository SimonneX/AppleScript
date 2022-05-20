
-- ??
on screenshot(win, path)
    do shell script ("~/Library/Python/3.8/bin/screenshot \"" & win & "\" -f " & path)
end screenshot

-- set path to "~/Library/" & "Mobile " & "Documents:com~apple~CloudDocs:image:wow"
-- log path
-- screenshot("Wow",path)
screenshot("Wow","~/Library/Mobile\\ Documents/com~apple~CloudDocs/image/wow/lastest.png")
-- tell application "System Events" to open folder "~/Library/Mobile Documents"
