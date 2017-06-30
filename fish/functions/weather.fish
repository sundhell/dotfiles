function weather
	if count $argv > /dev/null
		curl wttr.in/~$argv
	else
		curl wttr.in/
	end
end
