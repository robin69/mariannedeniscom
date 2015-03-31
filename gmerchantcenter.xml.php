<?php
include(dirname(__FILE__).'/config/config.inc.php');
include(dirname(__FILE__).'/init.php');
include(_PS_MODULE_DIR_.'/gmerchantcenter/gmerchantcenter.php');

$language = Language::getLanguage((int)($_GET['id_lang']));
$country = addslashes(strip_tags($_GET['country']));
$currency_iso = addslashes(strip_tags($_GET['currency_iso']));
$currency = new Currency((int)(Currency::getIdByIsoCode($currency_iso)));
$id_shop = (int)($_GET['id_shop']);
$feed = new GMerchantCenter();

if ($language && array_key_exists($language['iso_code'], $feed->gMerchantCenterCountries) 
&& array_key_exists($country, $feed->gMerchantCenterCountries[$language['iso_code']]) 
&& isset($currency_iso) && !empty($currency_iso) && Validate::isLoadedObject($currency)
&& isset($id_shop) && !empty($id_shop))
	$feed->outputXML($id_shop, $language, $country, $currency_iso);
else
	die('invalid country, language, id_shop or currency parameter');
?>