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


<!-- boucle pour chaque element dans un tableau -->
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
<!--affichage
Jeff
John
Steve
Julianne
-->

<!-- boucle sur une liste -->
<!-- balises -->
<cfset myList = 'Jeff,John,Steve,Julliane' />
<cfloop list="#myList#" index="item">
<cfoutput>#item#<br /></cfoutput>
</cfloop>
<!-- autre methode-->
<cfloop from="1" to="#listlen(myList)#" index="i">
<cfoutput>#i#: #listGetAt(myList, i)#<br /></cfoutput>
</cfloop>
<!--affichage
Jeff
John
Steve
Julianne
-->

<!-- boucle sur une structure -->
<!-- balises -->
<cfset myStruct = { name= 'Jeff Katersian', id= 12445, dob= '1/2/1994' } />
<cfloop collection="#myStruct#" item="key">
<cfoutput>#key#: #myStruct[key]#<br /></cfoutput>
</cfloop>
<!-- script -->
<cfscript>
for ( key in myStruct) {
writeOutput('#key#: #myStruct[key]#<br />');
}
</cfscript>
<!--affichage
NAME: Jeff Katersian
DOB: 1/2/1994
ID: 12445
-->

<!-- boucle sur une requete -->
<!--init -->
<cfscript>
myQuery = queryNew("id,user");
queryAddRow(myQuery);
querySetCell(myQuery, 'id', '1');
querySetCell(myQuery, 'user', 'Jeff');
queryAddRow(myQuery);
querySetCell(myQuery, 'id', '2');
querySetCell(myQuery, 'user', 'John');
queryAddRow(myQuery);
querySetCell(myQuery, 'id', '3');
querySetCell(myQuery, 'user', 'Steve');
</cfscript>
<!--balises -->
<cfloop query="myQuery">
<cfoutput>#myQuery.id# #myQuery.user#<br /></cfoutput>
</cfloop>
<!-- script -->
<cfscript>
for ( row in myQuery ) {
writeOutput('#row.id#: #row.user# <br />');
}
</cfscript>
<!--affichage
1 Jeff
2 John
3 Steve
-->