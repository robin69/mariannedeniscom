<?php /* Smarty version 2.6.20, created on 2010-11-25 08:37:35
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/my-account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/my-account.tpl', 9, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
	</div>
	<div id="title"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php" class="noeffect"><?php echo smartyTranslate(array('s' => 'Cart'), $this);?>
</a>
	</div>
</div>
<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Welcome to your account!'), $this);?>
</span>
	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php" title="<?php echo smartyTranslate(array('s' => 'Orders'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
calendar.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'History of my orders'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	<?php if ($this->_tpl_vars['returnAllowed']): ?>
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-follow.php" title="<?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
clock.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Merchandise returns'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	<?php endif; ?>
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order-slip.php" title="<?php echo smartyTranslate(array('s' => 'Credit slips'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
notepad.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Credit slips'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
addresses.php" title="<?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
contacts.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'My addresses'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
identity.php" title="<?php echo smartyTranslate(array('s' => 'Information'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
accessibility.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'My personal information'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	<?php if ($this->_tpl_vars['voucherAllowed']): ?>
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
discount.php" title="<?php echo smartyTranslate(array('s' => 'Vouchers'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
voucher.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Vouchers'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	<?php endif; ?>
		<?php echo $this->_tpl_vars['HOOK_CUSTOMER_ACCOUNT']; ?>

	</ul>

	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
index.php?logout">
				<img alt="<?php echo smartyTranslate(array('s' => 'account'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
logout.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Log me out'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
</div>