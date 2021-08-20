<<Q
step 1: read a port Number from <STDIN>
step 2: test input portNumber is above 500 or Not
				----------    -----
		step 3:	 initialize app-1     app-2
step 4: display port Number,appname
Q
read -p "Enter a portNumber:" port
if [ $port -gt 500 ]
then
	app="App-1"
else
	app="App-2"
fi
echo -e "PortNumber:$port\t App:$app"
