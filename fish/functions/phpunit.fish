function phpunit
	if test -f $PWD/../../Vagrantfile
		echo 'Running phpunit inside vagrant...'
		vagrant ssh -c "cd /vagrant/system; phpunit $argv"
	else
		command phpunit $argv
	end
end
