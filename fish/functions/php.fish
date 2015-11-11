function php
	if test -f $PWD/../../Vagrantfile
		echo 'Running php inside vagrant...'
		vagrant ssh -c "cd /vagrant/"(basename $PWD)"; php $argv"
	else
		command php $argv
	end
end
