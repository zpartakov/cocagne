var state = 'none';

function showhide(layer_ref) {

if (state == 'block') {
state = 'none';
}
else {
state = 'block';
}
if (document.all) { //IS IE 4 or 5 (or 6 beta)
eval( "document.all." + layer_ref + ".style.display = state");
}
if (document.layers) { //IS NETSCAPE 4 or below
document.layers[layer_ref].display = state;
}
if (document.getElementById &&!document.all) {
hza = document.getElementById(layer_ref);
hza.style.display = state;
}
}

function vide_recherche(id) {
	document.getElementById(id).value="";
}

/*
 * js functions for dj
 * */
 
function changedj(champ,npers) {
valeur=document.getElementById(champ).value;
 /*
 if (!document.getElementById(champ).checked) {
	valeur="on";
	} else {
	valeur="off";
	}
	*/
	url="changer?id='"+champ+"'&val="+npers;
	/*update db value*/
	location.href=url;
}

/* une fonction pour mettre à jour le nombre de places pour une DJ, ajax-style
 * */
function metajourplaces(idjour) {
npers=document.getElementById("placeprevues"+idjour).value;
	url="./metajourplaces?id="+idjour+"&val="+npers;
	/*alert(url);
	update db value*/
	location.href=url;
}

function metajourplacesajax(idjour,valeur) {
	/*alert("id: "+idjour +"\nvaleur: "+valeur);*/
/*npers=document.getElementById("placeprevues"+idjour).value;
	url=""+idjour+"&val="+npers;
	location.href=url;*/
		$.ajax({
	   type: "GET",
	   url: "./metajourplaces?id=" + idjour + "&val="+valeur,
	   error:function(msg){
		 alert( "Error !: " + msg );
	   },
	   success:function(data){
		   /*lid="#tr"+id;*/
		   /*cache la tache déplacée*/
		   /*$(lid).fadeOut();*/
		}
	});
}
function metajourplaces2(idjour) {
npers=document.getElementById("placeprevues"+idjour).value;
	url="./jos_demiejournees/metajourplaces?id="+idjour+"&val="+npers;
	/*alert(url);
	update db value*/
	location.href=url;
}

function metajourstatut(idjour) {
npers=document.getElementById("changestatutDJ"+idjour).checked;
	url="./jos_demiejournees/metajourstatut?id="+idjour+"&val="+npers;
	/*alert(url);
	update db value*/
	location.href=url;
}

/* une fonction pour mettre à jour le nombre de places par défaut pour une DJ, ajax-style
 * */
function defaultnpersjourj(idjour) {
npers=document.getElementById("placeprevues"+idjour).value;
	url="./metajourplaces?id="+idjour+"&val="+npers;
	/*alert(url);
	update db value*/
	location.href=url;
}


function changerem(champ,date) {
valeur=document.getElementById(champ).value;
/* // Escapes single quote, double quotes and backslash characters in a string with backslashes  
    // 
    // version: 1004.2314
    // discuss at: http://phpjs.org/functions/addslashes    // +   original by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
valeur=valeur.replace(/[\\"']/g, '\\$&').replace(/\u0000/g, '\\0');
*/
	/*update db value*/
	url='changer?id="'+date+'"&rem="'+valeur+'"';
	
	   location.href=url;
}

