<?php 

Class Contact_us
{
function contact($POST)
	{
		$DB = new Database();

		$_SESSION['error'] = "";
		if(isset($POST['email']) && isset($POST['message']))
		{
			$arr['email'] = $POST['email'];
			$arr['name'] = $POST['name'];
			$arr['subject'] = $POST['subject'];
			$arr['message'] = $POST['message'];
			$arr['date'] = date("Y-m-d H:i:s");

			$query = "INSERT into message (email,name,subject,message,date) values (:email,:name,:subject,:message,:date)";
			$data = $DB->write($query,$arr);
			if($data)
			{
				header("Location:". ROOT . "home");
				die;
			}
		}else {
			$_SESSION['error'] = "Please enter a valid username and password";
		}
	}
}