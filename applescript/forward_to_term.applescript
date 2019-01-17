on run argv
	tell application "System Events"
		keystroke (item 1 of argv) using {command down, control down}
	end tell
end run
