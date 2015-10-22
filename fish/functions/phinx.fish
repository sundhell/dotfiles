function phinx
	if test -f $PWD/../../Vagrantfile
		echo 'Running phinx inside vagrant...'
		vagrant ssh -c "cd /vagrant/"(basename $PWD)"; php vendor/robmorgan/phinx/bin/phinx $argv"
	else
		command phinx $argv
	end
end
