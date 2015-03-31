<?php /* Smarty version 2.6.20, created on 2013-10-29 20:01:05
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/cheque/payment.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/cheque/payment.tpl', 3, false),)), $this); ?>
<!-- Module CHEQUE -->
<li class="menu payment_module">
	<a href="<?php echo $this->_tpl_vars['this_path_ssl']; ?>
payment.php" title="<?php echo smartyTranslate(array('s' => 'Pay by cheque','mod' => 'cheque'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
cheque.png" alt="<?php echo smartyTranslate(array('s' => 'cheque','mod' => 'cheque'), $this);?>
" />
		<span class="name"><?php echo smartyTranslate(array('s' => 'By cheque','mod' => 'cheque'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /Module CHEQUE -->