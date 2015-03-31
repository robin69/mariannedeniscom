<?php /* Smarty version 2.6.20, created on 2013-10-30 19:13:44
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/my-account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/my-account.tpl', 3, false),)), $this); ?>
<!-- MODULE WishList -->
<li class="menu">
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/blockwishlist/mywishlist.php" title="<?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
wishlist.png" alt="<?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
" />
		<span class="name"><?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /MODULE WishList -->