<?php /* Smarty version 2.6.20, created on 2013-03-05 10:11:24
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/footer.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/footer.tpl', 4, false),)), $this); ?>
<?php if (isset ( $_GET['browse'] )): ?>
	<div id="topbar">
		<div id="leftnav">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		</div>
		<div id="title">
			<?php echo smartyTranslate(array('s' => 'Browse'), $this);?>

		</div>
		<div id="rightbutton">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
search.php"><?php echo smartyTranslate(array('s' => 'Search'), $this);?>
</a>
		</div>
	</div>
	<div id="content">
		<?php echo $this->_tpl_vars['HOOK_LEFT_COLUMN']; ?>

		<?php echo $this->_tpl_vars['HOOK_RIGHT_COLUMN']; ?>

	</div>
<?php endif; ?>

		<div id="footer">
			<?php if ($this->_tpl_vars['logged']): ?>
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo $this->_tpl_vars['customerName']; ?>
</a> (<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
index.php?mylogout" title="<?php echo smartyTranslate(array('s' => 'Log me out'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Log out'), $this);?>
</a>)
			<?php else: ?>
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'Log in'), $this);?>
</a>
			<?php endif; ?>
			<hr />
			<?php echo $this->_tpl_vars['HOOK_FOOTER']; ?>

			<a class="noeffect" href="http://mariannedenis.com">Mariannedenis.com</a> <?php echo smartyTranslate(array('s' => 'by'), $this);?>
 <a href="http://www.studio-http.com">Studio HTTP</a>.
		</div>
	</body>
</html>