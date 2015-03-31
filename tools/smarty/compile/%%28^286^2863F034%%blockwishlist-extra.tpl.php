<?php /* Smarty version 2.6.20, created on 2014-07-09 22:00:25
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/blockwishlist-extra.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),)), $this); ?>


<a href="javascript:;" class="add2wishlist" onclick="javascript:WishlistCart('wishlist_block_list', 'add', '<?php echo ((is_array($_tmp=$this->_tpl_vars['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
', $('#idCombination').val(), document.getElementById('quantity_wanted').value);"><?php echo smartyTranslate(array('s' => 'Add to my wishlist','mod' => 'blockwishlist'), $this);?>
</a>
						