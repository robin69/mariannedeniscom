<?php /* Smarty version 2.6.20, created on 2013-02-01 20:38:24
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/history.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/history.tpl', 9, false),array('function', 'displayPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/history.tpl', 37, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/history.tpl', 29, false),array('modifier', 'string_format', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/history.tpl', 36, false),)), $this); ?>
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
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Order history'), $this);?>
</span>
	<ul class="pageitem">
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'Here are the orders you have placed since the creation of your account.'), $this);?>

		</li>
	</ul>

<?php if ($this->_tpl_vars['orders'] && count ( $this->_tpl_vars['orders'] )): ?>
	<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['orders']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['order']):
        $this->_foreach['myLoop']['iteration']++;
?>
		<li class="menu">
			<a class="noeffect" href="javascript:showOrder(1, <?php echo ((is_array($_tmp=$this->_tpl_vars['order']['id_order'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
, 'order-detail');">
			<?php if ($this->_tpl_vars['order']['invoice'] && $this->_tpl_vars['order']['virtual']): ?>
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
download.png" alt="<?php echo smartyTranslate(array('s' => 'Product(s) to download'), $this);?>
" />
			<?php else: ?>
				<img alt="<?php echo smartyTranslate(array('s' => 'order'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
order.png" />
			<?php endif; ?>
				<span class="name">
					<?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['order']['id_order'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%04d") : smarty_modifier_string_format($_tmp, "%04d")); ?>

					- <span class="price"><?php echo Tools::displayPriceSmarty(array('price' => $this->_tpl_vars['order']['total_paid_real'],'currency' => $this->_tpl_vars['order']['id_currency'],'no_utf8' => false,'convert' => false), $this);?>
</span>
				</span>
				<span class="arrow"></span>
							</a>
		</li>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
	<div id="block-order-detail" class="hidden">&nbsp;</div>

<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'You have not placed any orders.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>

</div>