<?php /* Smarty version 2.6.20, created on 2010-11-28 12:15:06
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/prestashop/my-account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/prestashop/my-account.tpl', 7, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<h2 class="page_title_h2"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</h2>

<div class="my-account-container">

	<ul class="accounts-item-list">
		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php" title="<?php echo smartyTranslate(array('s' => 'Orders'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-commandes.jpg" alt="<?php echo smartyTranslate(array('s' => 'Orders'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php" title="<?php echo smartyTranslate(array('s' => 'Orders'), $this);?>
"><?php echo smartyTranslate(array('s' => 'History and details of your orders'), $this);?>
</a></li>
		<?php if ($this->_tpl_vars['returnAllowed']): ?>
			<li style="display:none;"><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-follow.php" title="<?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/return.gif" alt="<?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-follow.php" title="<?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
</a></li>
		<?php endif; ?>
		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-slip.php" title="<?php echo smartyTranslate(array('s' => 'Credit slips'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-avoirs.jpg" alt="<?php echo smartyTranslate(array('s' => 'Credit slips'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-slip.php" title="<?php echo smartyTranslate(array('s' => 'Credit slips'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Credit slips'), $this);?>
</a></li>
		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
addresses.php" title="<?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-adresses.jpg" alt="<?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
addresses.php" title="<?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Your addresses'), $this);?>
</a></li>
		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
identity.php" title="<?php echo smartyTranslate(array('s' => 'Information'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-infos.jpg" alt="<?php echo smartyTranslate(array('s' => 'Information'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
identity.php" title="<?php echo smartyTranslate(array('s' => 'Information'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Your personal information'), $this);?>
</a></li>
		<?php if ($this->_tpl_vars['voucherAllowed']): ?>
			<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
discount.php" title="<?php echo smartyTranslate(array('s' => 'Vouchers'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-reduc.jpg" alt="<?php echo smartyTranslate(array('s' => 'Vouchers'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
discount.php" title="<?php echo smartyTranslate(array('s' => 'Vouchers'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Your vouchers'), $this);?>
</a></li>
		<?php endif; ?>
		<?php echo $this->_tpl_vars['HOOK_CUSTOMER_ACCOUNT']; ?>

		<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
index.php?mylogout" title="D&eacute;connexion"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-logout.jpg" alt="D&eacute;connexion" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
index.php?mylogout" title="D&eacute;connexion">D&eacute;connexion</a></li>
	</ul>
	
	<h4 class="accounts-item-list-intro"><?php echo smartyTranslate(array('s' => 'Welcome to your account. Here you can manage your addresses and orders.'), $this);?>
</h4>
	
	<div class="clear"></div>
	
	<p style="display:none;"><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Home'), $this);?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/home.gif" alt="<?php echo smartyTranslate(array('s' => 'Home'), $this);?>
" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
" title="<?php echo smartyTranslate(array('s' => 'Home'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Home'), $this);?>
</a></p>

</div>