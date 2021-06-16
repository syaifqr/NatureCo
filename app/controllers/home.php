<?php 

Class Home extends Controller
{
	function index()
	{
		$data['page_title'] = "Home";

		$posts = $this->loadModel("posts");
		$result = $posts->get_all();

		$pagination = $this->loadModel("pagination");
		if($pagination->current_page_number() > 1)
		{
			$data['prev'] = $pagination->generate_link($pagination->current_page_number() - 1);
		}else {
			$pagination->current_page_number() == 1;
		}

		$data['next'] = $pagination->generate_link($pagination->current_page_number() + 1);

		$data['posts'] = $result;
		$image_class = $this->loadModel("image_class");

		if(is_array($data['posts']))
		{
			foreach ($data['posts'] as $key => $value) {
				// code...
				$data['posts'][$key]->image = $image_class->get_thumbnail($data['posts'][$key]->image); 
			}
		}

		$this->view("NatureCo/index",$data);
	}


}