<?php /* Smarty version 2.6.20, created on 2013-11-09 07:55:21
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist-extra.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist-extra.tpl', 3, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist-extra.tpl', 4, false),)), $this); ?>
<!-- MODULE Block WishList -->
<li class="menu">
	<a class="noeffect" href="javascript:WishlistCart('wishlist_block_list', 'add', '<?php echo ((is_array($_tmp=$this->_tpl_vars['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
', $('#idCombination').val(), document.getElementById('quantity_wanted').value);">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
wishlist_add.png" alt="<?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
" />
		<span class="name" id="wishlist_block_list"><?php echo smartyTranslate(array('s' => 'Add to my wishlist','mod' => 'blockwishlist'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<script type="text/javascript">
<!--
var wishlistConfirmation = "<?php echo smartyTranslate(array('s' => 'Product added to wishlist!','mod' => 'blockwishlist'), $this);?>
";
//-->
</script>
<!-- /MODULE Block WishList -->