<?php /* Smarty version 2.6.20, created on 2014-07-09 21:42:03
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-list.tpl', 7, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-list.tpl', 9, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-list.tpl', 13, false),)), $this); ?>
<?php if (isset ( $this->_tpl_vars['products'] )): ?>
	<div id="products-main-list">
		<?php $this->assign('prodnbItemsPerLine', 4); ?>
		<!-- Products list -->
		<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['products'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['products']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['products']['iteration']++;
?>
			<div class="product <?php if (($this->_foreach['products']['iteration']-1) % 2): ?>alternate_item<?php else: ?>item<?php endif; ?> clearfix" <?php if (($this->_foreach['products']['iteration'] == $this->_foreach['products']['total'])): ?>style="margin-right:0;"<?php endif; ?><?php if ($this->_foreach['products']['iteration']%$this->_tpl_vars['prodnbItemsPerLine'] == 0): ?>style="margin-right:0;"<?php endif; ?>>
				<a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['link'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="" onfocus="this.blur();">
					<img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['id_image'],'home'); ?>
" width="203" height="203" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['legend'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
					<p><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')))) ? $this->_run_mod_handler('truncate', true, $_tmp, 35, '...') : smarty_modifier_truncate($_tmp, 35, '...')); ?>
</p>
					<span>[+]</span>
					
					<?php if ($this->_tpl_vars['product']->on_sale): ?>
						<img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/onsale-small.png" alt="<?php echo smartyTranslate(array('s' => 'On sale'), $this);?>
" class="on_sale_img_zoom_format"/>
					<?php endif; ?>
				</a>
			</div>
		<?php endforeach; endif; unset($_from); ?>
		<!-- /Products list -->
		<div class="clear"></div>
	</div><!-- EOF products-main-list -->
<?php endif; ?>
