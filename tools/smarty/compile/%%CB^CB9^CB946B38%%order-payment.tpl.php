<?php /* Smarty version 2.6.20, created on 2013-02-01 20:39:44
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-payment.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-payment.tpl', 9, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-payment.tpl', 24, false),)), $this); ?>
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
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if ($this->_tpl_vars['HOOK_PAYMENT']): ?>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Choose your payment method for an amount of'), $this);?>
&nbsp;<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_price']), $this);?>
</span> <?php echo smartyTranslate(array('s' => '(tax incl.)'), $this);?>
</span>
	<ul class="pageitem">
		<?php echo $this->_tpl_vars['HOOK_PAYMENT']; ?>

	</ul>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No payment modules have been installed yet.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>

	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=2" title="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
back.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
</span>
			</a>
		</li>
	</ul>
</div>