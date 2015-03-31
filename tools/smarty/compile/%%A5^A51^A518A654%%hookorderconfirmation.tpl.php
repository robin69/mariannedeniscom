<?php /* Smarty version 2.6.20, created on 2014-06-18 15:00:01
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/paybox/hookorderconfirmation.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/paybox/hookorderconfirmation.tpl', 2, false),)), $this); ?>
<?php if ($this->_tpl_vars['status'] == 'ok'): ?>
	<p><?php echo smartyTranslate(array('s' => 'Your payment Paybox have been granted and will be sent to you as soon as possible','mod' => 'paybox'), $this);?>
.
		<br /><br /><?php echo smartyTranslate(array('s' => 'Please come regulary on Mariannedenis.com to check and follow your order status.','mod' => 'paybox'), $this);?>
 <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'paybox'), $this);?>
</a>.
	</p>
<?php else: ?>
	<p class="warning">
		<?php echo smartyTranslate(array('s' => 'Un problème a été détecté lors de votre paiement. Nous ne pouvons valider votre commande. Mercid de prendre contact avec nous dans les meilleurs délais.','mod' => 'paybox'), $this);?>
 
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'paybox'), $this);?>
</a>.
	</p>
<?php endif; ?>