<cfoutput>
	<script type="text/javascript">
		window.addEventListener("keyup", function() {
			var typedVal	=	document.getElementById('requestBin').value.replace(/\s/g, "");
			var val			= 	'#event.buildLink( 'requestBin' )#/' + typedVal;
			document.getElementById("requestBinURL").innerHTML = val;
			document.getElementById("requestBinURLInspect").innerHTML = val + '?inspect';
			document.getElementById("requestBinLog").innerHTML = 'requestBin_' + typedVal + '.log';


		});

	</script>
<h1>Inspect HTTP Requests</h1>
requestBin gives you a URL that will collect requests made to it and let you inspect them in a coldfusion-friendly way.
Use requestBin to see what your HTTP client is sending or to inspect and debug webhook requests.
<br><br>



<label> Unique ID:</label>
<input type="text" id="requestBin" value="" class="form-controls">
<br><br>

<b>Make a request to get started.</b><br>
<label>Bin URL:</label> <div id="requestBinURL"></div>
<br><br>
<b>After making a request, refresh this page to see it</b><br>
<label>Inspect URL:</label> <div id="requestBinURLInspect"></div>

<br><br>
<b>Also, Look for the log file:</b><br>
<label>Log File:</label> <div id="requestBinLog"></div>



</cfoutput>