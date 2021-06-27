<?php session_start();

	if(isset($_GET['nm']) and isset($_GET['cat']) and isset($_GET['rate']) and isset($_GET['rent']) and isset($_GET['Price']))
	{
		//add item
		if ($_GET['Price'] == "Purchase Price") {
			$_SESSION['cart'][] = array("nm"=>$_GET['nm'],"cat"=>$_GET['cat'],"rate"=>(int)$_GET['rate'],"qty"=>"1");
		}
		else if ($_GET['Price'] == "Rent Price") {
			$_SESSION['cart'][] = array("nm"=>$_GET['nm'],"cat"=>$_GET['cat'],"rate"=>(int)$_GET['rent'],"qty"=>"1");	
		}
		else if ($_GET['Price'] == "Lend") {
			$_SESSION['cart'][] = array("nm"=>$_GET['nm'],"cat"=>$_GET['cat'],"rate"=> 0 ,"qty"=>"1");
		}
		header("location: viewcart.php");
	}
	else if(isset($_GET['id']))
	{
		//del a item
		$id = $_GET['id'];
		unset($_SESSION['cart'][$id]);
		header("location: viewcart.php");
	}
	else if(!empty($_POST))
	{
		//update qty
		foreach($_POST as $id=>$val)
		{
			$_SESSION['cart'][$id]['qty']=$val;
			header("location: viewcart.php");
		}
	}


?>