function phpunit
	if test -f $PWD/../../Vagrantfile
		echo 'Running phpunit inside vagrant...'
		vagrant ssh -c "cd /vagrant/"(basename $PWD)"; phpunit $argv"
	else
		command phpunit $argv
	end
end
