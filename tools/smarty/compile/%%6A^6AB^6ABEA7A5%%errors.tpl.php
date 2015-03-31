<?php /* Smarty version 2.6.20, created on 2014-07-09 22:00:42
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./errors.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./errors.tpl', 9, false),array('modifier', 'secureReferrer', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./errors.tpl', 9, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./errors.tpl', 9, false),)), $this); ?>
<?php if (isset ( $this->_tpl_vars['errors'] ) && $this->_tpl_vars['errors']): ?>
	<div class="error">
		<img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/icon/warning.png" width="40" height="38" alt="" />
		<ul>
		<?php $_from = $this->_tpl_vars['errors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['error']):
?>
			<li><?php echo $this->_tpl_vars['error']; ?>
</li>
		<?php endforeach; endif; unset($_from); ?>
		</ul>
		<p><a href="<?php echo ((is_array($_tmp=((is_array($_tmp=$_SERVER['HTTP_REFERER'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')))) ? $this->_run_mod_handler('secureReferrer', true, $_tmp) : Tools::secureReferrer($_tmp)); ?>
" class="button_small" title="<?php echo smartyTranslate(array('s' => 'Back'), $this);?>
">&laquo; <?php echo smartyTranslate(array('s' => 'Back'), $this);?>
</a></p>
		<div class="clear"></div>
	</div>
<?php endif; ?>