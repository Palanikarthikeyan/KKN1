<<Q
write a shell script
step 1: read a os name from <STDIN>
step 2: test input os is Linux # use case 
			   |_ read a shell name from <STDIN>
			      test input shell is bash # if ..elif
			      initialize profile bashrc
			   |__ sh (or) ksh - initialize profile
			       file .profile

			   |__ default shell and profile

step 3: test input os is winx
			 |__ read a shell name from <STDIN>
			     test input shell is psh
			     initialize profile C:\\winprofile
			 |__ default shell and profile
				C:\\noshell C:\\profile

Q
