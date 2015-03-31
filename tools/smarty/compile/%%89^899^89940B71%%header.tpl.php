<?php /* Smarty version 2.6.20, created on 2010-11-25 08:37:35
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/header.tpl', 15, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/header.tpl', 49, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->_tpl_vars['lang_iso']; ?>
">
	<head>
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta name="robots" content="<?php if (isset ( $this->_tpl_vars['nobots'] )): ?>no<?php endif; ?>index,follow" />
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<link href="<?php echo $this->_tpl_vars['img_dir']; ?>
homescreen.gif" rel="apple-touch-icon" />
		<meta content="minimum-scale=1.0, width=device-width, maximum-scale=0.6667, user-scalable=no" name="viewport" />
		<link href="<?php echo $this->_tpl_vars['ips_css_dir']; ?>
style.css" rel="stylesheet" media="screen" type="text/css" />
		<!-- script src="<?php echo $this->_tpl_vars['js_dir']; ?>
jquery-1.3.2.min.js" type="text/javascript"></script -->
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
		<script src="<?php echo $this->_tpl_vars['ips_js_dir']; ?>
functions.js" type="text/javascript"></script>
		<title><?php echo ((is_array($_tmp=$this->_tpl_vars['meta_title'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</title>
		<link href="<?php echo $this->_tpl_vars['img_dir']; ?>
startup.png" rel="apple-touch-startup-image" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
favicon.ico" />
<?php if (isset ( $this->_tpl_vars['meta_description'] ) && $this->_tpl_vars['meta_description']): ?>
		<meta name="description" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
<?php endif; ?>
<?php if (isset ( $this->_tpl_vars['meta_keywords'] ) && $this->_tpl_vars['meta_keywords']): ?>
		<meta name="keywords" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_keywords'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
<?php endif; ?>
		<meta name="generator" content="iPrestaShop by Joel Gaujard" />
		<link href="<?php echo $this->_tpl_vars['css_dir']; ?>
iprestashop.css" rel="stylesheet" type="text/css" media="screen" />
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/tools.js"></script>
		<script type="text/javascript">
			var baseDir = '<?php echo $this->_tpl_vars['content_dir']; ?>
';
			var static_token = '<?php echo $this->_tpl_vars['static_token']; ?>
';
			var token = '<?php echo $this->_tpl_vars['token']; ?>
';
			var priceDisplayPrecision = <?php echo $this->_tpl_vars['priceDisplayPrecision']*$this->_tpl_vars['currency']->decimals; ?>
;
		</script>
		<?php echo $this->_tpl_vars['HOOK_HEADER']; ?>

<?php if (isset ( $this->_tpl_vars['js_files'] )): ?>
	<?php $_from = $this->_tpl_vars['js_files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['js_uri']):
?>
	<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_uri']; ?>
"></script>
	<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
	</head>
	
	<body <?php if ($this->_tpl_vars['page_name']): ?>id="<?php echo ((is_array($_tmp=$this->_tpl_vars['page_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"<?php endif; ?>>
	<?php if (! $this->_tpl_vars['content_only']): ?>
		<noscript><ul><li><?php echo smartyTranslate(array('s' => 'This shop requires JavaScript to run correctly. Please activate JavaScript in your browser.'), $this);?>
</li></ul></noscript>
	<?php endif; ?>