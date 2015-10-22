function behat
	if test -f $PWD/../../Vagrantfile
		echo 'Running behat inside vagrant...'
		vagrant ssh -c "cd /vagrant/"(basename $PWD)"; vendor/bin/behat $argv"
	else
		command behat $argv
	end
end
