function docker
	if test -f $PWD/Vagrantfile
		echo 'Running docker inside vagrant...'
		vagrant ssh -c "cd /vagrant; docker $argv"
	else
		if which docker-machine >/dev/null ^&1
			eval (docker-machine env default)
			command docker $argv
		else
			command docker $argv
		end
	end
end
