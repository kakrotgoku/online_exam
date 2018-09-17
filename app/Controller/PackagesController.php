<?php

class PackagesController extends AppController
{
    public $helpers = array('Paginator', 'Js' => array('Jquery'));
    public $components = array('Paginator', 'RequestHandler');
    var $paginate = array('page' => 1, 'order' => array('Package.id' => 'desc'));

    public function index()
    {
        $this->Paginator->settings = $this->paginate;
        $this->Paginator->settings['conditions'] = array('Package.status' => 'Active','Package.package_type <>'=>'F');
        $this->Paginator->settings['limit'] = $this->pageLimit;
        $this->Paginator->settings['maxLimit'] = $this->maxLimit;
        $this->set('Package', $this->Paginator->paginate());
        if ($this->request->is('ajax')) {
            $this->render('index', 'ajax'); // View, Layout
        }

    }

    public function crm_index()
    {
        return $this->redirect(array('crm' => false, 'controller' => 'Packages', 'action' => 'index'));
    }

    public function view($id)
    {
        $this->layout = null;
        $this->set('post', $this->Package->findByIdAndStatus($id, 'Active'));
    }

    public function rest_index()
    {
        try {
            $response = $this->Package->find('all', array('conditions' => array('Package.status' => 'Active'), 'order' => array('Package.id' => 'desc')));
            $status = true;
            $message = __('Package fetch successfully');
            $currency = $this->currencyArr['Currency']['short'];
        } catch (Exception $e) {
            $message = ($e->getMessage());
        }
        $this->set(compact('status', 'message', 'currency', 'response'));
        $this->set('_serialize', array('status', 'message', 'currency', 'response'));
    }

    public function singleproduct($id)
    {
        if (!$id) {
            $this->Session->setFlash(__('Invalid Post'), 'flash', array('alert' => 'danger'));
            $this->redirect(array('action' => 'index'));
        }
        $post = $this->Package->findByIdAndStatus($id, 'Active');
        if (!$post) {
            $this->Session->setFlash(__('Invalid Post'), 'flash', array('alert' => 'danger'));
            $this->redirect(array('action' => 'index'));
        }
        $this->set('post', $post);
        $response = $this->Package->find('all', array('conditions' => array('Package.status' => 'Active', 'Package.package_type <>' => 'F'), 'order' => array('Package.id' => 'ASC')));
        $this->set('Packages', $response);
    }

}