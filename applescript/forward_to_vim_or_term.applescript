on run argv
	tell application "System Events"
		set frontmostApp to name of application processes whose frontmost is true
		if frontmostApp as string is not equal to "iTerm2"
			keystroke (item 1 of argv) using {control down}
			return
		end if
	end tell

	tell application "iTerm2"
		activate
		tell current window
			tell the current session
				if name starts with "VIM" or name ends with "(nvim)" or name ends with "(vim)" then
					tell application "System Events"
						keystroke (item 1 of argv) using {control down, shift down}
					end tell
				else
					tell application "System Events"
						keystroke (item 1 of argv) using {command down, control down}
					end tell
				end if
			end tell
		end tell
	end tell
end run
