<?php

// P3P Policies (http://www.w3.org/TR/2002/REC-P3P-20020416/#compact_policies)
header('P3P: CP="IDC DSP COR CURa ADMa OUR IND PHY ONL COM STA"');

require_once(dirname(__FILE__).'/init.php');

/* CSS */
$css_files[_THEME_CSS_DIR_.'global.css'] = 'all';

/* Hooks are volontary out the initialize array (need those variables already assigned) */
$smarty->assign(array(
	'HOOK_HEADER' => Module::hookExec('header'),
	'HOOK_LEFT_COLUMN' => Module::hookExec('leftColumn'),
	'HOOK_TOP' => Module::hookExec('top'),
	'static_token' => Tools::getToken(false),
	'token' => Tools::getToken(),
	'priceDisplayPrecision' => _PS_PRICE_DISPLAY_PRECISION_,
	'content_only' => intval(Tools::getValue('content_only'))
));

if(isset($css_files) AND !empty($css_files)) $smarty->assign('css_files', $css_files);
if(isset($js_files) AND !empty($js_files)) $smarty->assign('js_files', $js_files);

if ($page_name == 'product' AND isset($_GET['id_product']))
{   
    $product = new Product($_GET['id_product'], false, intval($cookie->id_lang));
    if (Validate::isLoadedObject($product))
        $smarty->assign('product', $product);

    $images = $product->getImages(intval($cookie->id_lang));
    foreach ($images AS $k => $image)
        if ($image['cover'])
        {
            $cover = $image;
            $cover['id_image'] = intval($product->id).'-'.$cover['id_image'];
            $cover['id_image_only'] = intval($image['id_image']);
        }
    if (!isset($cover))
        $cover = array('id_image' => Language::getIsoById($cookie->id_lang).'-default', 'legend' => 'No picture', 'title' => 'No picture');
    $smarty->assign('cover', $cover);
}

$smarty->display(_PS_THEME_DIR_.'header.tpl');

?>
