<?php /* Smarty version 2.6.20, created on 2010-12-07 13:03:21
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashopi/order-follow.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashopi/order-follow.tpl', 7, false),array('function', 'dateFormat', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashopi/order-follow.tpl', 43, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashopi/order-follow.tpl', 40, false),array('modifier', 'string_format', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashopi/order-follow.tpl', 40, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashopi/order-follow.tpl', 42, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<?php ob_start(); ?><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a><span class="navigation-pipe"><?php echo $this->_tpl_vars['navigationPipe']; ?>
</span><?php echo smartyTranslate(array('s' => 'Return Merchandise Authorization (RMA)'), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<h2><?php echo smartyTranslate(array('s' => 'Return Merchandise Authorization (RMA)'), $this);?>
</h2>
<?php if ($this->_tpl_vars['errorQuantity']): ?>
	<p class="error"><?php echo smartyTranslate(array('s' => 'You do not have enough products to request another merchandise return.'), $this);?>
</p>
<?php endif; ?>
<?php if ($this->_tpl_vars['errorMsg']): ?>
	<p class="error"><?php echo smartyTranslate(array('s' => 'Please provide an explanation for your RMA.'), $this);?>
</p>
<?php endif; ?>
<?php if ($this->_tpl_vars['errorDetail1']): ?>
	<p class="error"><?php echo smartyTranslate(array('s' => 'Please check at least one product you want to return.'), $this);?>
</p>
<?php endif; ?>
<?php if ($this->_tpl_vars['errorDetail2']): ?>
	<p class="error"><?php echo smartyTranslate(array('s' => 'Please provide quantity for product you checked.'), $this);?>
</p>
<?php endif; ?>

<p><?php echo smartyTranslate(array('s' => 'Here are the merchandise returns you have made since ordering'), $this);?>
.</p>
<div class="block-center" id="block-history">
	<?php if ($this->_tpl_vars['ordersReturn'] && count ( $this->_tpl_vars['ordersReturn'] )): ?>
	<table id="order-list" class="std">
		<thead>
			<tr>
				<th class="first_item"><?php echo smartyTranslate(array('s' => 'Return'), $this);?>
</th>
				<th class="item"><?php echo smartyTranslate(array('s' => 'Order'), $this);?>
</th>
				<th class="item"><?php echo smartyTranslate(array('s' => 'Package status'), $this);?>
</th>
				<th class="item"><?php echo smartyTranslate(array('s' => 'Date issued'), $this);?>
</th>
				<th class="last_item"><?php echo smartyTranslate(array('s' => 'Return slip'), $this);?>
</th>
			</tr>
		</thead>
		<tbody>
		<?php $_from = $this->_tpl_vars['ordersReturn']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['return']):
        $this->_foreach['myLoop']['iteration']++;
?>
			<tr class="<?php if (($this->_foreach['myLoop']['iteration'] <= 1)): ?>first_item<?php elseif (($this->_foreach['myLoop']['iteration'] == $this->_foreach['myLoop']['total'])): ?>last_item<?php else: ?>item<?php endif; ?> <?php if (($this->_foreach['myLoop']['iteration']-1) % 2): ?>alternate_item<?php endif; ?>">
				<td class="bold"><a class="color-myaccount" href="javascript:showOrder(0, <?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
, 'order-return');"><?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
</a></td>
				<td class="history_method"><a class="color-myaccount" href="javascript:showOrder(1, <?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
, 'order-detail');"><?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
</a></td>
				<td class="history_method"><span class="bold"><?php echo ((is_array($_tmp=$this->_tpl_vars['return']['state_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span></td>
				<td class="bold"><?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['return']['date_add'],'full' => 0), $this);?>
</td>
				<td class="history_invoice">
				<?php if ($this->_tpl_vars['return']['state'] == 2): ?>
					<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
pdf-order-return.php?id_order_return=<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" title="<?php echo smartyTranslate(array('s' => 'Order return'), $this);?>
 <?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/pdf.gif" alt="<?php echo smartyTranslate(array('s' => 'Order return'), $this);?>
 <?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
" class="icon" /></a>
					<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
pdf-order-return.php?id_order_return=<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" title="<?php echo smartyTranslate(array('s' => 'Order return'), $this);?>
 <?php echo smartyTranslate(array('s' => '#'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['return']['id_order_return'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>
"><?php echo smartyTranslate(array('s' => 'Print out'), $this);?>
</a>
				<?php else: ?>
					--
				<?php endif; ?>
				</td>
			</tr>
		<?php endforeach; endif; unset($_from); ?>
		</tbody>
	</table>
	<div id="block-order-detail" class="hidden">&nbsp;</div>
	<?php else: ?>
		<p class="warning"><?php echo smartyTranslate(array('s' => 'You have no return merchandise authorizations.'), $this);?>
</p>
	<?php endif; ?>
</div>



<ul class="footer_links">
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/my-account.gif" alt="" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'Back to Your Account'), $this);?>
</a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/home.gif" alt="" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><?php echo smartyTranslate(array('s' => 'Home'), $this);?>
</a></li>
</ul>