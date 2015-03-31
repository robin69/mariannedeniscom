<?php /* Smarty version 2.6.20, created on 2013-11-20 11:33:21
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/gmerchantcenter/taxonomy-list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/gmerchantcenter/taxonomy-list.tpl', 26, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Google Taxonomy</title>
<style type="text/css">
<?php echo '
body, span {
font-size: 11px; font-family: Arial, sans-serif;
}
input[type=submit] {
background-color: green; color: white; font-size: 16px; font-weight: bold;	
}
img {
border: 0;	
}
'; ?>

</style>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['path']; ?>
/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['autocmp_js']; ?>
"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['autocmp_css']; ?>
" />
</head>

<body>

<h2><?php echo smartyTranslate(array('s' => 'Google product categories for','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['glang']; ?>
</h2>

<p style="color: green; font-weight: bold;"><?php echo smartyTranslate(array('s' => 'INSTRUCTIONS: for each category, you can do keyword search that represents the category, using as many words as you wish. Simply separate each word by a space. The field will autocomplete with possible matches that contain all the words you entered. Then simply select the best match from the list.','mod' => 'gmerchantcenter'), $this);?>
</p>

<form action="index.php?tab=AdminModules&configure=<?php echo $this->_tpl_vars['module_name']; ?>
&token=<?php echo $this->_tpl_vars['token']; ?>
" method="post">
<?php $this->assign('cnt', '1'); ?>
<?php $_from = $this->_tpl_vars['shop_categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cat']):
?>
	<p>
	<strong style="color: orange;"><?php echo smartyTranslate(array('s' => 'Shop category','mod' => 'gmerchantcenter'), $this);?>
:</strong> <?php echo $this->_tpl_vars['cat']['path']; ?>

	<br />
	<strong style="color: green;"><?php echo smartyTranslate(array('s' => 'Google category','mod' => 'gmerchantcenter'), $this);?>
:</strong>
	<input class="autocmp" style="font-size: 11px; width: 800px;" type="text" name="gcats[<?php echo $this->_tpl_vars['cat']['id_category']; ?>
]" id="gcat<?php echo $this->_tpl_vars['cat']['id_category']; ?>
" value="<?php echo $this->_tpl_vars['cat']['google_category_name']; ?>
" />
	<?php if ($this->_tpl_vars['cnt'] == 1): ?>
	<br /><a href="#" onclick="return duplicateFirstValue('gcat<?php echo $this->_tpl_vars['cat']['id_category']; ?>
');"><?php echo smartyTranslate(array('s' => 'Duplicate this value on all categories below','mod' => 'gmerchantcenter'), $this);?>
</a>
	<?php endif; ?>
	</p>
	<?php $this->assign('cnt', $this->_tpl_vars['cnt']+1); ?>
<?php endforeach; endif; unset($_from); ?>

<input type="hidden" name="glang" value="<?php echo $this->_tpl_vars['glang']; ?>
" />
<input type="hidden" name="id_lang" value="<?php echo $this->_tpl_vars['id_lang']; ?>
" />
<input type="submit" name="update" value="<?php echo smartyTranslate(array('s' => 'Update','mod' => 'gmerchantcenter'), $this);?>
" />
</form>
<script type="text/javascript">
<?php echo '

function duplicateFirstValue(firstElementId)
{
	$(\'input.autocmp\').each(function(i, e) {
		$(this).val($(\'#\'+firstElementId).val());
	}); 
	
	return false;
}

/* function autocomplete */

$(\'input.autocmp\').each(function(index, element) {
	var query = $(element).attr("id");
	$(element).autocomplete(\''; ?>
<?php echo $this->_tpl_vars['ajax_url']; ?>
<?php echo '&glang='; ?>
<?php echo $this->_tpl_vars['glang']; ?>
<?php echo '&query=\'+query, {
		minChars: 3,
		autoFill: false,
		max:50,
		matchContains: true,
		mustMatch:false,
		scroll:true,
		cacheLength:0,
		formatItem: function(item) {
			return item[0];
		}
	});
});
'; ?>

</script>
</body>
</html>