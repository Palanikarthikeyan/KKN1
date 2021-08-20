
grep bash /etc/passwd >newfile

step 1: read a filename from <STDIN>
	test input file is reg.file or not - if only style
					|
					display message input file is not a reg.file
					exit from script

step 2: read a resultfile from <STDIN>
	test resultfile should not exists 
	     |_(must be newfile)

step 3: read a search pattern from <STDIN>
step 4: using grep $pattern $inputfile >$resultfile
		|
	step 5: if input pattern is  not matched - display message to monitor
						
	
