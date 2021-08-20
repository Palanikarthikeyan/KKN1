<<Q
write a shell script
step 1: read a filename from <STDIN>
step 2: test input file is exists or not
			    |
			  file <filename>

write a shell script
step 1: read a filename from <STDIN>
step 2: test input file is exists or not
			    |        |--->input file is not exists
		  step 3: test input file is reg.file 
					     ls -l filename
			  test input file is dir.file
					     ls -ld filename
			   |
			   file <filename>

write a shellscript
step 1: read a directory name from <STDIN>
step 2: test input directory is exists or not
				 |	   |
		step 3: ls -ld <dir>      mkdir <dir>
					  |
				     display ack (based on $?)




