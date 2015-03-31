<?php /* Smarty version 2.6.20, created on 2013-10-29 20:00:32
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl', 6, false),array('modifier', 'addslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl', 6, false),array('modifier', 'default', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl', 6, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl', 38, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl', 44, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-address.tpl', 14, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
	var addresses = new Array();
	<?php $_from = $this->_tpl_vars['addresses']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['address']):
?>
		addresses[<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
] = new Array('<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['company'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['firstname'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['lastname'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['address1'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['address2'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['postcode'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['city'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['country'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
', '<?php echo ((is_array($_tmp=((is_array($_tmp=@$this->_tpl_vars['address']['state'])) ? $this->_run_mod_handler('default', true, $_tmp, '') : smarty_modifier_default($_tmp, '')))) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
');
	<?php endforeach; endif; unset($_from); ?>
-->
</script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_dir']; ?>
order-address.js"></script>

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

<?php $this->assign('current_step', 'address'); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
</span>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php" method="post" id="formAddresses">
		<fieldset>

			<ul class="pageitem">
				<li class="textbox"><?php echo smartyTranslate(array('s' => 'Choose a delivery address:'), $this);?>
</li>
				<li class="select">
					<select name="id_address_delivery" id="id_address_delivery" class="address_select" onchange="updateAddressesDisplay();">
					<?php $_from = $this->_tpl_vars['addresses']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['address']):
?>
						<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" <?php if ($this->_tpl_vars['address']['id_address'] == $this->_tpl_vars['cart']->id_address_delivery): ?>selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['address']['alias'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
					<?php endforeach; endif; unset($_from); ?>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="checkbox">
					<?php if ($this->_tpl_vars['cart']->id_address_invoice == $this->_tpl_vars['cart']->id_address_delivery || count($this->_tpl_vars['addresses']) == 1): ?>
						<?php $this->assign('same_address', true); ?>
					<?php else: ?>
						<?php $this->assign('same_address', false); ?>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['same_address']): ?><span class="check"><?php endif; ?>
						<span class="name"><?php echo smartyTranslate(array('s' => 'Use the same address for billing.'), $this);?>
</span>
						<input type="checkbox" name="same" id="addressesAreEquals" value="1" onclick="updateAddressesDisplay();" <?php if ($this->_tpl_vars['same_address']): ?>checked="checked"<?php endif; ?> />
					<?php if ($this->_tpl_vars['same_address']): ?></span><?php endif; ?>
				</li>
				<?php if (( $this->_tpl_vars['cart']->id_address_invoice == $this->_tpl_vars['cart']->id_address_delivery ) || count($this->_tpl_vars['addresses']) < 2): ?>
					<?php $this->assign('display_address', false); ?>
				<?php else: ?>
					<?php $this->assign('display_address', true); ?>
				<?php endif; ?>
				<li class="textbox address_invoice_form" <?php if (! $this->_tpl_vars['display_address']): ?>style="display:none"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Choose a billing address:'), $this);?>
</li>
				<li class="select address_invoice_form" <?php if (! $this->_tpl_vars['display_address']): ?>style="display:none"<?php endif; ?>>
					<select name="id_address_invoice" id="id_address_invoice" class="address_select" onchange="updateAddressesDisplay();">
					<?php unset($this->_sections['address']);
$this->_sections['address']['loop'] = is_array($_loop=$this->_tpl_vars['addresses']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['address']['step'] = ((int)-1) == 0 ? 1 : (int)-1;
$this->_sections['address']['name'] = 'address';
$this->_sections['address']['show'] = true;
$this->_sections['address']['max'] = $this->_sections['address']['loop'];
$this->_sections['address']['start'] = $this->_sections['address']['step'] > 0 ? 0 : $this->_sections['address']['loop']-1;
if ($this->_sections['address']['show']) {
    $this->_sections['address']['total'] = min(ceil(($this->_sections['address']['step'] > 0 ? $this->_sections['address']['loop'] - $this->_sections['address']['start'] : $this->_sections['address']['start']+1)/abs($this->_sections['address']['step'])), $this->_sections['address']['max']);
    if ($this->_sections['address']['total'] == 0)
        $this->_sections['address']['show'] = false;
} else
    $this->_sections['address']['total'] = 0;
if ($this->_sections['address']['show']):

            for ($this->_sections['address']['index'] = $this->_sections['address']['start'], $this->_sections['address']['iteration'] = 1;
                 $this->_sections['address']['iteration'] <= $this->_sections['address']['total'];
                 $this->_sections['address']['index'] += $this->_sections['address']['step'], $this->_sections['address']['iteration']++):
$this->_sections['address']['rownum'] = $this->_sections['address']['iteration'];
$this->_sections['address']['index_prev'] = $this->_sections['address']['index'] - $this->_sections['address']['step'];
$this->_sections['address']['index_next'] = $this->_sections['address']['index'] + $this->_sections['address']['step'];
$this->_sections['address']['first']      = ($this->_sections['address']['iteration'] == 1);
$this->_sections['address']['last']       = ($this->_sections['address']['iteration'] == $this->_sections['address']['total']);
?>
						<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['addresses'][$this->_sections['address']['index']]['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" <?php if ($this->_tpl_vars['addresses'][$this->_sections['address']['index']]['id_address'] == $this->_tpl_vars['cart']->id_address_invoice && $this->_tpl_vars['cart']->id_address_delivery != $this->_tpl_vars['cart']->id_address_invoice): ?>selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['addresses'][$this->_sections['address']['index']]['alias'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
					<?php endfor; endif; ?>
					</select>
					<span class="arrow"></span>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'Your delivery address'), $this);?>
</span>
					<ul class="address item" id="address_delivery">
						<li class="address_company"></li>
						<li class="address_name"></li>
						<li class="address_address1"></li>
						<li class="address_address2"></li>
						<li class="address_city"></li>
						<li class="address_country"></li>
						<li class="address_update"><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php?id_address=<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;back=order.php&amp;step=1" title="<?php echo smartyTranslate(array('s' => 'Update'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Update'), $this);?>
</a></li>
					</ul>
				</li>
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'Your billing address'), $this);?>
</span>
					<ul class="address alternate_item" id="address_invoice">
						<li class="address_company"></li>
						<li class="address_name"></li>
						<li class="address_address1"></li>
						<li class="address_address2"></li>
						<li class="address_city"></li>
						<li class="address_country"></li>
						<li class="address_update"><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php?id_address=<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;back=order.php&amp;step=1" title="<?php echo smartyTranslate(array('s' => 'Update'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Update'), $this);?>
</a></li>
					</ul>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<a title="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php?back=order.php&amp;step=1<?php if (count($this->_tpl_vars['addresses']) < 1): ?>&select_address=1<?php endif; ?>">
						<img alt="add address" src="<?php echo $this->_tpl_vars['img_dir']; ?>
address_add.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Add a new address'), $this);?>
</span>
						<span class="arrow"></span>
					</a>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'If you want to leave us comment about your order, please write it below.'), $this);?>
</span>
					<textarea cols="60" rows="3" name="message"><?php echo $this->_tpl_vars['oldMessage']; ?>
</textarea>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<input type="hidden" class="hidden" name="step" value="2" />
					<input type="hidden" name="back" value="<?php echo $this->_tpl_vars['back']; ?>
" />
					<input type="hidden" name="processAddress" value="1" />
					<a href="javascript:$('#formAddresses').submit()" title="<?php echo smartyTranslate(array('s' => 'Next'), $this);?>
">
						<img alt="<?php echo smartyTranslate(array('s' => 'next'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
cart_ok.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Next'), $this);?>
</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=0<?php if ($this->_tpl_vars['back']): ?>&back=<?php echo $this->_tpl_vars['back']; ?>
<?php endif; ?>" title="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
">
						<img alt="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
back.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
</span>
					</a>
				</li>
			</ul>

	</fieldset>
</form>