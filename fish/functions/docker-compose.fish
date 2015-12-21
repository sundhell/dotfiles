function docker-compose
	if which docker-machine >/dev/null ^&1
		eval (docker-machine env default)
		command docker-compose $argv
	else
		command docker-compose $argv
	end
end
