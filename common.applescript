

-- on getpid()

-- set pid to -1000
-- tell application "Google Chrome" to set pid to unix id

-- end getpid

-- log getpid()
tell application "Google Chrome" to get the unix id of type {}
