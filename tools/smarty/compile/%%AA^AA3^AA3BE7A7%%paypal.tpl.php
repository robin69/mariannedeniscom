<?php /* Smarty version 2.6.20, created on 2014-06-30 17:55:26
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/paypal/paypal.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/paypal/paypal.tpl', 2, false),)), $this); ?>
<p class="payment_module">
	<a href="modules/paypal/redirect.php" title="<?php echo smartyTranslate(array('s' => 'Pay with PayPal','mod' => 'paypal'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['module_template_dir']; ?>
paypal.gif" alt="<?php echo smartyTranslate(array('s' => 'Pay with PayPal','mod' => 'paypal'), $this);?>
" width="86" height="49"/>
		<?php echo smartyTranslate(array('s' => 'Pay with PayPal','mod' => 'paypal'), $this);?>

	</a>
</p>