<?php /* Smarty version 2.6.20, created on 2015-03-31 11:48:12
         compiled from /home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 15, false),array('modifier', 'ceil', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 16, false),array('modifier', 'strip_tags', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 24, false),array('modifier', 'truncate', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 24, false),array('modifier', 'escape', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 24, false),array('function', 'l', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 32, false),array('function', 'convertPrice', '/home/www/mariannedenis.com/modules/homefeatured/homefeatured.tpl', 35, false),)), $this); ?>
<!-- MODULE Home Featured Products -->
	<div class="info_zone">
		<div class="info_generale">Frais de port offerts à partir de 50€ d'achat</div>
		<!-- <div class="info_generale">Livraison garantie avant Noël</div> -->
		<div class="info_generale">Paiement sécurisé par CB</div>
	</div>
<!-- 	<div id="infos_noel">Livraison garantie pour Noël<br />pour toute commande passée avant le 21/12</div> -->

		<br class="clear"/>
	<?php if (isset ( $this->_tpl_vars['products'] ) && $this->_tpl_vars['products']): ?>
	
		<div class="block_content">
			<?php $this->assign('liHeight', 342); ?>
			<?php $this->assign('nbItemsPerLine', 4); ?>
			<?php $this->assign('nbLi', count($this->_tpl_vars['products'])); ?>
			<?php $this->assign('nbLines', ((is_array($_tmp=$this->_tpl_vars['nbLi']/$this->_tpl_vars['nbItemsPerLine'])) ? $this->_run_mod_handler('ceil', true, $_tmp) : ceil($_tmp))); ?>
			<?php $this->assign('ulHeight', $this->_tpl_vars['nbLines']*$this->_tpl_vars['liHeight']); ?>
			
			<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['homeFeaturedProducts'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['homeFeaturedProducts']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['homeFeaturedProducts']['iteration']++;
?>
			
				<!-- PRODUCT -->
				<div class="product" <?php if (($this->_foreach['homeFeaturedProducts']['iteration'] == $this->_foreach['homeFeaturedProducts']['total'])): ?>style="margin-right:0;"<?php endif; ?> <?php if ($this->_foreach['homeFeaturedProducts']['iteration']%$this->_tpl_vars['nbItemsPerLine'] == 0): ?>style="margin-right:0;"<?php endif; ?>>
					<a href="<?php echo $this->_tpl_vars['product']['link']; ?>
" title="" onfocus="this.blur();">
						<img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],'home'); ?>
" width="203" height="203" alt="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['description_short'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)))) ? $this->_run_mod_handler('truncate', true, $_tmp, 130, '...') : smarty_modifier_truncate($_tmp, 130, '...')); ?>
"  title="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 27, '...') : smarty_modifier_truncate($_tmp, 27, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"/>
						<p><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 35, '...') : smarty_modifier_truncate($_tmp, 35, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</p>
						<span>[+]</span>
					</a>
				</div>
			
				<li class="ajax_block_product <?php if (($this->_foreach['homeFeaturedProducts']['iteration'] <= 1)): ?>first_item<?php elseif (($this->_foreach['homeFeaturedProducts']['iteration'] == $this->_foreach['homeFeaturedProducts']['total'])): ?>last_item<?php else: ?>item<?php endif; ?> <?php if ($this->_foreach['homeFeaturedProducts']['iteration']%$this->_tpl_vars['nbItemsPerLine'] == 0): ?>last_item_of_line<?php elseif ($this->_foreach['homeFeaturedProducts']['iteration']%$this->_tpl_vars['nbItemsPerLine'] == 1): ?>clear<?php endif; ?> <?php if ($this->_foreach['homeFeaturedProducts']['iteration'] > ( $this->_foreach['homeFeaturedProducts']['total'] - ( $this->_foreach['homeFeaturedProducts']['total'] % $this->_tpl_vars['nbItemsPerLine'] ) )): ?>last_line<?php endif; ?>" style="display:none;">
					<h5><a href="<?php echo $this->_tpl_vars['product']['link']; ?>
" title="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 32, '...') : smarty_modifier_truncate($_tmp, 32, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 27, '...') : smarty_modifier_truncate($_tmp, 27, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a></h5>
					<p class="product_desc"><a href="<?php echo $this->_tpl_vars['product']['link']; ?>
" title="<?php echo smartyTranslate(array('s' => 'More','mod' => 'homefeatured'), $this);?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['description_short'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)))) ? $this->_run_mod_handler('truncate', true, $_tmp, 130, '...') : smarty_modifier_truncate($_tmp, 130, '...')); ?>
</a></p>
					<a href="<?php echo $this->_tpl_vars['product']['link']; ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html', 'UTF-8') : smarty_modifier_escape($_tmp, 'html', 'UTF-8')); ?>
" class="product_image"><img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],'home'); ?>
" height="<?php echo $this->_tpl_vars['homeSize']['height']; ?>
" width="<?php echo $this->_tpl_vars['homeSize']['width']; ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html', 'UTF-8') : smarty_modifier_escape($_tmp, 'html', 'UTF-8')); ?>
" /></a>
					<div>
						<p class="price_container"><span class="price"><?php if (! $this->_tpl_vars['priceDisplay']): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price']), $this);?>
<?php else: ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']['price_tax_exc']), $this);?>
<?php endif; ?></span></p>
						<a class="button" href="<?php echo $this->_tpl_vars['product']['link']; ?>
" title="<?php echo smartyTranslate(array('s' => 'View','mod' => 'homefeatured'), $this);?>
"><?php echo smartyTranslate(array('s' => 'View','mod' => 'homefeatured'), $this);?>
</a>
						<?php if (( $this->_tpl_vars['product']['quantity'] > 0 || $this->_tpl_vars['product']['allow_oosp'] ) && $this->_tpl_vars['product']['customizable'] != 2): ?>
						<a class="exclusive ajax_add_to_cart_button" rel="ajax_id_product_<?php echo $this->_tpl_vars['product']['id_product']; ?>
" href="<?php echo $this->_tpl_vars['base_dir']; ?>
cart.php?qty=1&amp;id_product=<?php echo $this->_tpl_vars['product']['id_product']; ?>
&amp;token=<?php echo $this->_tpl_vars['static_token']; ?>
&amp;add" title="<?php echo smartyTranslate(array('s' => 'Add to cart','mod' => 'homefeatured'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Add to cart','mod' => 'homefeatured'), $this);?>
</a>
						<?php else: ?>
						<span class="exclusive"><?php echo smartyTranslate(array('s' => 'Add to cart','mod' => 'homefeatured'), $this);?>
</span>
						<?php endif; ?>
					</div>
				</li>
			
			<?php endforeach; endif; unset($_from); ?>
			
		</div>
		
	<?php else: ?>
		<p><?php echo smartyTranslate(array('s' => 'No featured products','mod' => 'homefeatured'), $this);?>
</p>
	<?php endif; ?>
	
	<div class="clear"></div>

<!-- /MODULE Home Featured Products -->