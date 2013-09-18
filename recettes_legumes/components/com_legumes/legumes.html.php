<style>
label {
font-weight: bold;
}
td {
	vertical-align: top;
	}
	</style>
<?php



###############################
#list all vegetables / montrer tous les légumes
class HTML_legumes {
	function showLegumes($rows, $options) {

#nombre de colonnes dans le tableau récapitulatif
$numcols=3;
$max=count($rows);
	echo '<table>';
$ligne=1; $i=0; $test=0;
		foreach($rows as $row) {
			$link = JRoute::_('index.php?option=' .
			$option . '&id=' .$row->id .'&task=view');
			if($ligne==1) {
				echo "<tr>";
				}
			echo '<td class="tdlegumes"><a href="' .$link .'">' .$row->legume .'<br /><img src="http://www.cocagne.ch/cms/images/stories/legumes/th_' .$row->id .'.jpg" widh="50" border="0"><br />';
			echo '</a></td>';
			if(($ligne/$numcols==intval($ligne/$numcols))||$ligne==$max) {
				echo "</tr><tr><td colspan=\"" .$numcols ."\">&nbsp;</td></tr><tr>";
				}
			$ligne=$ligne+1;
		}
	echo '<td></td></tr></table>';
	}

###############################
#detail one vegetable / montrer le détail pour un légume

function showLegume($legumes, $options) {
	  	foreach($legumes as $legume) {
		$lelegume=$legume->legume;
	?>
	<style>
td {
padding: 10px;
border: thin dashed;
}
.imagelegume {
	width: 400px;
}
</style>
     <table class="admintable">
      <tr>

         <td colspan="2">
            <h1><?php echo $lelegume;?></h1>
         <img class="imagelegume" src="http://www.cocagne.ch/cms/images/stories/legumes/<?php echo $legume->id; ?>.jpg"></td>
      </tr>

      
<tr>
   <td>
<label for="printemps">
   <?php echo JText::_( 'Saisons' ); ?>:
</label>
   </td>
   <td>
Printemps <input type="checkbox" name="printemps" id="printemps" value="1"
<?php
if ($legume->printemps==1){
echo " checked";
}
?>
>
&nbsp;Été <input type="checkbox" name="ete" id="ete" value="1"
<?php
if ($legume->ete==1){
echo " checked";
}
?>
>
<br>
Automne <input type="checkbox" name="automne" id="automne" value="1"
<?php
if ($legume->automne==1){
echo " checked";
}
?>
>
&nbsp;
Hiver <input type="checkbox" name="hiver" id="hiver" value="1"
<?php
if ($legume->hiver==1){
echo " checked";
}
?>
>

   </td>
</tr>
<?
if(strlen($legume->generalite)>1) {
	?>
<tr>
   <td>
<label for="generalite">
   <?php echo JText::_( 'Généralité' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->generalite);?></textarea>
   </td>
</tr>
<?
}
?>

<?
if(strlen($legume->origine)>1) {
	?>
<tr>
   <td>
<label for="origine">
   <?php echo JText::_( 'Origine' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->origine);?></textarea>
   </td>
</tr>
<?
}
?>

<?
if(strlen($legume->choix)>1) {
	?>
	
<tr>
   <td>
<label for="choix">
   <?php echo JText::_( 'Choix' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->choix);?></textarea>
   </td>
</tr>
<?
}
?>
<?
if(strlen($legume->preparation)>1) {
	?>
	
<tr>
   <td>
<label for="preparation">
   <?php echo JText::_( 'Préparation' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->preparation);?></textarea>
   </td>
</tr>
<?
}
?>
<?
if(strlen($legume->conservation)>1) {
	?>
<tr>
   <td>
<label for="conservation">
   <?php echo JText::_( 'Conservation' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->conservation);?></textarea>
   </td>
</tr>
<?
}
?>
<?
if(strlen($legume->conseils)>1) {
	?>
<tr>
   <td>
<label for="conseils">
   <?php echo JText::_( 'Conseils' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->conseils);?></textarea>
   </td>
</tr>
<?
}
?>
<?
if(strlen($legume->conseils_sante)>1) {
	?>
<tr>
   <td>
<label for="conseils_sante">
   <?php echo JText::_( 'Conseils santé' ); ?>:
</label>
   </td>
   <td>
<?php echo nl2br($legume->conseils_sante);?></textarea>
   </td>
</tr>
<?
}
?>
<?
if(strlen($legume->remarques)>1) {
	?>
<tr>
   <td>
<label for="remarques">
   <?php echo JText::_( 'Remarques' ); ?>:
</label>
   </td>
   <td>
<?php 
$chaine=$legume->remarques;
$chaine = preg_replace("/(http:\/\/)(([[:punct:]]|[[:alnum:]]=?)*)/","<a href=\"\\0\">\\0</a>",$chaine);
echo nl2br($chaine);?></textarea>
   </td>
</tr>
<?
}
?>

<tr>
   <td>
<label for="remarques">
   <?php echo JText::_( 'Idées de recette' ); ?>:
</label>
   </td>
   <td style="padding-left: 20px;">
<ul>
<?php
$lelegume=preg_replace("/'/","%",$lelegume);
$lelegume=preg_replace("/-/","%",$lelegume);
$lelegume=preg_replace("/ /","%",$lelegume);
/*
 * cas particulier: ail d'ours, remplacer l'apostrophe
 */
	  	if($legume->id==1) {
$lelegume="ail%ours";	
}
   $query="SELECT * FROM cocagne_recettes WHERE 
    `titre` LIKE '%" .$lelegume ."%' OR 
   `ingredients` LIKE '%" .$lelegume ."%' OR 
   `preparation` LIKE '%" .$lelegume ."%'";
   
   /*
    * cas particulier: rave, incluse dans colrave et betterave
    */
   if($legume->id==93){
$query="
 SELECT * FROM cocagne_recettes 
 WHERE 
 (`titre` LIKE '%Rave%' 
 OR `ingredients` LIKE '%Rave%' 
 OR `preparation` LIKE '%Rave%') 
 AND (`titre` NOT LIKE '%betterave%' 
 AND `ingredients` NOT LIKE '%betterave%' 
 AND `preparation` NOT LIKE '%betterave%') 
 AND (`titre` NOT LIKE '%colrave%' 
 AND `ingredients` NOT LIKE '%colrave%' 
 AND `preparation` NOT LIKE '%colrave%') 
";

   }   
//echo $query;
      $sql=mysql_query($query);
            if(!$sql) {
         echo "SQL error: " .mysql_error() ."<br>exiting process"; exit;
         }
      #echo "<hr>";
      $j=mysql_num_rows($sql);     
      $i=0;
      while($i<$j){
         $link = JRoute::_('index.php?option=com_recettes&vue=view&id='.mysql_result($sql,$i,'id'));
         echo '<li><a href="' . $link . '">';
         echo utf8_decode(utf8_encode(mysql_result($sql,$i,'titre')));
         echo "</a>";
         $i++;
      }

?>
</ul>
   </td>
</tr>
</table>
<table>

      <!-- other images -->
      <?
$nbcol=2;
$letexte= "<table><tr>";
$path="./images/stories/legumes/" .$legume->id ."/";
if(file_exists($path)) {
		?>
		 <tr>
		  <td>
		<?
	$fd=dir($path);
	$path=preg_replace("/^../","",$path);
	#create array
	while($v = $fd->read()) {
	$arr[]=$v;
	}
	$fd->close();
	#sort array, reverse sort would be function arsort()
	sort($arr);
	#make a loop with filename
	$t=0;
	foreach ($arr as $elem)  {
		$fichier="$elem";
	if (preg_match("/^.*jpg$/",$fichier)) { # show only jpg
			$text=$fichier;
				$laclasse="";
				 $repertoire=0;
				$t++;
				$test=($t/$nbcol)-intval($t/$nbcol);
					if($test=="0") {
						$ligF="</tr>\n<tr>";
					} else {
						$ligD="";
						$ligF="";
					}
				$letexte.=  "<td><img src='".$path.$fichier."' class='$laclasse' style='width: 300px;'>";
				$letexte.= "\n</td>$ligF";
		}
	}
	$letexte.=  "</table>";
	//print images
	echo $letexte;
		  ?>
		  </td></tr>
		  <?
}
//end additionnal images back to main stream
?>


   </table>


              
<?

			$link='index.php?option="' .$option;
			echo '<hr><a href="' .$link .'">Retour aux légumes</a>';

		}
	}
}
?>
