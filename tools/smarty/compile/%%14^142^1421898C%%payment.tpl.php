<?php /* Smarty version 2.6.20, created on 2013-02-26 11:00:23
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/bankwire/payment.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/bankwire/payment.tpl', 2, false),)), $this); ?>
<p class="payment_module">
	<a href="<?php echo $this->_tpl_vars['this_path_ssl']; ?>
payment.php" title="<?php echo smartyTranslate(array('s' => 'Pay by bank wire','mod' => 'bankwire'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['this_path']; ?>
bankwire.jpg" alt="<?php echo smartyTranslate(array('s' => 'Pay by bank wire','mod' => 'bankwire'), $this);?>
" width="86" height="49"/>
		<?php echo smartyTranslate(array('s' => 'Pay by bank wire (order process will be longer)','mod' => 'bankwire'), $this);?>

	</a>
</p>