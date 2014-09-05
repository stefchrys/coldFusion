<!-- les boucles -->

<!-- boucle simple -->
<!-- balises -->
<cfloop from="1" to="5" index="i">
<cfoutput>#i#</cfoutput><br />
</cfloop>
<!-- script -->
<cfscript>
	for(i=1;i<=5;i++){
		writeOutput(#i# &"<br />");
	}
</cfscript>
<!-- affichage:
1
2
3
4
5
-->

<!-- boucle dans un tableau -->
<!-- balises -->
<cfset myArray = ['Jeff', 'John', 'Steve', 'Julianne'] />
<cfloop from="1" to="#arrayLen(myArray)#" index="i">
	<cfoutput>#i# : #myArray[i]#<br /></cfoutput>
</cfloop>
<!-- script -->
<cfscript>
	myArray=ArrayNew(1);//tableau a 1 dimension
	myArray = ['Jeff', 'John', 'Steve', 'Julianne'];
	for(i=1;i<=arrayLen(myArray);i++){
		writeOutput(#i# &":"& #myArray[i]#&"<br />");
	}
</cfscript>
<!--affichage:
1 : Jeff
2 : John
3 : Steve
4 : Julianne
-->


<!-- boucle rapide dans un tableau -->
<!-- balises -->
<cfloop array="#myArray#" index="item">
<cfoutput>#item#</cfoutput><br />
</cfloop>
<!--script -->
<cfscript>
	array=#myArray#;
	for (item in array) {
		writeOutput(#item# & '<br />');
	}
</cfscript>
