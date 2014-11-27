function bundle
	if test -f $PWD/Vagrantfile
		echo 'Running bundle inside vagrant...'
		vagrant ssh -c "cd /vagrant; bundle $argv"
	else
		command bundle $argv
	end
end
