<?php /* Smarty version 2.6.20, created on 2013-03-04 14:21:29
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/404.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/404.tpl', 3, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
my-account.php" class="noeffect"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>

<div id="content">

	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Page not available'), $this);?>
</span>
	<ul class="pageitem error">
		<li class="textbox">
			<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
error.png" alt="<?php echo smartyTranslate(array('s' => 'Error'), $this);?>
" width="32" height="32" />
			<?php echo smartyTranslate(array('s' => 'We\'re sorry, but the Web address you entered is no longer available'), $this);?>

		</li>
	</ul>

	<form action="<?php echo $this->_tpl_vars['base_dir']; ?>
search.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'To find a product, please type its name in the field below'), $this);?>
</span>
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Search in our catalog'), $this);?>
" id="search_query" name="search_query" type="text" />
				</li>
				<li class="button">
					<input type="submit" name="Submit" value="<?php echo smartyTranslate(array('s' => 'OK'), $this);?>
" />
				</li>
			</ul>
		</fieldset>
	</form>

</div>