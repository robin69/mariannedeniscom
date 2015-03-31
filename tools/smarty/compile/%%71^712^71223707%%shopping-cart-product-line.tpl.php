<?php /* Smarty version 2.6.20, created on 2010-11-01 19:30:09
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl', 2, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl', 12, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl', 22, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl', 34, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl', 6, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./shopping-cart-product-line.tpl', 13, false),)), $this); ?>
<li class="store <?php if (($this->_foreach['productLoop']['iteration'] == $this->_foreach['productLoop']['total'])): ?>last_item<?php elseif (($this->_foreach['productLoop']['iteration'] <= 1)): ?>first_item<?php endif; ?><?php if (isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) && $this->_tpl_vars['quantityDisplayed'] == 0): ?>alternate_item<?php endif; ?> cart_item">
	<a class="noeffect" href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getProductLink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
		<span class="image" style="background-image: url('<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],$this->_tpl_vars['ips_img_medium']); ?>
')"></span>
		<span class="name">
		<?php if ($this->_tpl_vars['product']['active'] && ( $this->_tpl_vars['product']['allow_oosp'] || $this->_tpl_vars['product']['stock_quantity'] > 0 )): ?>
			<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
available.gif" alt="<?php echo smartyTranslate(array('s' => 'Available'), $this);?>
" />
		<?php else: ?>
			<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
unavailable.gif" alt="<?php echo smartyTranslate(array('s' => 'Out of stock'), $this);?>
" />
		<?php endif; ?>
			<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

		</span>
		<span class="comment"><?php if ($this->_tpl_vars['product']['attributes']): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['attributes_small'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')))) ? $this->_run_mod_handler('truncate', true, $_tmp, 50, '...') : smarty_modifier_truncate($_tmp, 50, '...')); ?>
<?php endif; ?></span>
		<span class="starcomment"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price']), $this);?>
 <?php echo smartyTranslate(array('s' => '-Tx'), $this);?>
</span>
		<span class="arrow"></span>
			</a>
</li>
<li class="textbox">
	<span class="product_quantity">
		<?php if (isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) && $this->_tpl_vars['quantityDisplayed'] == 0): ?><?php echo $this->_tpl_vars['product']['customizationQuantityTotal']; ?>
<?php endif; ?>
		<?php if (! isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] ) || $this->_tpl_vars['quantityDisplayed'] > 0): ?>
			<a class="cart_quantity_delete" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?delete&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Delete'), $this);?>
">
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
cancel.png" alt="<?php echo smartyTranslate(array('s' => 'Delete'), $this);?>
" />
			</a>
			<a class="cart_quantity_up" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?add&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
">
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
cart_add.png" alt="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
" />
			</a>
			<a class="cart_quantity_down" onclick="return confirm('<?php echo smartyTranslate(array('s' => 'Are you sure?'), $this);?>
');" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
cart.php?add&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;ipa=<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['id_product_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;op=down&amp;token=<?php echo $this->_tpl_vars['token_cart']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Subtract'), $this);?>
">
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
cart_remove.png" alt="<?php echo smartyTranslate(array('s' => 'Subtract'), $this);?>
" />
			</a>
		<?php endif; ?>
	</span>
	<span class="price">
		<?php if ($this->_tpl_vars['quantityDisplayed'] == 0 && isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] )): ?><?php echo count($this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']]); ?>
<?php else: ?><?php echo $this->_tpl_vars['product']['quantity']-$this->_tpl_vars['quantityDisplayed']; ?>
<?php endif; ?>
		<?php echo smartyTranslate(array('s' => 'x'), $this);?>

		<?php if ($this->_tpl_vars['quantityDisplayed'] == 0 && isset ( $this->_tpl_vars['customizedDatas'][$this->_tpl_vars['productId']][$this->_tpl_vars['productAttributeId']] )): ?>
			<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['total_customization_wt']), $this);?>
<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?> <?php echo smartyTranslate(array('s' => '+Tx'), $this);?>
<?php endif; ?><?php endif; ?><?php if ($this->_tpl_vars['priceDisplay'] == 2): ?><br /><?php endif; ?>
			<?php if ($this->_tpl_vars['priceDisplay']): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['total_customization']), $this);?>
<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?> <?php echo smartyTranslate(array('s' => '-Tx'), $this);?>
<?php endif; ?><?php endif; ?>
		<?php else: ?>
			<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['total_wt']), $this);?>
<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?> <?php echo smartyTranslate(array('s' => '+Tx'), $this);?>
<?php endif; ?><?php endif; ?><?php if ($this->_tpl_vars['priceDisplay'] == 2): ?><br /><?php endif; ?>
			<?php if ($this->_tpl_vars['priceDisplay']): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['total']), $this);?>
<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?> <?php echo smartyTranslate(array('s' => '-Tx'), $this);?>
<?php endif; ?><?php endif; ?>
		<?php endif; ?>
	</span>
</li>