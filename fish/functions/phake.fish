function phake
	if test -f $PWD/../../Vagrantfile
		echo 'Running phake inside vagrant...'
		vagrant ssh -c "cd /vagrant/"(basename $PWD)"; vendor/bin/phake $argv"
	else
		command phake $argv
	end
end
