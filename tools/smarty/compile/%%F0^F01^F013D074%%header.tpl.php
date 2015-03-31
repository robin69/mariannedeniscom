<?php /* Smarty version 2.6.20, created on 2010-12-06 12:56:10
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/paypalapi/header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/paypalapi/header.tpl', 6, false),)), $this); ?>
<!-- PayPalAPI module HEADER -->
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['content_dir']; ?>
css/thickbox.css" />
<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/jquery/thickbox-modified.js"></script>
<script type="text/javascript">
// <![CDATA[
	ThickboxI18nClose = "<?php echo smartyTranslate(array('s' => 'Close','mod' => 'paypalapi'), $this);?>
";
	ThickboxI18nOrEscKey = "<?php echo smartyTranslate(array('s' => 'or Esc key','mod' => 'paypalapi'), $this);?>
";
	tb_pathToImage = "<?php echo $this->_tpl_vars['img_ps_dir']; ?>
loadingAnimation.gif";
	//]]>
</script>
<!-- PayPalAPI module HEADER -->