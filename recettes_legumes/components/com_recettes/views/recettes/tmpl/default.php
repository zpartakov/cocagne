<style>
.recette {
padding-right: 3em;
text-align: justify;
}
a {
text-decoration: none;
}
a:hover, a:active, a:focus
{
background-color: lightgrey;
text-decoration: underline;
}
li {
padding-bottom: 0.1em;
}
</style>
<?php
/**
 * @version $Id: header.php $
 * @package    Joomla1.5
 * @subpackage inscriptions
 * @author     Fred Radeff {@link http://www.akademia.ch}
 * @author     Created on 15-May-2009
 */

// no direct access
defined( '_JEXEC' ) or die( ';)' );
$db =& JFactory::getDBO();

#get vars
$id=$_GET['id'];
$chercher=$_GET['chercher'];
$legume2search=$_GET['legume2search'];
$ordre=$_GET['ordre'];
if(!$ordre) {
	$ordre="titre";
}

setlocale(LC_TIME, "fr_fr");

function urlise($chaine) { //a function to extract urls from pages
	#echo "test urlize: <br />" .$chaine ."<br />";
	#$chaine=ereg_replace("(http://)(([[:punct:]]|[[:alnum:]]=?)*)","<a href=\"\\0\">\\0</a>",$chaine);
	$chaine = preg_replace("/(https:\/\/)(([[:punct:]]|[[:alnum:]]=?)*)/","<a href=\"\\0\">\\0</a>",$chaine);
	$chaine=preg_replace("/(http:\/\/)(([[:punct:]]|[[:alnum:]]=?)*)/","<a href=\"\\0\">\\0</a>",$chaine);
	//now replace emails
	if(!preg_match("/[a-zA-Z0-9]*\.[a-zA-Z0-9]*@/",$chaine)){
	#$chaine = ereg_replace('[-a-zA-Z0-9!#$%&\'*+/=?^_`{|}~]+@([.]?[a-zA-Z0-9_/-])*','<a href="mailto:\\0">\\0</a>',$chaine);
	#$chaine = preg_replace('/[-a-zA-Z0-9!#$%&\'*+/=?^_`{|}~]+@([.]?[a-zA-Z0-9_\/-])*/','<a href="mailto:\\0">\\0</a>',$chaine);
	}else {
	$chaine = preg_replace('/[-a-zA-Z0-9]*\.[-a-zA-Z0-9!#$%&\'*+\/=?^_`{|}~]+@([.]?[a-zA-Z0-9_\/-])*/','<a href="mailto:\\0">\\0</a>',$chaine);	
	}
	return $chaine;
}

function date_mysql_to_timestamp($date){
$date1    = explode('-',$date);
  return strftime ("%A, %d %B %Y", mktime(0,0,0,$date1[1], $date1[2],$date1[0]));
}

###### LEGUMES LIST BEGIN ########
$query="SELECT * FROM cocagne_legumes ORDER BY legume";
   #echo "Display légume" .$query; //test
   $sql=mysql_query($query);
   if(!$sql) {
   echo "SQL error: " .mysql_error() ."<br />exiting process";
   #exit;
   };
      $j=mysql_num_rows($sql);
##initialisation vars      
      $i=0; 
$legumes="<select name=\"legume2search\"><option value=\"\">--- légume ---</option>"; //
   while($i<$j){
   $legume=mysql_result($sql,$i,'legume');
     #$legumes.="<option value=\"" .$legume;
     $legumes.="<option value=\"" .ereg_replace(" /.*$","",$legume);
     $legumes.="\">" .$legume;
     $legumes.="</option>\n";
     $i++;
   }
$legumes.="</select>";

      ######### END LEGUMES LIST #####
###### PRINT SEARCH FORM BEGIN #######
	if($ordre=="titre") {
		$ordretarget="date";
		$ordretitre="Nouveautés";
	} else {
		$ordretarget="titre";
		$ordretitre="Tri alphabétique";
		
	}

?>
<form method="GET">
<input type="hidden" name="option" value="com_recettes">
<input type="text" name="chercher" size="20" value="<? echo $chercher;?>">

<?
#echo $legumes;
?>
<input type="reset">  
<input type="submit" value="Afficher">


<?
echo '&nbsp;<a href="' .$_SERVER["REQUEST_URI"] .'&ordre='.$ordretarget .'">' .$ordretitre .'</a></form><br />';

###### PRINT SEARCH FORM END #######

####### DISPLAY BEGIN #########

if($id) {
####### affichage d'une recette particulière ########
   $query="SELECT * FROM cocagne_recettes WHERE id = '" .$id ."'";
   #echo "Display receipe" .$query; //test
   $sql=mysql_query($query);
   if(!$sql) {
   echo "SQL error: " .mysql_error() ."<br />exiting process";
   #exit;
   }
   ###### affiche la recette ######

  $titre=utf8_decode(utf8_encode(mysql_result($sql,0,'titre')));
  $ingredients=nl2br(utf8_decode(utf8_encode(mysql_result($sql,0,'ingredients'))));
  $id=utf8_decode(utf8_encode(mysql_result($sql,0,'id')));  
  $preparation=nl2br(utf8_decode(utf8_encode(mysql_result($sql,0,'preparation'))));
  $date=utf8_decode(utf8_encode(mysql_result($sql,0,'date')));  
  $genre=utf8_decode(utf8_encode(mysql_result($sql,0,'genre')));  
  $image=utf8_decode(utf8_encode(mysql_result($sql,0,'image')));
  echo "<div class=\"recette\"><h1>" .$titre ."</h1>";
    if(strlen($image)>0) {
  echo "<img src=\"" .$image ."\">";
  }
  ?>
   <!-- other images -->
      <?
$nbcol=2;
$letexte= "";
$path="/XXX/images/stories/recettes/" .mysql_result($sql,0,'id') ."/";
#echo $path;
if(file_exists($path)) {
	$fd=dir($path);
	while($v = $fd->read()) {
	$arr[]=$v;
	}
	$path="/cms/images/stories/recettes/" .mysql_result($sql,0,'id') ."/";
	$fd->close();
	sort($arr);
	$t=0;
	foreach ($arr as $elem)  {
		$fichier="$elem";
	if (preg_match("/^.*jpg$/",$fichier)||preg_match("/^.*png$/",$fichier)||preg_match("/^.*gif$/",$fichier)) { # show only jpg or gif or png
			$text=$fichier;
				$laclasse="";
				 $repertoire=0;
				$t++;
				$test=($t/$nbcol)-intval($t/$nbcol);
					if($test=="0") {
						$ligF="<br/>";
					} else {
						$ligD="";
						$ligF="";
					}
				$letexte.=  "<img src='".$path.$fichier."' class='$laclasse' style='width: 300px;'>";
				$letexte.= "$ligF";
		}
	}
	//print images
	echo $letexte;

}
//end additionnal images back to main stream
  
  if($date!="0000-00-00 00:00:00") {
 # echo "<br />Date: " .date_mysql_to_timestamp($date) ."<br />";
  }
    if(strlen($genre)>0) {
  echo "Genre: " .$genre ."<br />";
}
    if(strlen($ingredients)>0) {

echo "<h2>Ingrédients</h2><em>" .$ingredients ."</em><br />";
    }  
  
  echo "<h2>Préparation</h2>" .urlise($preparation) ."<br /></div>";
        $link = JRoute::_('component/recettes/?view=recettes');

  echo '<br /><center><a href="'.$link.'">Retour aux recettes</a></center>';
} elseif($chercher) {
####### moteur de recherche ########
$chercher=preg_replace("/'/","%",$chercher);
$chercher=preg_replace('/"/',"%",$chercher);

   $query="SELECT * FROM cocagne_recettes WHERE 
   `titre` LIKE '%" .$chercher ."%' OR 
   `ingredients` LIKE '%" .$chercher ."%' OR 
   `preparation` LIKE '%" .$chercher ."%'";
      $sql=mysql_query($query);
            if(!$sql) {
         echo "SQL error: " .mysql_error() ."<br />exiting process"; exit;
         }
      $j=mysql_num_rows($sql);     
      $i=0;
      while($i<$j){
         $link = JRoute::_('index.php?option=com_recettes&vue=view&id='.mysql_result($sql,$i,'id'));
         echo '<li><a href="' . $link . '">';
         echo utf8_decode(utf8_encode(mysql_result($sql,$i,'titre')));
         echo "</a>";
         $i++;
      }
} elseif($legume2search) {
####### recherche legume ########
#£
      $query="SELECT * FROM cocagne_recettes WHERE ingredients LIKE '%" .$legume2search ."%' ORDER BY " .$ordre ." ASC";
      $sql=mysql_query($query);
         if(!$sql) {
         echo "SQL error: " .mysql_error() ."<br />exiting process"; exit;
         }
      $j=mysql_num_rows($sql);
      $i=0;
      while($i<$j){
      $link = JRoute::_('index.php?option=com_recettes&vue=view&id='.mysql_result($sql,$i,'id'));
      echo '<li><a href="' . $link . '">';
      #echo "<a href=\"index.php?option=com_recettes&view=view&id=";
      #echo mysql_result($sql,$i,'id');
      #echo "\">";
      echo mysql_result($sql,$i,'titre');
      echo "</a>";
      $i++;
      }
} else {
####### vue par défaut (liste de toutes les recettes) ########
      if($ordre=="titre") {
      $sens="ASC";
  } else {
      $sens="DESC";
  }
      $query="SELECT * FROM cocagne_recettes ORDER BY " .$ordre ." " .$sens;
  
      $sql=mysql_query($query);
         if(!$sql) {
         echo "SQL error: " .mysql_error() ."<br />exiting process"; exit;
         }
      $j=mysql_num_rows($sql);
      
      $i=0;
      while($i<$j){
      $link = JRoute::_('index.php?option=com_recettes&vue=view&id='.mysql_result($sql,$i,'id'));
      echo '<li><a href="' . $link . '">';
      echo mysql_result($sql,$i,'titre');
      echo "</a>";
      $i++;
      }
}

?>

