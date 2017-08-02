/**
* A normal ColdBox Event Handler
*/
component{

	function index(event,rc,prc){
		event.setView( "home/index" );
	}
	function save(event,rc,prc){
		if (structKeyExists(rc, 'inspect')){
			myFile = fileRead(expandPath("./requestBin_#rc.slug#.log"));
				
				cfloop(list=myFile, index="i", delimiters="#chr(10)##chr(13)#"){ 
				    writeDump(deserializeJSON(deserializeJSON(i).rc)); 
				    writeDump(deserializeJSON(deserializeJSON(i).request)); 
				    writeOutput('<h3>Content</h3>');
				    writeDump(deserializeJSON(deserializeJSON(deserializeJSON(i).request).content)); 
				    writeDump(deserializeJSON(i).timestamp); 
				    
				    writeOutput("<hr>"); 
				}
			abort;
		}
		else {
			writeDump(rc);
			//writeDump(cgi);
			myFile = fileOpen(expandPath("./requestBin_#rc.slug#.log"), "append"); 
			myLog = structNew();
			myLog.timeStamp=now();
			myLog.rc=serializeJSON(rc);
			myLog.cgi=serializeJSON(cgi);
			myLog.request=serializeJSON(getHttpRequestData());
	 		fileWriteLine(myFile, serializeJSON(myLog)); 
	 		fileClose(myFile);
	 		writeDump(myLog);
			abort;
		}
	}


}
