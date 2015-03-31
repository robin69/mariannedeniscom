<?php

class Paybox extends PaymentModule
{
    function __construct()
    {
        $this->name = 'paybox';
        $this->tab = 'Payment';
        $this->version = 2.5;

        parent::__construct();

		$this->page = basename(__FILE__, '.php');
        $this->displayName = $this->l('Paybox');
        $this->description = '';
    }

    function install()
    {		
        return (parent::install() AND $this->registerHook('payment') AND $this->registerHook('orderConfirmation'));
    }
	
    public function hookOrderConfirmation($params)
	{
		global $smarty, $cookie;
		
		if ($params['objOrder']->module != $this->name)
			return;
			
		if ($params['objOrder']->valid)
			$smarty->assign(array('status' => 'ok', 'id_order' => $params['objOrder']->id));
		else
			$smarty->assign('status', 'failed');
		return $this->display(__FILE__, 'hookorderconfirmation.tpl');
	}

    function getContent()
    {
		if (Tools::isSubmit('submitPaybox'))
		{
			Configuration::updateValue('PBX_SITE', Tools::getValue('PBX_SITE'));
			Configuration::updateValue('PBX_RANG', Tools::getValue('PBX_RANG'));
			Configuration::updateValue('PBX_ID', Tools::getValue('PBX_ID'));
			echo '<div class="conf confirm"><img src="../img/admin/ok.gif"/>'.$this->l(' Configuration updated').'</div>';
		}
		if (Tools::isSubmit('submitPaybox2'))
		{
			Configuration::updateValue('PBX_3X', Tools::getValue('PBX_3X'));
			Configuration::updateValue('PBX_DELAY', Tools::getValue('PBX_DELAY'));
			echo '<div class="conf confirm"><img src="../img/admin/ok.gif"/>'.$this->l(' Options updated').'</div>';
		}
	
		echo '<h2>'.$this->displayName.'</h2>
		<div class="clear">&nbsp;</div>
		<form action="'.htmlentities($_SERVER['REQUEST_URI']).'" method="post">
		<fieldset><legend>'.$this->l('Settings').'</legend>
			<label>'.$this->l('Site number (TPE)').'</label>
			<div class="margin-form">
				<input type="text" name="PBX_SITE" value="'.Tools::getValue('PBX_SITE', Configuration::get('PBX_SITE')).'" />
			</div>
			<div class="clear">&nbsp;</div>
			<label>'.$this->l('Rang (2 digits)').'</label>
			<div class="margin-form">
				<td><input type="text" name="PBX_RANG" value="'.Tools::getValue('PBX_RANG', Configuration::get('PBX_RANG')).'" />
			</div>
			<div class="clear">&nbsp;</div>
			<label>'.$this->l('Paybox ID').'</label>
			<div class="margin-form">
				<input type="text" name="PBX_ID" value="'.Tools::getValue('PBX_ID', Configuration::get('PBX_ID')).'" />
			</div>
			<div class="clear">&nbsp;</div>
			<div class="margin-form">
				<input class="button" name="submitPaybox" value="'.$this->l('Update settings').'" type="submit" />
			</div>
		</form>
		</fieldset>
		<div class="clear">&nbsp;</div>
		<form action="'.htmlentities($_SERVER['REQUEST_URI']).'" method="post">
		<fieldset><legend>'.$this->l('Options').'</legend>
			<label>'.$this->l('Installments').'</label>
			<div class="margin-form">
				<input type="radio" name="PBX_3X" value="0" '.(Tools::getValue('PBX_3X', Configuration::get('PBX_3X')) == 0 ? 'checked="checked"' : '').'>&nbsp;&nbsp;'.$this->l('1 installement').'&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="PBX_3X" value="1" '.(Tools::getValue('PBX_3X', Configuration::get('PBX_3X')) == 1 ? 'checked="checked"' : '').'>&nbsp;&nbsp;'.$this->l('3 installments').'&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="PBX_3X" value="2" '.(Tools::getValue('PBX_3X', Configuration::get('PBX_3X')) == 2 ? 'checked="checked"' : '').'>&nbsp;&nbsp;'.$this->l('both').'
			</div>
			<div class="clear">&nbsp;</div>
			<label>'.$this->l('Days between installments').'</label>
			<div class="margin-form">
				<input type="text" name="PBX_DELAY" value="'.intval(Tools::getValue('PBX_DELAY', Configuration::get('PBX_DELAY'))).'" />
			</div>
			<div class="clear">&nbsp;</div>
			<div class="margin-form">
				<input class="button" name="submitPaybox2" value="'.$this->l('Update settings').'" type="submit" />
			</div>
		</fieldset>
		</form>
		<div class="clear">&nbsp;</div>
		<fieldset>
			<legend>PrestaStore</legend>
			'.$this->l('This module has been developped by PrestaShop and can only be sold through').' <a href="http://www.prestastore.com">www.prestastore.com</a>.<br />
			'.$this->l('Please report all bugs to').' <a href="mailto:contact@prestastore.com">contact@prestastore.com</a> '.$this->l('or using our').' <a href="http://www.prestastore.com/contact-form.php">'.$this->l('contact form').'</a>.
		</fieldset>';
    }

	
function loadKey($keyfile, $pub=true, $pass='')
{
	$keyfile = dirname(__FILE__).'/pubkey.pem';
	$fp = $filedata = $key = FALSE;                         // initialisation variables
	$fsize =  filesize( $keyfile );                         // taille du fichier
	if( !$fsize ) return FALSE;                             // si erreur on quitte de suite
	$fp = fopen( $keyfile, 'r' );                           // ouverture fichier
	if( !$fp ) return FALSE;                                // si erreur ouverture on quitte
	$filedata = fread( $fp, $fsize );                       // lecture contenu fichier
	fclose( $fp );                                          // fermeture fichier
	if( !$filedata ) return FALSE;                          // si erreur lecture, on quitte
	if( $pub )
		$key = openssl_pkey_get_public( $filedata );        // recuperation de la cle publique
	else                                                    // ou recuperation de la cle privee
		$key = openssl_pkey_get_private( array( $filedata, $pass ));
	return $key;                                            // renvoi cle ( ou erreur )
}

// comme precise la documentation Paybox, la signature doit être
// obligatoirement en dernière position pour que cela fonctionne

function GetSignedData( $qrystr, &$data, &$sig, $url )      // renvoi les donnes signees et la signature
{
    $pos = strrpos( $qrystr, '&' );                         // cherche dernier separateur
    $data = substr( $qrystr, 0, $pos );                     // et voila les donnees signees
    $pos= strpos( $qrystr, '=', $pos ) + 1;                 // cherche debut valeur signature
    $sig = substr( $qrystr, $pos );                         // et voila la signature
    if( $url ) $sig = urldecode( $sig );                    // decodage signature url
    $sig = base64_decode( $sig );                           // decodage signature base 64
}

// $querystring = chaine entière retournée par Paybox lors du retour au site (méthode GET)
// $keyfile = chemin d'accès complet au fichier de la clé publique Paybox

function PbxVerSign( $qrystr, $keyfile, $url )             // verification signature Paybox
{
    $key = self::loadKey($keyfile);                             // chargement de la cle
    if( !$key ) return -1;                                  // si erreur chargement cle
//  penser à openssl_error_string() pour diagnostic openssl si erreur
    self::GetSignedData( $qrystr, $data, $sig, $url );            // separation et recuperation signature et donnees
    return openssl_verify( $data, $sig, $key );             // verification : 1 si valide, 0 si invalide, -1 si erreur
}



    function hookPayment($params)
    {
		global $cart, $smarty;
		
		$customer = new Customer(intval($cart->id_customer));
		if (!Validate::isLoadedObject($customer))
			die(Tools::displayError());

		$pbx_site = Configuration::get('PBX_SITE');
		$pbx_rang = Configuration::get('PBX_RANG');
		$pbx_id = Configuration::get('PBX_ID');
		$pbx_retour = 'm:M;r:R;t:T;a:A;b:B;p:P;c:C;s:S;y:Y;e:E;d:D;k:K';
		$pbx_total = (int)sprintf('%f', number_format($cart->getOrderTotal(), 2, '.', '') * 100);
		$pbx_confurl = urlencode('http://'.$_SERVER['HTTP_HOST'].__PS_BASE_URI__.'order-confirmation.php?id_cart='.$cart->id.'&id_module='.$this->id.'&key='.$customer->secure_key);
		// If Error code -4, remove the // in the next line and ADD it in the line before.
		// $pbx_confurl = urlencode('http://'.$_SERVER['HTTP_HOST'].__PS_BASE_URI__.'history.php');
		$pbx_cancelurl = urlencode('http://'.$_SERVER['HTTP_HOST'].__PS_BASE_URI__.'order.php?step=3');
		$pbx_link = '/cgi-bin/modulev2.cgi?PBX_MODE=1&PBX_SITE='.$pbx_site.'&PBX_RANG='.$pbx_rang.'&PBX_IDENTIFIANT='.$pbx_id.'&PBX_LANGUE=FRA&PBX_RETOUR='.$pbx_retour.'&PBX_DEVISE=978&PBX_PORTEUR='.$customer->email;
		// Test interface, remove the // in the next line. USE YOUR OWN IDs.
		// $pbx_link .= '&PBX_PAYBOX=https://preprod-tpeweb.paybox.com/cgi/MYchoix_pagepaiement.cgi&PBX_BACKUP1=https://preprod-tpeweb.paybox.com/cgi/MYchoix_pagepaiement.cgi';
		$pbx_link .= '&PBX_ANNULE='.$pbx_cancelurl.'&PBX_EFFECTUE='.$pbx_confurl.'&PBX_REFUSE='.$pbx_confurl;
		$pbx_link .= '&PBX_REPONDRE_A='.urlencode('http://'.$_SERVER['HTTP_HOST'].__PS_BASE_URI__.'/validation.php');

		$pbx_3x = Configuration::get('PBX_3X');
		$display = '';
		if ($pbx_3x == 0 OR $pbx_3x == 2)
		{
			$smarty->assign('cashpbx_link', $pbx_link.'&PBX_CMD='.intval($cart->id).'&PBX_TOTAL='.$pbx_total);
			$smarty->assign('pbx_picture', 'paybox');
			$smarty->assign('pbx_text', $this->l('Pay by credit card with Paybox'));
			$display .= $this->display(__FILE__, 'hookpayment.tpl');
		}
		if ($pbx_3x == 1 OR $pbx_3x == 2)
		{
			$delay = intval(Configuration::get('PBX_DELAY'));
			$day1 = strftime('%d/%m/%Y', strtotime('+'.$delay.' day'));
			$day2 = strftime('%d/%m/%Y', strtotime('+'.($delay * 2).' day'));
			$amount1 = intval($pbx_total / 3);
			$amount2 = intval($pbx_total - $amount1 - $amount1);
			$smarty->assign('notcashpbx_link', $pbx_link.'&PBX_CMD=x'.intval($cart->id).'&PBX_TOTAL='.$amount1.'&PBX_2MONT1='.$amount1.'&PBX_2MONT2='.$amount2.'&PBX_DATE1='.$day1.'&PBX_DATE2='.$day2);
			$smarty->assign('pbx_picture', 'paybox3x');
			$smarty->assign('pbx_text', $this->l('Pay by credit card in 3 installments with Paybox'));
			$display .= $this->display(__FILE__, 'hookpayment.tpl');
		}
		return $display;
	}
}

?>
