<?php /* Smarty version 2.6.20, created on 2014-07-09 22:00:25
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/productscategory/productscategory.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/productscategory/productscategory.tpl', 6, false),array('modifier', 'htmlspecialchars', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/productscategory/productscategory.tpl', 18, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/productscategory/productscategory.tpl', 19, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/productscategory/productscategory.tpl', 19, false),)), $this); ?>
<?php if (count ( $this->_tpl_vars['categoryProducts'] ) > 0): ?>
<a name="sameCategory"></a>
<script type="text/javascript">var middle = <?php echo $this->_tpl_vars['middlePosition']; ?>
;</script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
modules/productscategory/js/productscategory.js"></script>
<ul class="idTabs">
	<li><a href="#idTab3"><?php echo smartyTranslate(array('s' => 'In the same category','mod' => 'productscategory'), $this);?>
</a></li>
</ul>

<div id="<?php if (count ( $this->_tpl_vars['categoryProducts'] ) > 5): ?>productscategory<?php else: ?>productscategory_noscroll<?php endif; ?>">

<div id="productscategory_list">
	<ul>
		<?php $_from = $this->_tpl_vars['categoryProducts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['categoryProduct'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['categoryProduct']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['categoryProduct']):
        $this->_foreach['categoryProduct']['iteration']++;
?>
		<li>
			
			<div class="product">
				<a href="<?php echo $this->_tpl_vars['link']->getProductLink($this->_tpl_vars['categoryProduct']['id_product'],$this->_tpl_vars['categoryProduct']['link_rewrite'],$this->_tpl_vars['categoryProduct']['category']); ?>
" title="" onfocus="this.blur();">
					<img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['categoryProduct']['link_rewrite'],$this->_tpl_vars['categoryProduct']['id_image'],'medium'); ?>
" width="203" height="203" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['categoryProduct']['name'])) ? $this->_run_mod_handler('htmlspecialchars', true, $_tmp) : htmlspecialchars($_tmp)); ?>
" />
					<p><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['categoryProduct']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 35, '...') : smarty_modifier_truncate($_tmp, 35, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</p>
					<span>[+]</span>
				</a>
			</div>
			
		</li>
		<?php endforeach; endif; unset($_from); ?>
	</ul>
</div>

<?php if (count ( $this->_tpl_vars['categoryProducts'] ) > 4): ?><a id="productscategory_scroll_left" title="<?php echo smartyTranslate(array('s' => 'Previous','mod' => 'productscategory'), $this);?>
" href="javascript:{}"><?php echo smartyTranslate(array('s' => 'Previous','mod' => 'productscategory'), $this);?>
</a><?php endif; ?>
<?php if (count ( $this->_tpl_vars['categoryProducts'] ) > 4): ?><a id="productscategory_scroll_right" title="<?php echo smartyTranslate(array('s' => 'Next','mod' => 'productscategory'), $this);?>
" href="javascript:{}"><?php echo smartyTranslate(array('s' => 'Next','mod' => 'productscategory'), $this);?>
</a><?php endif; ?>

</div>
<?php endif; ?>

<br class="clear" />