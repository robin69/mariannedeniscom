<?php /* Smarty version 2.6.20, created on 2013-03-05 11:16:53
         compiled from /home/mdcrea/public_html/modules/blockwishlist/blockwishlist-extra.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/home/mdcrea/public_html/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),array('function', 'l', '/home/mdcrea/public_html/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),)), $this); ?>


<a href="javascript:;" class="add2wishlist" onclick="javascript:WishlistCart('wishlist_block_list', 'add', '<?php echo ((is_array($_tmp=$this->_tpl_vars['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
', $('#idCombination').val(), document.getElementById('quantity_wanted').value);"><?php echo smartyTranslate(array('s' => 'Add to my wishlist','mod' => 'blockwishlist'), $this);?>
</a>
						