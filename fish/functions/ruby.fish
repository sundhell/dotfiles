function ruby
	if test -f $PWD/Vagrantfile
		echo 'Running ruby inside vagrant...'
		vagrant ssh -c "cd /vagrant; ruby $argv"
	else
		command ruby $argv
	end
end
