<?php /* Smarty version 2.6.20, created on 2010-11-28 13:34:29
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/prestashop/header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/prestashop/header.tpl', 4, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/prestashop/header.tpl', 48, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->_tpl_vars['lang_iso']; ?>
">
	<head>
		<title><?php echo ((is_array($_tmp=$this->_tpl_vars['meta_title'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</title>
<?php if (isset ( $this->_tpl_vars['meta_description'] ) && $this->_tpl_vars['meta_description']): ?>
		<meta name="description" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html', 'UTF-8') : smarty_modifier_escape($_tmp, 'html', 'UTF-8')); ?>
" />
<?php endif; ?>
<?php if (isset ( $this->_tpl_vars['meta_keywords'] ) && $this->_tpl_vars['meta_keywords']): ?>
		<meta name="keywords" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_keywords'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html', 'UTF-8') : smarty_modifier_escape($_tmp, 'html', 'UTF-8')); ?>
" />
<?php endif; ?>
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<meta name="generator" content="Dev-PHP 2.3.2" />
		<meta name="robots" content="<?php if (isset ( $this->_tpl_vars['nobots'] )): ?>no<?php endif; ?>index,follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="<?php echo $this->_tpl_vars['img_ps_dir']; ?>
favicon.ico" />
<?php if (isset ( $this->_tpl_vars['css_files'] )): ?>
	<?php $_from = $this->_tpl_vars['css_files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['css_uri'] => $this->_tpl_vars['media']):
?>
	<link href="<?php echo $this->_tpl_vars['css_uri']; ?>
" rel="stylesheet" type="text/css" media="<?php echo $this->_tpl_vars['media']; ?>
" />
	<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/tools.js"></script>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/fonctions.js"></script>
		<script type="text/javascript">
			var baseDir = '<?php echo $this->_tpl_vars['content_dir']; ?>
';
			var static_token = '<?php echo $this->_tpl_vars['static_token']; ?>
';
			var token = '<?php echo $this->_tpl_vars['token']; ?>
';
			var priceDisplayPrecision = <?php echo $this->_tpl_vars['priceDisplayPrecision']*$this->_tpl_vars['currency']->decimals; ?>
;
			var roundMode = <?php echo $this->_tpl_vars['roundMode']; ?>
;
		</script>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
<?php if (isset ( $this->_tpl_vars['js_files'] )): ?>
	<?php $_from = $this->_tpl_vars['js_files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['js_uri']):
?>
	<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_uri']; ?>
"></script>
	<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
	
		<?php echo $this->_tpl_vars['HOOK_HEADER']; ?>

	</head>
	
	<body <?php if ($this->_tpl_vars['page_name']): ?>id="<?php echo ((is_array($_tmp=$this->_tpl_vars['page_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"<?php endif; ?>>
	
	<!-- ANALYTICS -->
  <?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => "http://www.mariannedenis.com/prestashop/analyticstracking.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

	
	<?php if (! $this->_tpl_vars['content_only']): ?>
		<noscript><ul><li><?php echo smartyTranslate(array('s' => 'This shop requires JavaScript to run correctly. Please activate JavaScript in your browser.'), $this);?>
</li></ul></noscript>
		
		
		<div id="main">
		<!-- LEFT COLUMN -->
		<div id="leftcol">
			<!-- LOGO -->
			<div id="logo">
				<h1><a href="<?php echo $this->_tpl_vars['content_dir']; ?>
" title="" onfocus="this.blur();">Marianne Denis - Cr&eacute;ation de bijoux</a></h1>
			</div>
		</div>
		<!-- RIGHT COLUMN -->
		<div id="rightcol">
			<!-- NAV -->
			<div id="nav">
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
" title="" <?php if ($this->_tpl_vars['page_name'] == index): ?>class="navitem"<?php endif; ?> onfocus="this.blur();">Home</a>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
29-catalogue-bijoux" title="" <?php if ($this->_tpl_vars['page_name'] == 'category' || $this->_tpl_vars['page_name'] == 'product'): ?>class="navitem"<?php endif; ?> onfocus="this.blur();">Catalogue</a>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
30-collections" title="" onfocus="this.blur();">Collections</a>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
prices-drop.php" title="" <?php if ($this->_tpl_vars['request_uri'] == '/prestashop/prices-drop.php'): ?>class="navitem"<?php endif; ?> onfocus="this.blur();" class="promotions">Promotions</a>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
content/7-esprit-md" title="" <?php if ($this->_tpl_vars['request_uri'] == '/prestashop/content/7-esprit-md'): ?>class="navitem"<?php endif; ?> onfocus="this.blur();">L'esprit MD</a>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
content/6-sur-mesure" title="" <?php if ($this->_tpl_vars['request_uri'] == '/prestashop/content/6-sur-mesure'): ?>class="navitem"<?php endif; ?> onfocus="this.blur();">Sur mesure</a>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
blog/" title="" onfocus="this.blur();">Actualit&eacute;s</a>
			</div>
			
			<!-- QUOTE -->
			<div id="subnav-quote">
				&laquo; Lorem ipsum dolor sit amet sed non risus lectus tortor aliquam nec sine ligula massa [...] &raquo;
			</div>
			
			<!-- HOOK TOP -->
			<?php echo $this->_tpl_vars['HOOK_TOP']; ?>

				
			<!-- NEWSLETTER -->
			<div id="newsletter-link">
				<a href="" title="" onfocus="this.blur();">Newsletter&nbsp;MD&nbsp;Cr&eacute;ation</a>
			</div>
			
			<!-- COMPTE/PANIER -->
			<div id="account">
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
my-account.php" title="" onfocus="this.blur();">Mon compte</a>
				<span>|</span>
				<a href="<?php echo $this->_tpl_vars['content_dir']; ?>
order.php" title="" onfocus="this.blur();">Mon panier (<span class="ajax_cart_quantity"><?php echo $this->_tpl_vars['cart_qties']; ?>
</span>)</a>
			</div>
			<!-- SEARCH -->
			<!--<div id="search">
				<form>
					<input type="text" name="" class="searchinput" value="Rechercher" />
					<input type="submit" name="" class="searchsubmit" value="" />
				</form>
			</div> -->
			<!-- sof. CONTENT -->
			<div id="content">
		
		
	<?php endif; ?>