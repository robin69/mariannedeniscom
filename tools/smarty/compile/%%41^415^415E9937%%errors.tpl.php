<?php /* Smarty version 2.6.20, created on 2013-11-09 07:55:21
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./errors.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./errors.tpl', 4, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./errors.tpl', 12, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./errors.tpl', 4, false),)), $this); ?>
<?php if (isset ( $this->_tpl_vars['errors'] ) && $this->_tpl_vars['errors']): ?>
<ul class="pageitem error">
	<li class="textbox">
		<span class="header"><?php if (count($this->_tpl_vars['errors']) > 1): ?><?php echo smartyTranslate(array('s' => 'There are'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'There is'), $this);?>
<?php endif; ?> <?php echo count($this->_tpl_vars['errors']); ?>
 <?php if (count($this->_tpl_vars['errors']) > 1): ?><?php echo smartyTranslate(array('s' => 'errors'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'error'), $this);?>
<?php endif; ?> :</span>
		<ol>
		<?php $_from = $this->_tpl_vars['errors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['error']):
?>
			<li><?php echo $this->_tpl_vars['error']; ?>
</li>
		<?php endforeach; endif; unset($_from); ?>
		</ol>
	</li>
	<li class="menu">
		<a href="<?php echo ((is_array($_tmp=$_SERVER['HTTP_REFERER'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="<?php echo smartyTranslate(array('s' => 'Back'), $this);?>
">
			<img alt="list" src="<?php echo $this->_tpl_vars['img_dir']; ?>
error_back.png" />
			<span class="name"><?php echo smartyTranslate(array('s' => 'Back'), $this);?>
</span>
		</a>
	</li>
</ul>
<?php endif; ?>