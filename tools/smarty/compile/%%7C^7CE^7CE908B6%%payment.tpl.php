<?php /* Smarty version 2.6.20, created on 2010-12-03 13:57:56
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/paypalapi/payment/payment.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/paypalapi/payment/payment.tpl', 2, false),)), $this); ?>
<p class="payment_module" height="">
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/paypalapi/payment/submit.php" title="<?php echo smartyTranslate(array('s' => 'Pay with PayPal','mod' => 'paypalapi'), $this);?>
">
			<img src="<?php echo $this->_tpl_vars['logo']; ?>
" alt="<?php echo smartyTranslate(array('s' => 'Pay with PayPal','mod' => 'paypalapi'), $this);?>
" style="float:left;" />
		<br />
		<?php if ($this->_tpl_vars['integral']): ?>
			<?php echo smartyTranslate(array('s' => 'Pay with your account PayPal, credit card (CB, Visa, Mastercard...), or private credit card','mod' => 'paypalapi'), $this);?>

		<?php else: ?>
			<?php echo smartyTranslate(array('s' => 'Pay with your account PayPal','mod' => 'paypalapi'), $this);?>

		<?php endif; ?>
	<br style="clear:both" />
	</a>
</p>