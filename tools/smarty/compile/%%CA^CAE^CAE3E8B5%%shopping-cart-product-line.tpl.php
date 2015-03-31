<?php /* Smarty version 2.6.20, created on 2013-03-04 03:38:48
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl', 3, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl', 18, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl', 19, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl', 12, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl', 18, false),array('function', 'displayPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./shopping-cart-product-line.tpl', 29, false),)), $this); ?>
<tr class="<?php if (($this->_foreach['productLoop']['iteration'] == $this->_foreach['productLoop']['total'])): ?>last_item<?php elseif (($this->_foreach['productLoop']['iteration'] <= 1)): ?>first_item<?php endif; ?><?php if (isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) && $this->_tpl_vars['quantityDisplayed'] == 0): ?>alternate_item<?php endif; ?> cart_item">
	<td class="cart_product" width="90" style="padding-left:10px;">
		<a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getProductLink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],'small'); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" width="60" height="60" /></a>
	</td>
	<td class="cart_description">
		<h5><a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getProductLink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a></h5>
		<?php if ($this->_tpl_vars['product']['attributes']): ?><a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getProductLink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['attributes'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a><?php endif; ?>
	</td>
	<td class="cart_ref" align="left" width="120" style="text-align:left;"><?php if ($this->_tpl_vars['product']['reference']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['reference'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php else: ?>--<?php endif; ?></td>
	<td class="cart_unit" align="left" width="90" style="padding-right:15px;">
		<span class="price">
			<?php if (! $this->_tpl_vars['priceDisplay']): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price_wt']), $this);?>
<?php else: ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price']), $this);?>
<?php endif; ?>
		</span>
	</td>
	<td class="cart_quantity"<?php if (isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) && $this->_tpl_vars['quantityDisplayed'] == 0): ?> style="text-align: center;"<?php endif; ?> width="120">
		<?php if (isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) && $this->_tpl_vars['quantityDisplayed'] == 0): ?><p class="cart_quantity_nb_custom"><?php echo $this->_tpl_vars['product']['customizationQuantityTotal']; ?>
</p><?php endif; ?>
		<?php if (! isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) || $this->_tpl_vars['quantityDisplayed'] > 0): ?>
			<a class="cart_quantity_delete" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?delete&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Delete'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s' => 'Delete'), $this);?>
" class="icon" /></a>
		<p class="cart_quantity_nb"><?php if ($this->_tpl_vars['quantityDisplayed'] == 0 && isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] )): ?><?php echo count($this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']]); ?>
<?php else: ?><?php echo $this->_tpl_vars['product']['cart_quantity']-$this->_tpl_vars['quantityDisplayed']; ?>
<?php endif; ?></p>
		<p class="cart_quantity_container">	
			<a class="cart_quantity_up" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?add&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/quantity_up.gif" alt="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
" /></a><br />
			<a class="cart_quantity_down" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?add&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;op=down&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Subtract'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/quantity_down.gif" alt="<?php echo smartyTranslate(array('s' => 'Subtract'), $this);?>
" /></a>
		</p>
		<?php endif; ?>
	</td>
	<td class="cart_total" width="100" style="text-align:right;padding-right:10px;">
		<span class="price">
			<?php if ($this->_tpl_vars['quantityDisplayed'] == 0 && isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] )): ?>
				<?php if (! $this->_tpl_vars['priceDisplay']): ?><?php echo Tools::displayPriceSmarty(array('price' => $this->_tpl_vars['product']['total_customization_wt']), $this);?>
<?php else: ?><?php echo Tools::displayPriceSmarty(array('price' => $this->_tpl_vars['product']['total_customization']), $this);?>
<?php endif; ?>
			<?php else: ?>
				<?php if (! $this->_tpl_vars['priceDisplay']): ?><?php echo Tools::displayPriceSmarty(array('price' => $this->_tpl_vars['product']['total_wt']), $this);?>
<?php else: ?><?php echo Tools::displayPriceSmarty(array('price' => $this->_tpl_vars['product']['total']), $this);?>
<?php endif; ?>
			<?php endif; ?>
		</span>
	</td>
</tr>