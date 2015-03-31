<?php /* Smarty version 2.6.20, created on 2013-02-01 20:42:05
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-confirmation.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-confirmation.tpl', 9, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1"><?php echo smartyTranslate(array('s' => 'Browse'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>

<?php $this->assign('current_step', 'payment'); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Order confirmation'), $this);?>
</span>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

	<?php echo $this->_tpl_vars['HOOK_ORDER_CONFIRMATION']; ?>

	<?php echo $this->_tpl_vars['HOOK_PAYMENT_RETURN']; ?>


	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php" title="<?php echo smartyTranslate(array('s' => 'My order history'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'orders'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
calendar.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'My order history'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>

</div>