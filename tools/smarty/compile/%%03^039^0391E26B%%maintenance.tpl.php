<?php /* Smarty version 2.6.20, created on 2010-11-30 15:41:28
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/maintenance.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/maintenance.tpl', 6, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/maintenance.tpl', 32, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->_tpl_vars['lang_iso']; ?>
" lang="<?php echo $this->_tpl_vars['lang_iso']; ?>
">
	<head>
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="minimum-scale=1.0, width=device-width, maximum-scale=0.6667, user-scalable=no" name="viewport" />
		<title><?php echo ((is_array($_tmp=$this->_tpl_vars['meta_title'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</title>	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php if (isset ( $this->_tpl_vars['meta_description'] )): ?>
		<meta name="description" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
<?php endif; ?>
<?php if (isset ( $this->_tpl_vars['meta_keywords'] )): ?>
		<meta name="keywords" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_keywords'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
<?php endif; ?>
		<meta name="robots" content="<?php if (isset ( $this->_tpl_vars['nobots'] )): ?>no<?php endif; ?>index,follow" />
		<meta name="generator" content="iPrestaShop by Joel Gaujard" />
		<link href="<?php echo $this->_tpl_vars['img_dir']; ?>
startup.png" rel="apple-touch-startup-image" />
		<link href="<?php echo $this->_tpl_vars['img_dir']; ?>
homescreen.gif" rel="apple-touch-icon" />
		<link href="<?php echo $this->_tpl_vars['ips_css_dir']; ?>
style.css" rel="stylesheet" media="screen" type="text/css" />
		<script src="<?php echo $this->_tpl_vars['ips_js_dir']; ?>
functions.js" type="text/javascript"></script>
		<link rel="icon" type="image/vnd.microsoft.icon" href="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
favicon.ico" />
	</head>
	<body>
		<div id="topbar">
			<div id="title"><?php echo $this->_tpl_vars['shop_name']; ?>
</div>
		</div>
		<div id="content">
			<ul class="pageitem">
				<li class="textbox" style="text-align:center">
					<img src="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
logo.jpg" alt="logo" />
					<br/>
					<?php echo smartyTranslate(array('s' => 'In order to perform site maintenance, our online shop has been taken offline temporarily. We apologize for the inconvenience, and ask that you please try again later !'), $this);?>

				</li>
			</ul>
		</div>
	</body>
</html>