<?php /* Smarty version 2.6.20, created on 2013-02-01 20:39:44
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/bankwire/payment.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/bankwire/payment.tpl', 3, false),)), $this); ?>
<!-- Module BANK WIRE -->
<li class="menu payment_module">
	<a href="<?php echo $this->_tpl_vars['this_path_ssl']; ?>
payment.php" title="<?php echo smartyTranslate(array('s' => 'Pay by bank wire','mod' => 'bankwire'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
bankwire.png" alt="<?php echo smartyTranslate(array('s' => 'bank wire','mod' => 'bankwire'), $this);?>
" />
		<span class="name"><?php echo smartyTranslate(array('s' => 'By bank wire','mod' => 'bankwire'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /Module BANK WIRE -->