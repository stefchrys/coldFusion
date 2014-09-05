


<!-- affectation variable simple -->

<!-- tag -->
<cfset prenom="léo" />
<cfset nombre= 10 />

<!-- script -->
<cfscript>
	prenom="léo";
	nombre=10;
</cfscript>

<!-- contenu de la variable -->

<!-- tag -->
<fdump var= "#prenom#" />

<!-- script -->
<cfscript>
	writeDump(#prenom#);
</cfscript>

