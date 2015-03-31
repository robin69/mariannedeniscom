<?php /* Smarty version 2.6.20, created on 2012-12-22 09:50:21
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl', 1, false),array('function', 'dateFormat', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl', 1, false),array('modifier', 'string_format', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl', 1, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl', 10, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl', 43, false),array('modifier', 'nl2br', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-detail.tpl', 62, false),)), $this); ?>
<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Order #'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['order']->id)) ? $this->_run_mod_handler('string_format', true, $_tmp, "%04d") : smarty_modifier_string_format($_tmp, "%04d")); ?>
 <?php echo smartyTranslate(array('s' => 'placed on'), $this);?>
 <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['order']->date_add,'full' => 0), $this);?>
</span>

<?php if (count ( $this->_tpl_vars['order_history'] )): ?>
<ul class="pageitem">
	<li class="textbox">
		<span class="header"><?php echo smartyTranslate(array('s' => 'Follow your order step by step'), $this);?>
</span>
	</li>
	<?php $_from = $this->_tpl_vars['order_history']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['orderStates'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['orderStates']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['state']):
        $this->_foreach['orderStates']['iteration']++;
?>
	<li class="textbox">
		<?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['state']['date_add'],'full' => 1), $this);?>
 &raquo; <?php echo ((is_array($_tmp=$this->_tpl_vars['state']['ostate_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

	</li>
	<?php endforeach; endif; unset($_from); ?>
</ul>
<?php endif; ?>

<?php if ($this->_tpl_vars['followup']): ?>
<ul class="pageitem">
	<li class="menu">
		<a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['followup'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
			<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
tracking.png" alt="<?php echo smartyTranslate(array('s' => 'tracking'), $this);?>
" />
			<span class="name">
				<?php echo smartyTranslate(array('s' => 'Link to track delivery'), $this);?>

			</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<?php endif; ?>

<ul class="pageitem">
<?php if ($this->_tpl_vars['carrier']->id): ?>
	<li class="textbox">
		<img src="<?php echo $this->_tpl_vars['img_ship_dir']; ?>
<?php echo $this->_tpl_vars['carrier']->id; ?>
.jpg" alt="<?php echo $this->_tpl_vars['carrier']->name; ?>
" width="26" height="26" />
		<?php echo smartyTranslate(array('s' => 'Carrier:'), $this);?>
 <strong><?php if ($this->_tpl_vars['carrier']->name == '0'): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['shop_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?></strong>
	</li>
<?php endif; ?>
	<li class="textbox">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
<?php if ($this->_tpl_vars['order']->module): ?><?php echo $this->_tpl_vars['order']->module; ?>
<?php else: ?>order<?php endif; ?>.png" alt="<?php echo $this->_tpl_vars['order']->module; ?>
" width="26" height="26" />
		<?php echo smartyTranslate(array('s' => 'Payment method:'), $this);?>
 <strong><?php echo ((is_array($_tmp=$this->_tpl_vars['order']->payment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</strong>
	</li>
<?php if ($this->_tpl_vars['invoice'] && $this->_tpl_vars['invoiceAllowed']): ?>
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
pdf-invoice.php?id_order=<?php echo ((is_array($_tmp=$this->_tpl_vars['order']->id)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
">
			<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
pdf.png" alt="<?php echo smartyTranslate(array('s' => 'pdf'), $this);?>
" />
			<span class="name"><?php echo smartyTranslate(array('s' => 'Your invoice'), $this);?>
</span>
			<span class="arrow"></span>
		</a>
	</li>
<?php endif; ?>
<?php if ($this->_tpl_vars['order']->recyclable): ?>
	<li class="textbox">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
recyclable.png" alt="" width="32" height="32" class="left" />
		<?php echo smartyTranslate(array('s' => 'You received your order in recycled packaging.'), $this);?>

	</li>
<?php endif; ?>
<?php if ($this->_tpl_vars['order']->gift): ?>
	<li class="textbox">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
gift.png" alt="" width="32" height="32" class="left" />
		<?php echo smartyTranslate(array('s' => 'You requested gift-wrapping for your order.'), $this);?>

	<?php if ($this->_tpl_vars['order']->gift_message): ?>
		<br/>&nbsp;<br/><span class="header"><?php echo smartyTranslate(array('s' => 'Message:'), $this);?>
</span>
		<?php echo ((is_array($_tmp=$this->_tpl_vars['order']->gift_message)) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>

	<?php endif; ?>
	</li>
<?php endif; ?>
</ul>

<ul class="pageitem">
	<li class="textbox">
		<span class="header"><?php echo smartyTranslate(array('s' => 'Invoice'), $this);?>
</span>
		<ul class="address">
			<?php if ($this->_tpl_vars['address_invoice']->company): ?><li class="address_company"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->company)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
			<li class="address_name"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->lastname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			<li class="address_address1"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->address1)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			<?php if ($this->_tpl_vars['address_invoice']->address2): ?><li class="address_address2"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->address2)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
			<li class="address_city"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->postcode)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->city)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			<li class="address_country"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->country)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php if ($this->_tpl_vars['invoiceState']): ?> - <?php echo ((is_array($_tmp=$this->_tpl_vars['invoiceState']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?></li>
			<?php if ($this->_tpl_vars['address_invoice']->phone): ?><li class="address_phone"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->phone)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
			<?php if ($this->_tpl_vars['address_invoice']->phone_mobile): ?><li class="address_phone_mobile"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_invoice']->phone_mobile)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
		</ul>
	</li>
	<li class="textbox">
		<span class="header"><?php echo smartyTranslate(array('s' => 'Delivery'), $this);?>
</span>
		<ul class="address">
			<?php if ($this->_tpl_vars['address_delivery']->company): ?><li class="address_company"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->company)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
			<li class="address_name"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->lastname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			<li class="address_address1"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->address1)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			<?php if ($this->_tpl_vars['address_delivery']->address2): ?><li class="address_address2"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->address2)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
			<li class="address_city"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->postcode)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->city)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			<li class="address_country"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->country)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php if ($this->_tpl_vars['deliveryState']): ?> - <?php echo ((is_array($_tmp=$this->_tpl_vars['deliveryState']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?></li>
			<?php if ($this->_tpl_vars['address_delivery']->phone): ?><li class="address_phone"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->phone)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
			<?php if ($this->_tpl_vars['address_delivery']->phone_mobile): ?><li class="address_phone_mobile"><?php echo ((is_array($_tmp=$this->_tpl_vars['address_delivery']->phone_mobile)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
		</ul>
	</li>
</ul>

<form action="<?php echo $this->_tpl_vars['base_dir']; ?>
order-detail.php" method="post" class="std" id="sendOrderMessage">
	<fieldset>
		<ul class="pageitem">
			<li class="textbox">
				<span class="header"><?php echo smartyTranslate(array('s' => 'Add a message about your order:'), $this);?>
</span>
				<textarea cols="67" rows="3" name="msgText"></textarea>
			</li>
			<li class="button">
				<input type="submit" class="button" name="submitMessage" value="<?php echo smartyTranslate(array('s' => 'Send'), $this);?>
"/>
			</li>
		</ul>
		<input type="hidden" name="id_order" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['order']->id)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" />
	</fieldset>
</form>

<?php if (count ( $this->_tpl_vars['messages'] )): ?>
<ul class="pageitem">
	<li class="textbox"><span class="header"><?php echo smartyTranslate(array('s' => 'Messages'), $this);?>
</span></li>
	<?php $_from = $this->_tpl_vars['messages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['messageList'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['messageList']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['message']):
        $this->_foreach['messageList']['iteration']++;
?>
	<li class="textbox">
		<?php echo smartyTranslate(array('s' => 'From:'), $this);?>

		<?php if ($this->_tpl_vars['message']['ename']): ?>
			<?php echo ((is_array($_tmp=$this->_tpl_vars['message']['efirstname'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['message']['elastname'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

		<?php elseif ($this->_tpl_vars['message']['clastname']): ?>
			<?php echo ((is_array($_tmp=$this->_tpl_vars['message']['cfirstname'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['message']['clastname'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

		<?php else: ?>
			<b><?php echo ((is_array($_tmp=$this->_tpl_vars['shop_name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</b>
		<?php endif; ?>
		- <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['message']['date_add'],'full' => 1), $this);?>

		<hr/>
		<?php echo ((is_array($_tmp=$this->_tpl_vars['message']['message'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>

	</li>
	<?php endforeach; endif; unset($_from); ?>
</ul>
<?php endif; ?>

<ul class="pageitem">
	<li class="textbox"><?php echo smartyTranslate(array('s' => 'Please connect you to the computer version for more information.'), $this);?>
</li>
</ul>



<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>