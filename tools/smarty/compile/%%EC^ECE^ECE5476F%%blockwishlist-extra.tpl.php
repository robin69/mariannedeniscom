<?php /* Smarty version 2.6.20, created on 2015-03-31 12:32:59
         compiled from /home/www/mariannedenis.com/modules/blockwishlist/blockwishlist-extra.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/home/www/mariannedenis.com/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),array('function', 'l', '/home/www/mariannedenis.com/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),)), $this); ?>


<a href="javascript:;" class="add2wishlist" onclick="javascript:WishlistCart('wishlist_block_list', 'add', '<?php echo ((is_array($_tmp=$this->_tpl_vars['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
', $('#idCombination').val(), document.getElementById('quantity_wanted').value);"><?php echo smartyTranslate(array('s' => 'Add to my wishlist','mod' => 'blockwishlist'), $this);?>
</a>
						