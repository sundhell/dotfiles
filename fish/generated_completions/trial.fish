# trial
# Autogenerated from man page /usr/share/man/man1/trial.1
# using Deroffing man parser
complete -c trial -s b -l debug --description 'Run the tests in the Python debugger.'
complete -c trial -s B -l debug-stacktraces --description 'Report Deferred creation and callback stack traces.'
complete -c trial -l coverage --description 'Generate coverage information in the `coverage\'… [See Man Page]'
complete -c trial -l disablegc --description 'Disable the garbage collector for the duration of the test run.'
complete -c trial -s e -l rterrors --description 'Print tracebacks to standard output as soon as they occur.'
complete -c trial -l force-gc --description 'Run gc. collect() before and after each test case.'
complete -c trial -s h -l help --description 'Print a usage message to standard output, then exit.'
complete -c trial -l help-reporters --description 'Print a list of valid reporters to standard output, then exit.'
complete -c trial -l help-reactors --description 'Print a list of possible reactors to standard o… [See Man Page]'
complete -c trial -s l -l logfile --description 'Direct the log to a different file.  The default file is `test.'
complete -c trial -s n -l dry-run --description 'Go through all the tests and make them pass without running.'
complete -c trial -s N -l no-recurse --description 'By default, trial recurses through packages to … [See Man Page]'
complete -c trial -l nopm --description 'Don\'t automatically jump into debugger for post… [See Man Page]'
complete -c trial -l profile --description 'Run tests under the Python profiler.'
complete -c trial -s r -l reactor --description 'Choose which reactor to use.   See --help-reactors for a list.'
complete -c trial -l recursionlimit --description 'Set Python\'s recursion limit.  See sys. setrecursionlimit().'
complete -c trial -l reporter --description 'Select the reporter to use for trial\'s output.'
complete -c trial -l spew --description 'Print an insanely verbose log of everything that happens.'
complete -c trial -l tbformat --description 'Format to display tracebacks with.'
complete -c trial -l temp-directory --description 'WARNING: Do not use this options unless you kno… [See Man Page]'
complete -c trial -l testmodule --description 'Ask trial to look into filename and run any tes… [See Man Page]'
complete -c trial -l unclean-warnings --description 'As of Twisted 8.'
complete -c trial -s u -l until-failure --description 'Keep looping the tests until one of them raises… [See Man Page]'
complete -c trial -l version --description 'Prints the Twisted version number and exit.'
complete -c trial -l without-module --description 'Simulate the lack of the specified comma-separa… [See Man Page]'
complete -c trial -s z -l random --description 'Run the tests in random order using the specified seed.'
