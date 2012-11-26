<div id="cakephp-global-navigation">
<ul id="menuDeroulant">
	<!-- homepage -->
	<li>
		<a href="http://<? echo $_SERVER["HTTP_HOST"].RACINEDIR;?>">Accueil admin</a>
		<ul class="sousMenu">
			<li><a href="/">XXX main website</a></li>
			<li><a href="XXX">Administration hébergeur</a></li>
			<li><a href="XXX">@webmail</a></li>
			<li><a href="/cms/administrator/">Administration Joomla!</a></li>
			<li><a href="/cms/proposition-darticle">Nouvel article Joomla!</a></li>
			<li><a href="/cms/modifications-du-site">Modifications du site</a></li>
			<li><a href="/cms/aide">Aide</a></li>
			<li><a href="/limesurvey/admin/">Formulaires (limesurvey)</a></li>
			<li><a href="<? echo RACINEDIR;?>/pages/emails">emails</a></li>
			<li><a href="<? echo RACINEDIR;?>/pages/infosconfidentielles">Informations confidentielles</a></li>
		</ul>

	</li>

	<!-- DJ -->


	<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/correction">Demi-journées</a>
		<ul class="sousMenu">
			<li><a href="<? echo RACINEDIR;?>/jos_demiejournees">Programmation</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/correction">Corriger</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_default_schedules/">Valeurs semaine par défaut</a></li>
			<li><a href="<? echo RACINEDIR;?>/cocagne_defaults/">Valeurs par défaut</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/export">Exporter</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/intialiser">Initialiser</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_demiejournees/ajustements">Ajuster Npers</a></li>
			<li><a href="<? echo RACINEDIR;?>/dj_maintenances/edit/1">Maintenances</a></li>
			<!--<li><a href="<? echo RACINEDIR;?>/jos_demiejournees_details/archiver">Archiver</a></li>-->
		</ul>
	</li>
	<li>&nbsp;PDDs
		<ul class="sousMenu">
			<li><a href="<? echo RACINEDIR;?>/jos_pdds">Points de distribution</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_pdds/emails">Email Points de distribution</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_pdds/lime">LimeSurvey PDD</a></li>
		</ul>

	</li>
	
			<!-- Comité -->
	
	<li><a href="#">Intranet comité</a>
		<ul class="sousMenu">
			<li><a href="<? echo RACINEDIR;?>/pages/pvs_comite">PVs du comité</a>
		
			<li><a href="<? echo RACINEDIR;?>/pages/">Légumes</a></li>
		</ul>

	</li> 
	
	<!-- Cocagnards -->
	<li><a href="<? echo RACINEDIR;?>/jos_users/">Cocagnard/e/s</a>
	<ul class="sousMenu">
			<li><a href="http://www.cocagne.ch/cms/cocagnardes/modeles-mails-sitecocagnech
">Modèles mails</a></li>
			<li><a href="http://www.cocagne.ch/cms/static/passwd.php">Nvl utilisateur</a></li>
			<li><a href="http://webmail.cocagne.ch/">@webmail</a></li>
			<li><a href="http://www.cocagne.ch/commandes/admin">Gestion des commandes</a></li>
			<li><a href="<? echo RACINEDIR;?>/tbl_customers">Adresses (commandes)</a></li>	
			<li><a href="<? echo RACINEDIR;?>/livreurs">Livreu/r/se/s</a></li>
			<li><a href="<? echo RACINEDIR;?>/jos_users/export">Export</a></li>
			<li><a href="<? echo RACINEDIR;?>/tbl_customers/miseajour">Mise à jour PDD</a></li>

		</ul>
	</li>
		<!-- Recettes & légumes -->
	
	<li style="width: 200px"><a href="#">Recettes & légumes</a>
		<ul class="sousMenu">
			<li><a href="<? echo RACINEDIR;?>/cocagne_recettes/">Recettes</a>
		
			<li><a href="<? echo RACINEDIR;?>/cocagne_legumes/">Légumes</a></li>
		</ul>

	</li> 
</ul>

</div>

