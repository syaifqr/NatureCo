<?php 

Class Contact extends Controller
{
	function index()
	{
		$data['page_title'] = "Contact Us";

		if(isset($_POST['email']) && isset($_POST['message']))
		{
			$user = $this->loadModel("contact_us");
			$user->contact($_POST);
		}

		$this->view("NatureCo/contact",$data);
	}

}