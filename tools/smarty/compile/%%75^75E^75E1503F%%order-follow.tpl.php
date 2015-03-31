<?php /* Smarty version 2.6.20, created on 2013-10-30 19:13:36
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-follow.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-follow.tpl', 9, false),array('function', 'dateFormat', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-follow.tpl', 54, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-follow.tpl', 50, false),array('modifier', 'string_format', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-follow.tpl', 50, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-follow.tpl', 61, false),)), $this); ?>
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
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Return Merchandise Authorization (RMA)'), $this);?>
</span>
	
	<?php if ($this->_tpl_vars['errorQuantity']): ?>
		<?php $this->assign('error', 'You do not have enough products to request another merchandise return.'); ?>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['errorMsg']): ?>
		<?php $this->assign('error', 'Please provide an explanation for your RMA.'); ?>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['errorDetail1']): ?>
		<?php $this->assign('error', 'Please check at least one product you want to return.'); ?>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['errorDetail2']): ?>
		<?php $this->assign('error', 'Please provide quantity for product you checked.'); ?>
	<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['error'] )): ?>
	<ul class="pageitem error">
		<li class="textbox">
			<?php echo $this->_tpl_vars['error']; ?>

		</li>
	</ul>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['ordersReturn'] && count ( $this->_tpl_vars['ordersReturn'] )): ?>
	<ul class="pageitem">
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'Here are the merchandise returns you have made since ordering'), $this);?>
.
		</li>
	</ul>
	<ul class="pageitem">

		<?php $_from = $this->_tpl_vars['ordersReturn']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['return']):
        $this->_foreach['myLoop']['iteration']++;
?>
		<li class="menu">
			<a href="<?php if ($this->_tpl_vars['return']['state'] == 2): ?><?php echo $this->_tpl_vars['base_dir']; ?>
pdf-order-return.php?id_order_return=<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
<?php else: ?>#" class="noeffect<?php endif; ?>" title="<?php echo smartyTranslate(array('s' => 'Order return'), $this);?>
 <?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
">
				<?php if ($this->_tpl_vars['return']['state'] == 2): ?><img alt="<?php echo smartyTranslate(array('s' => 'pdf'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
pdf.png" /><?php endif; ?>
				<span class="name">
					<?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>

					- <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['return']['date_add'],'full' => 0), $this);?>

				</span>
				<?php if ($this->_tpl_vars['return']['state'] == 2): ?><span class="arrow"></span><?php endif; ?>
			</a>
		</li>
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'Order:'), $this);?>
 <a class="noeffect	" href="javascript:showOrder(0, <?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
, 'order-return');"><?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
</a>
			<br/><?php echo smartyTranslate(array('s' => 'Package status:'), $this);?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['return']['state_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

		</li>
		<?php endforeach; endif; unset($_from); ?>
	</ul>
	<div id="block-order-detail" class="hidden">&nbsp;</div>
	<?php else: ?>
		<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'You have no return merchandise authorizations.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endif; ?>
</div>
