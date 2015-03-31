<?php /* Smarty version 2.6.20, created on 2015-03-27 15:36:39
         compiled from /home/www/mariannedenis.com/themes/prestashop/./account-icons.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/themes/prestashop/./account-icons.tpl', 2, false),)), $this); ?>
<ul class="account-icons-bloc">
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
" title="Accueil"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-home.jpg" alt="<?php echo smartyTranslate(array('s' => 'Home'), $this);?>
" class="icon" /><p>Accueil</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php" title="Mon compte"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-account.jpg" alt="<?php echo smartyTranslate(array('s' => 'Back to Your Account'), $this);?>
" class="icon" /><p>Compte</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php" title="Commandes"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-commandes.jpg" alt="Commandes" class="icon" /><p>Commandes</p></a></li>
	<?php if ($this->_tpl_vars['returnAllowed']): ?>
		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-follow.php" title="<?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/return.gif" alt="<?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
" class="icon" /></a></li>
	<?php endif; ?>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-slip.php" title="Avoirs"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-avoirs.jpg" alt="Avoirs" class="icon" /><p>Avoirs</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
addresses.php" title="Adresses"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-adresses.jpg" alt="Adresses" class="icon" /><p>Adresses</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
identity.php" title="Profil"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-infos.jpg" alt="Profil" class="icon" /><p>Profil</p></a></li>
	<?php if ($this->_tpl_vars['voucherAllowed']): ?>
		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
discount.php" title="R&eacute;ductions"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-reduc.jpg" alt="R&eacute;ductions" class="icon" /><p>R&eacute;ductions</p></a></li>
	<?php endif; ?>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/blockwishlist/mywishlist.php" title="Wishlists"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-wishlist.jpg" alt="Wishlists" class="icon" /><p>Wishlists</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/loyalty/loyalty-program.php" title="Programme de fid&eacute;lit&eacute;"><img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/icon/icon-fidelite.jpg" alt="<?php echo smartyTranslate(array('s' => 'My loyalty points','mod' => 'loyalty'), $this);?>
" class="icon" /><p>Fid&eacute;lit&eacute;</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/referralprogram/referralprogram-program.php" title="Parrainage"><img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/icon/icon-parrainage.jpg" alt="<?php echo smartyTranslate(array('s' => 'referralprogram','mod' => 'referralprogram'), $this);?>
" class="icon" /><p>Parrainage</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/mailalerts/myalerts.php" title="Mes alertes"><img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/icon/icon-alertes.jpg" alt="<?php echo smartyTranslate(array('s' => 'referralprogram','mod' => 'referralprogram'), $this);?>
" class="icon" /><p>Mes alertes</p></a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
index.php?mylogout" title="D&eacute;connexion"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-logout.jpg" alt="D&eacute;connexion" class="icon" /><p>D&eacute;connexion</p></a></li>
	<div class="clear"></div>
</ul>