<?php /* Smarty version 2.6.20, created on 2013-11-08 21:19:46
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/shopping-cart.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/shopping-cart.tpl', 9, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/shopping-cart.tpl', 105, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/shopping-cart.tpl', 44, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/shopping-cart.tpl', 47, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/shopping-cart.tpl', 86, false),)), $this); ?>
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

<?php $this->assign('current_step', 'summary'); ?>
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

<?php if (isset ( $this->_tpl_vars['empty'] )): ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Your shopping cart is empty.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1">
				<img alt="<?php echo smartyTranslate(array('s' => 'browse'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
start.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Browse our catalog'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
<?php else: ?>

	<?php if (isset ( $this->_tpl_vars['lastProductAdded'] ) && $this->_tpl_vars['lastProductAdded']): ?>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Last added product'), $this);?>
</span>
	<ul class="pageitem">
		<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['product']):
?>
			<?php if ($this->_tpl_vars['product']['id_product'] == $this->_tpl_vars['lastProductAdded']['id_product'] && ( ! $this->_tpl_vars['product']['id_product_attribute'] || ( $this->_tpl_vars['product']['id_product_attribute'] == $this->_tpl_vars['lastProductAdded']['id_product_attribute'] ) )): ?>
		<li class="store">
			<a class="noeffect" href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getProductLink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
				<span class="image" style="background-image: url('<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],'medium'); ?>
')"></span>
				<span class="name"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
				<?php if ($this->_tpl_vars['product']['attributes']): ?><span class="comment"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['attributes_small'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')))) ? $this->_run_mod_handler('truncate', true, $_tmp, 50, '...') : smarty_modifier_truncate($_tmp, 50, '...')); ?>
</span><?php endif; ?>
				<span class="arrow"></span>
			</a>
		</li>
			<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?>
	</ul>
	<?php endif; ?>

	<span class="graytitle"><?php echo $this->_tpl_vars['productNumber']; ?>
 <?php if ($this->_tpl_vars['productNumber'] > 1): ?><?php echo smartyTranslate(array('s' => 'products'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'product'), $this);?>
<?php endif; ?> <?php echo smartyTranslate(array('s' => 'in your cart'), $this);?>
</span>

	<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['productLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['productLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['productLoop']['iteration']++;
?>
		<?php $this->assign('productId', $this->_tpl_vars['product']['id_product']); ?>
		<?php $this->assign('productAttributeId', $this->_tpl_vars['product']['id_product_attribute']); ?>
		<?php $this->assign('quantityDisplayed', 0); ?>
				<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./shopping-cart-product-line.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

				<?php if (isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] )): ?>
			<?php $_from = $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['id_customization'] => $this->_tpl_vars['customization']):
?>
				<tr class="alternate_item cart_item">
					<td colspan="5">
						<?php $_from = $this->_tpl_vars['customization']['datas']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['type'] => $this->_tpl_vars['datas']):
?>
							<?php if ($this->_tpl_vars['type'] == $this->_tpl_vars['CUSTOMIZE_FILE']): ?>
								<div class="customizationUploaded">
									<ul class="customizationUploaded">
										<?php $_from = $this->_tpl_vars['datas']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['picture']):
?><li><img src="<?php echo $this->_tpl_vars['pic_dir']; ?>
<?php echo $this->_tpl_vars['picture']['value']; ?>
_small" alt="" class="customizationUploaded" /></li><?php endforeach; endif; unset($_from); ?>
									</ul>
								</div>
							<?php elseif ($this->_tpl_vars['type'] == $this->_tpl_vars['CUSTOMIZE_TEXTFIELD']): ?>
								<ul class="typedText">
									<?php $_from = $this->_tpl_vars['datas']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['typedText'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['typedText']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['textField']):
        $this->_foreach['typedText']['iteration']++;
?><li><?php echo smartyTranslate(array('s' => 'Text #'), $this);?>
<?php echo ($this->_foreach['typedText']['iteration']-1)+1; ?>
<?php echo smartyTranslate(array('s' => ':'), $this);?>
 <?php echo $this->_tpl_vars['textField']['value']; ?>
</li><?php endforeach; endif; unset($_from); ?>
								</ul>
							<?php endif; ?>
						<?php endforeach; endif; unset($_from); ?>
					</td>
					<td class="cart_quantity">
						<a class="cart_quantity_delete" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?delete&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;id_customization=<?php echo $this->_tpl_vars['id_customization']; ?>
&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s' => 'Delete this customization'), $this);?>
" class="icon" /></a>
						<p><?php echo $this->_tpl_vars['customization']['quantity']; ?>
</p>
						<a class="cart_quantity_up" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?add&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;id_customization=<?php echo $this->_tpl_vars['id_customization']; ?>
&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/quantity_up.gif" alt="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
" /></a><br />
						<a class="cart_quantity_down" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?add&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;id_customization=<?php echo $this->_tpl_vars['id_customization']; ?>
&amp;op=down&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Substract'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/quantity_down.gif" alt="<?php echo smartyTranslate(array('s' => 'Substract'), $this);?>
" /></a>
					</td>
					<td class="cart_total"></td>
				</tr>
				<?php $this->assign('quantityDisplayed', $this->_tpl_vars['quantityDisplayed']+$this->_tpl_vars['customization']['quantity']); ?>
			<?php endforeach; endif; unset($_from); ?>
						<?php if ($this->_tpl_vars['product']['quantity']-$this->_tpl_vars['quantityDisplayed'] > 0): ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./shopping-cart-product-line1.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php endif; ?>
		<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?>
	</ul>

	<ul class="pageitem align_right">
	<?php if ($this->_tpl_vars['priceDisplay']): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total products (tax excl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_products']), $this);?>
</span>
		</li>
	<?php endif; ?>
	<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total products (tax incl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_products_wt']), $this);?>
</span>
		</li>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['total_discounts'] != 0): ?>
		<?php if ($this->_tpl_vars['priceDisplay']): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total vouchers (tax excl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_discounts_tax_exc']), $this);?>
</span>
		</li>
		<?php endif; ?>
		<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total vouchers (tax incl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_discounts']), $this);?>
</span>
		</li>
		<?php endif; ?>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['total_wrapping'] > 0): ?>
		<?php if ($this->_tpl_vars['priceDisplay']): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total gift-wrapping (tax excl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_wrapping_tax_exc']), $this);?>
</span>
		</li>
		<?php endif; ?>
		<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total gift-wrapping (tax incl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_wrapping']), $this);?>
</span>
		</li>
		<?php endif; ?>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['shippingCost'] > 0): ?>
		<?php if ($this->_tpl_vars['priceDisplay']): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total shipping (tax excl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['shippingCostTaxExc']), $this);?>
</span>
		</li>
		<?php endif; ?>
		<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total shipping (tax incl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['shippingCost']), $this);?>
</span>
		</li>
		<?php endif; ?>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['priceDisplay']): ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total (tax excl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_price_without_tax']), $this);?>
</span>
		</li>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total tax:'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_tax']), $this);?>
</span>
		</li>
	<?php endif; ?>
		<li class="textbox">
			<strong><?php echo smartyTranslate(array('s' => 'Total (tax incl.):'), $this);?>
</strong>
			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_price']), $this);?>
</span>
		</li>
	<?php if ($this->_tpl_vars['free_ship'] > 0): ?>
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'Remaining amount to be added to your cart in order to obtain free shipping:'), $this);?>

			<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['free_ship']), $this);?>
</span>
		</li>
	<?php endif; ?>
	</ul>



	<?php if ($this->_tpl_vars['voucherAllowed']): ?>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Vouchers'), $this);?>
</span>
		<?php if ($this->_tpl_vars['errors_discount']): ?>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array('errors' => $this->_tpl_vars['errors_discount'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		<?php endif; ?>
	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php" method="post" id="voucher">
		<fieldset>
			<ul class="pageitem">
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Code'), $this);?>
" type="text" id="discount_name" name="discount_name" value="<?php if ($this->_tpl_vars['discount_name']): ?><?php echo $this->_tpl_vars['discount_name']; ?>
<?php elseif ($_GET['discount_name']): ?><?php echo $_GET['discount_name']; ?>
<?php endif; ?>" />
				</li>
				<li class="button">
					<input type="submit" name="submitDiscount" value="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
" />
				</li>
			</ul>
		</fieldset>
	</form>
	<?php endif; ?>

	<?php echo $this->_tpl_vars['HOOK_SHOPPING_CART']; ?>

	<?php echo $this->_tpl_vars['HOOK_SHOPPING_CART_EXTRA']; ?>


	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=1" title="<?php echo smartyTranslate(array('s' => 'Next'), $this);?>
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
			<a href="<?php if ($_SERVER['HTTP_REFERER'] && strstr ( $_SERVER['HTTP_REFERER'] , 'order.php' )): ?><?php echo $this->_tpl_vars['base_dir']; ?>
index.php<?php else: ?><?php echo ((is_array($_tmp=$_SERVER['HTTP_REFERER'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" title="<?php echo smartyTranslate(array('s' => 'Continue shopping'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
back.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Continue shopping'), $this);?>
</span>
			</a>
		</li>
	</ul>

	<?php if (( $this->_tpl_vars['carrier']->id && ! $this->_tpl_vars['virtualCart'] ) || $this->_tpl_vars['delivery']->id || $this->_tpl_vars['invoice']->id): ?>
	<ul class="pageitem">
		<?php if ($this->_tpl_vars['delivery']->id): ?>
		<li class="textbox">
			<span class="header"><?php echo smartyTranslate(array('s' => 'Delivery address'), $this);?>
</span>
			<ul class="address item" id="delivery_address">
				<?php if ($this->_tpl_vars['delivery']->company): ?><li class="address_company"><?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->company)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
				<li class="address_name"><?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->lastname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
				<li class="address_address1"><?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->address1)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
				<?php if ($this->_tpl_vars['delivery']->address2): ?><li class="address_address2"><?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->address2)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
				<li class="address_city"><?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->postcode)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->city)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
				<li class="address_country"><?php echo ((is_array($_tmp=$this->_tpl_vars['delivery']->country)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			</ul>
		</li>
		<?php endif; ?>
		<?php if ($this->_tpl_vars['invoice']->id): ?>
		<li class="textbox" id="invoice_address">
			<span class="header"><?php echo smartyTranslate(array('s' => 'Invoice address'), $this);?>
</span>
			<ul class="address item" id="address_delivery">
				<?php if ($this->_tpl_vars['invoice']->company): ?><li class="address_company"><?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->company)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
				<li class="address_name"><?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->lastname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
				<li class="address_address1"><?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->address1)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
				<?php if ($this->_tpl_vars['invoice']->address2): ?><li class="address_address2"><?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->address2)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li><?php endif; ?>
				<li class="address_city"><?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->postcode)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->city)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
				<li class="address_country"><?php echo ((is_array($_tmp=$this->_tpl_vars['invoice']->country)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
			</ul>
		</li>
		<?php endif; ?>
		<?php if ($this->_tpl_vars['carrier']->id && ! $this->_tpl_vars['virtualCart']): ?>
		<li class="textbox" id="order_carrier">
			<span class="header"><?php echo smartyTranslate(array('s' => 'Carrier:'), $this);?>
</span>
			<?php if (isset ( $this->_tpl_vars['carrierPicture'] )): ?><img src="<?php echo $this->_tpl_vars['img_ship_dir']; ?>
<?php echo $this->_tpl_vars['carrier']->id; ?>
.jpg" alt="<?php echo smartyTranslate(array('s' => 'Carrier'), $this);?>
" class="standard" /><?php endif; ?>
			<span><?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
		</li>
		<?php endif; ?>
	</ul>
	<?php endif; ?>

<?php endif; ?>
</div>