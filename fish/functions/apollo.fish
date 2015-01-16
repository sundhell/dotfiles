function apollo
	if test -f $PWD/Vagrantfile
		echo 'Running apollo inside vagrant...'
		vagrant ssh -c "cd /vagrant; apollo $argv"
	else
		command apollo $argv
	end
end
