#!/usr/bin/env osascript
global frontAppProcess, frontAppName, windowTitle
tell application "System Events"
  set frontAppProcess to first application process whose frontmost is true
  set frontAppName to name of frontAppProcess
end tell

tell frontAppProcess
  if count of windows > 0 then
   set windowTitle to name of front window
  end if
end tell

return { frontAppName, windowTitle }
