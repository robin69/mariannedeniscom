<?php /* Smarty version 2.6.20, created on 2013-02-12 14:04:22
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-confirmation.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-confirmation.tpl', 7, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Order confirmation'), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<h2 class="page_title_h2"><?php echo smartyTranslate(array('s' => 'Order confirmation'), $this);?>
</h2>

	<?php $this->assign('current_step', 'payment'); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div class="my-account-container">

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	
	<br />
	
	<?php echo $this->_tpl_vars['HOOK_ORDER_CONFIRMATION']; ?>

	<?php echo $this->_tpl_vars['HOOK_PAYMENT_RETURN']; ?>

	
	<br /><br />
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php" title="Commandes"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-commandes.jpg" alt="Commandes" class="icon" />Acc&eacute;der &agrave; la liste de mes commandes</a>
	<br /><br /><br />
	
</div>
	