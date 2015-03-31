<?php /* Smarty version 2.6.20, created on 2012-08-07 01:05:41
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/sendtoafriend.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/sendtoafriend.tpl', 4, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/sendtoafriend.tpl', 30, false),array('modifier', 'stripslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/sendtoafriend.tpl', 30, false),)), $this); ?>
<!-- MODULE Send to a friend -->
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home','mod' => 'sendtoafriend'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['productLink']; ?>
"><?php echo smartyTranslate(array('s' => 'Back','mod' => 'sendtoafriend'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
order.php"><?php echo smartyTranslate(array('s' => 'Cart','mod' => 'sendtoafriend'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Send to a friend','mod' => 'sendtoafriend'), $this);?>
</span>
	<?php if ($this->_tpl_vars['confirm']): ?>
		<?php ob_start(); ?><?php echo $this->_tpl_vars['confirm']; ?>
<?php $this->_smarty_vars['capture']['confirmation'] = ob_get_contents(); ob_end_clean(); ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./confirmation.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php else: ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<form method="post" action="<?php echo $this->_tpl_vars['request_uri']; ?>
" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox"><?php echo smartyTranslate(array('s' => 'Send this page to a friend who might be interested in the item below.','mod' => 'sendtoafriend'), $this);?>
</li>
				<li class="textbox">
					<p>
						<a href="<?php echo $this->_tpl_vars['productLink']; ?>
"><img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['cover']['id_image'],$this->_tpl_vars['ips_img_small']); ?>
" alt="<?php echo $this->_tpl_vars['cover']['legend']; ?>
" /></a>
					</p>
					<span class="header"><a href="<?php echo $this->_tpl_vars['productLink']; ?>
"><?php echo $this->_tpl_vars['product']->name; ?>
</a></span>
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Friend\'s name','mod' => 'sendtoafriend'), $this);?>
" type="text" id="friend-name" name="name" value="<?php if (isset ( $_POST['name'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall') : smarty_modifier_escape($_tmp, 'htmlall')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Friend\'s email','mod' => 'sendtoafriend'), $this);?>
" type="text" id="friend-address" name="email" value="<?php if (isset ( $_POST['email'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['email'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall') : smarty_modifier_escape($_tmp, 'htmlall')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" />
				</li>
				<li class="button">
					<input type="submit" name="submitAddtoafriend" value="<?php echo smartyTranslate(array('s' => 'send','mod' => 'sendtoafriend'), $this);?>
" class="button" />
				</li>
			</ul>
		</fieldset>
	</form>
	<?php endif; ?>
</div>
<!-- /MODULE Send to a friend -->