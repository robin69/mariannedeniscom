<?php

include(dirname(__FILE__).'/config/config.inc.php');
include(dirname(__FILE__).'/modules/paybox/paybox.php');

$error = '';
$paybox = new Paybox();
$values = strtolower($_SERVER['REQUEST_METHOD']) == 'post' ? $_POST : $_GET;
$neededVars = array('m', 'r', 't', 'b', 'p', 'c', 's'/*, 'e'*/, 'd' /*, 'k'*/);
foreach ($neededVars AS $key => $value)
    if (!isset($values[$value]))
        $error .= '- data from the payment site answer are missing ('.$value.') ';

$authRemoteAddr = array('195.101.99.76', '195.101.99.77', '195.101.99.72', '62.39.109.166', '194.50.38.6', '80.13.22.107', '194.2.122.158', '194.2.160.66');
if (!in_array($_SERVER['REMOTE_ADDR'], $authRemoteAddr))
	$error .= '- answer does not come from a secure remote address ';
	
ini_set('display_errors', 'on');
$qrystr = $paybox->PbxVerSign(Tools::getValue('signeddata'), 'pubkey.pem', Tools::getValue('urlenc'));die ('kiko');
if ($qrystr = 1)		; // OK, c'est cool.
else if( $qrystr == 0 )  
	$error .= '- signature has been falsified.';
else if ($qrystr == -1)
	$error .= '- Error during the signature verification.';


if (!isset($values['a']) OR empty($values['a']))
	$error .= '- no autorisation number ';

$x3 = false;
if (substr($values['r'],0, 1) == 'x')
{
	$x3 = true;
	$id_cart = substr($values['r'],1);
}
else
	$id_cart = $values['r'];

$cart = new Cart(intval($id_cart));
if (!$cart->id)
    die('cart not valid');

if ($id_order = intval(Order::getOrderByCartId($cart->id)))
{
	if (empty($error) AND isset($values['a']) AND !empty($values['a']) AND intval($values['a']))
	{
		$order = new Order($id_order);
		$order->total_paid_real = $values['m'] / 100;
		$order->update();
		
		if ($order->getCurrentState() != _PS_OS_PAYMENT_)
		{
			$products = $cart->getProducts();
			foreach ($products as $product)
			{
				Product::updateQuantity($product);
				Hook::updateQuantity($product, $order);
			}
		}
		
		$history = new OrderHistory();
		$history->id_order = $id_order;
		$history->changeIdOrderState(intval(_PS_OS_PAYMENT_), $id_order);
		$history->addWithemail(true, array());
	}
	die($error);
}
	
if (!empty($error))
{
	$error .= '<br />GET '.print_r($_POST, true).'<br /> POST '.print_r($_GET, true);
	$paybox->validateOrder($cart->id, _PS_OS_ERROR_, 0, $paybox->displayName.($x3 ? ' x3' : ''), $error);
}
else
{
	$orderMessage = '';
	foreach ($values as $key => $value)
		$orderMessage .= $key.': '.$value.'<br />';
	if ($x3)
	{
		$total_paid = ($values['m'] * 3) / 100;
		if (($cart->getOrderTotal() - $total_paid) < 2)
			$total_paid = $cart->getOrderTotal();
	}
	else 
		$total_paid = $values['m'] / 100;
		
	$paybox->validateOrder($cart->id, _PS_OS_PAYMENT_, $total_paid, $paybox->displayName.($x3 ? ' x3' : ''), $orderMessage);
}

?>
