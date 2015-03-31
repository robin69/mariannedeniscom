<?php /* Smarty version 2.6.20, created on 2013-11-09 07:57:12
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blocktags/blocktags.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blocktags/blocktags.tpl', 2, false),array('modifier', 'urlencode', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blocktags/blocktags.tpl', 8, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blocktags/blocktags.tpl', 8, false),)), $this); ?>
<!-- Block tags module -->
<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Tags','mod' => 'blocktags'), $this);?>
</span>
<?php if ($this->_tpl_vars['tags']): ?>
<ul class="pageitem">
	<li class="textbox">
		<p>
		<?php $_from = $this->_tpl_vars['tags']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['tag']):
        $this->_foreach['myLoop']['iteration']++;
?>
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
search.php?tag=<?php echo ((is_array($_tmp=$this->_tpl_vars['tag']['name'])) ? $this->_run_mod_handler('urlencode', true, $_tmp) : urlencode($_tmp)); ?>
" title="<?php echo smartyTranslate(array('s' => 'More about','mod' => 'blocktags'), $this);?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['tag']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" class="<?php echo $this->_tpl_vars['tag']['class']; ?>
 <?php if (($this->_foreach['myLoop']['iteration'] == $this->_foreach['myLoop']['total'])): ?>last_item<?php elseif (($this->_foreach['myLoop']['iteration'] <= 1)): ?>first_item<?php else: ?>item<?php endif; ?>"><?php echo ((is_array($_tmp=$this->_tpl_vars['tag']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 (<?php echo $this->_tpl_vars['tag']['times']; ?>
)</a>
			<?php if (! ($this->_foreach['myLoop']['iteration'] == $this->_foreach['myLoop']['total'])): ?>/<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?>
		</p>
	</li>
</ul>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No tags specified yet','mod' => 'blocktags'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
<!-- /Block tags module -->