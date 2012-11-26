<?php
class JosPddsController extends AppController {

	var $name = 'JosPdds';
	
	#criteres de tri
	var $paginate = array(
        'limit' => 100,
        'order' => array(
            'JosPdd.PDDINo' => 'asc'
        )
    );
    
	function index() {
		$this->JosPdd->recursive = 0;
		if($this->data['JosPdd']['q']) {
					$input = $this->data['JosPdd']['q']; 
					#echo "input: " .$input;  //tests
					
					# sanitize the query
					App::import('Sanitize');
					$q = Sanitize::escape($input);
					/*  `` varchar(255) DEFAULT NULL,
  `` varchar(255) DEFAULT NULL,
  `` varchar(255) DEFAULT NULL,
  `PDDNoRue` varchar(255) DEFAULT NULL,
  `PDDTele` varchar(255) DEFAULT NULL,
  `PDDLieu` varchar(255) DEFAULT NULL,
  `PDDEmail` varchar(255) DEFAULT NULL,
  `PDDRem` text,*/
					
					$options = array(
					"JosPdd.PDDTexte LIKE '%" .$q ."%'" ." OR JosPdd.PDDNom LIKE '%" .$q ."%'" ." OR JosPdd.PDDAdr LIKE '%" .$q ."%'"
					);
					$this->set(array('josPdds' => $this->paginate('JosPdd', $options))); 
		} else {
		$this->set('josPdds', $this->paginate());
		}
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid jos pdd', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('josPdd', $this->JosPdd->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->JosPdd->create();
			if ($this->JosPdd->save($this->data)) {
				$this->Session->setFlash(__('The jos pdd has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The jos pdd could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid jos pdd', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->JosPdd->save($this->data)) {
				$this->Session->setFlash(__('The jos pdd has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The jos pdd could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->JosPdd->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for jos pdd', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->JosPdd->delete($id)) {
			$this->Session->setFlash(__('Jos pdd deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Jos pdd was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
	function miseajour() { //pour mettre a jour les PDD a partir du fichier access
	}
/* liste des emails des PDD utilisables dynamiquement dans un email */	
	function emails() {
				//do not display layout
		$this->layout = '';

		$this->JosPdd->recursive = 0;
		$this->set('josPdds', $this->paginate());
	}
	
	/* liste dynamique des PDD pour une question limesurvey */	
	function lime() {
			
}
}
