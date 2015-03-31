<?php /* Smarty version 2.6.20, created on 2013-11-09 07:57:12
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 4, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 7, false),array('modifier', 'strip_tags', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 16, false),array('modifier', 'date_format', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 22, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 7, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 20, false),array('function', 'displayWtPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list-item.tpl', 29, false),)), $this); ?>
<?php if (isset ( $this->_tpl_vars['product'] ) && $this->_tpl_vars['product']): ?>
<!-- Products list item -->
<li class="store <?php if (($this->_foreach['loop']['iteration'] <= 1)): ?>first_item<?php elseif (($this->_foreach['loop']['iteration'] == $this->_foreach['loop']['total'])): ?>last_item<?php endif; ?> <?php if (($this->_foreach['loop']['iteration']-1) % 2): ?>alternate_item<?php else: ?>item<?php endif; ?>">
	<a class="noeffect" href="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['link'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
		<span class="image" style="background-image: url('<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],$this->_tpl_vars['ips_img_medium']); ?>
')"></span>
				<span class="name"><?php if ($this->_tpl_vars['product']['new'] == 1): ?><span class="new"><?php echo smartyTranslate(array('s' => 'new'), $this);?>
</span><?php endif; ?><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 35, '...') : smarty_modifier_truncate($_tmp, 35, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
		<span class="comment">
			<?php if (isset ( $this->_tpl_vars['product']['allow_oosp'] ) && isset ( $this->_tpl_vars['product']['quantity'] )): ?>
				<?php if (( $this->_tpl_vars['product']['allow_oosp'] || $this->_tpl_vars['product']['quantity'] > 0 )): ?>
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
available.gif" alt="<?php echo smartyTranslate(array('s' => 'Available'), $this);?>
" />
				<?php else: ?>
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
unavailable.gif" alt="<?php echo smartyTranslate(array('s' => 'Out of stock'), $this);?>
" />
				<?php endif; ?>
			<?php endif; ?>&nbsp;
			<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['description_short'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)))) ? $this->_run_mod_handler('truncate', true, $_tmp, 50, '...') : smarty_modifier_truncate($_tmp, 50, '...')); ?>

		</span>
		<span class="comment">
			<p>
				<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price']), $this);?>
<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?> <?php echo smartyTranslate(array('s' => '+Tx'), $this);?>
<?php endif; ?><?php endif; ?>
				<?php if ($this->_tpl_vars['priceDisplay']): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price_tax_exc']), $this);?>
<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?> <?php echo smartyTranslate(array('s' => '-Tx'), $this);?>
<?php endif; ?><?php endif; ?>
				<?php if ($this->_tpl_vars['product']['on_sale'] || ( $this->_tpl_vars['product']['reduction_price'] != 0 || $this->_tpl_vars['product']['reduction_percent'] != 0 ) && ( $this->_tpl_vars['product']['reduction_from'] == $this->_tpl_vars['product']['reduction_to'] || ( ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')) <= $this->_tpl_vars['product']['reduction_to'] && ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')) >= $this->_tpl_vars['product']['reduction_from'] ) )): ?>
				- <span class="reduction">
					<?php if ($this->_tpl_vars['product']['on_sale']): ?>
						<?php echo smartyTranslate(array('s' => 'On sale'), $this);?>

					<?php elseif (( $this->_tpl_vars['product']['reduction_price'] != 0 || $this->_tpl_vars['product']['reduction_percent'] != 0 ) && ( $this->_tpl_vars['product']['reduction_from'] == $this->_tpl_vars['product']['reduction_to'] || ( ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')) <= $this->_tpl_vars['product']['reduction_to'] && ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d') : smarty_modifier_date_format($_tmp, '%Y-%m-%d')) >= $this->_tpl_vars['product']['reduction_from'] ) )): ?>
						<?php echo smartyTranslate(array('s' => 'Reduction'), $this);?>

					<?php endif; ?>
					<!-- span class="price-discount"><?php echo Product::displayWtPrice(array('p' => $this->_tpl_vars['product']['price_without_reduction']), $this);?>
</span -->
					<?php if ($this->_tpl_vars['product']['reduction_percent'] > 0 || $this->_tpl_vars['product']['reduction_price'] > 0): ?>
					: <?php if ($this->_tpl_vars['product']['reduction_percent']): ?>-<?php echo $this->_tpl_vars['product']['reduction_percent']; ?>
%<?php elseif ($this->_tpl_vars['product']['reduction_price']): ?>-<?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['reduction_price']), $this);?>
<?php endif; ?>
					<?php endif; ?>
				</span>
				<?php endif; ?>
			</p>
		</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /Products list item -->
<?php endif; ?>