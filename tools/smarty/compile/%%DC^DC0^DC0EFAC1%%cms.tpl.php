<?php /* Smarty version 2.6.20, created on 2015-03-31 11:48:11
         compiled from /home/www/mariannedenis.com/themes/prestashop/cms.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/themes/prestashop/cms.tpl', 3, false),)), $this); ?>

<?php if (! $this->_tpl_vars['content_only']): ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => $this->_tpl_vars['cms']->meta_title), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
<?php if ($this->_tpl_vars['cms']): ?>
	<div class="rte<?php if ($this->_tpl_vars['content_only']): ?> content_only<?php endif; ?>">
		<?php echo $this->_tpl_vars['cms']->content; ?>

		<?php if ($this->_tpl_vars['cms']->id == 8): ?><?php echo $this->_tpl_vars['HOOK_NEWSLETTER']; ?>
<?php endif; ?>
	</div>
<?php else: ?>
	<?php echo smartyTranslate(array('s' => 'This page does not exist.'), $this);?>

<?php endif; ?>
<br />