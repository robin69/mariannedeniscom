<?php /* Smarty version 2.6.20, created on 2010-11-28 12:15:06
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/blockwishlist/my-account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/blockwishlist/my-account.tpl', 3, false),)), $this); ?>
<!-- MODULE WishList -->
<li>
<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/blockwishlist/mywishlist.php" title="<?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-wishlist.jpg" alt="Wishlists" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/blockwishlist/mywishlist.php" title="<?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
"><?php echo smartyTranslate(array('s' => 'My wishlists','mod' => 'blockwishlist'), $this);?>
</a>
</li>
<!-- END : MODULE WishList -->