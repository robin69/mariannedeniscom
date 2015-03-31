<?php /* Smarty version 2.6.20, created on 2010-11-25 08:34:52
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./subcategory-tree-branch.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./subcategory-tree-branch.tpl', 3, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./subcategory-tree-branch.tpl', 16, false),array('function', 'math', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./subcategory-tree-branch.tpl', 17, false),)), $this); ?>
<?php if ($this->_tpl_vars['node']): ?>
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['link']->getCategoryLink($this->_tpl_vars['node']['id_category'],$this->_tpl_vars['node']['link_rewrite']); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['node']['description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
		<?php if ($this->_tpl_vars['node']['id_image']): ?>
			<img alt="" src="<?php echo $this->_tpl_vars['link']->getCatImageLink($this->_tpl_vars['node']['legend'],$this->_tpl_vars['node']['id_image'],$this->_tpl_vars['ips_img_small']); ?>
" />
		<?php else: ?>
			<img src="<?php echo $this->_tpl_vars['img_cat_dir']; ?>
<?php echo $this->_tpl_vars['lang_iso']; ?>
-default-<?php echo $this->_tpl_vars['ips_img_small']; ?>
.jpg" alt="" />
		<?php endif; ?>
			<span class="name">
				<?php if (isset ( $this->_tpl_vars['space'] ) && $this->_tpl_vars['space'] > 0): ?><?php unset($this->_sections['nbsp']);
$this->_sections['nbsp']['name'] = 'nbsp';
$this->_sections['nbsp']['start'] = (int)0;
$this->_sections['nbsp']['loop'] = is_array($_loop=$this->_tpl_vars['space']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['nbsp']['show'] = true;
$this->_sections['nbsp']['max'] = $this->_sections['nbsp']['loop'];
$this->_sections['nbsp']['step'] = 1;
if ($this->_sections['nbsp']['start'] < 0)
    $this->_sections['nbsp']['start'] = max($this->_sections['nbsp']['step'] > 0 ? 0 : -1, $this->_sections['nbsp']['loop'] + $this->_sections['nbsp']['start']);
else
    $this->_sections['nbsp']['start'] = min($this->_sections['nbsp']['start'], $this->_sections['nbsp']['step'] > 0 ? $this->_sections['nbsp']['loop'] : $this->_sections['nbsp']['loop']-1);
if ($this->_sections['nbsp']['show']) {
    $this->_sections['nbsp']['total'] = min(ceil(($this->_sections['nbsp']['step'] > 0 ? $this->_sections['nbsp']['loop'] - $this->_sections['nbsp']['start'] : $this->_sections['nbsp']['start']+1)/abs($this->_sections['nbsp']['step'])), $this->_sections['nbsp']['max']);
    if ($this->_sections['nbsp']['total'] == 0)
        $this->_sections['nbsp']['show'] = false;
} else
    $this->_sections['nbsp']['total'] = 0;
if ($this->_sections['nbsp']['show']):

            for ($this->_sections['nbsp']['index'] = $this->_sections['nbsp']['start'], $this->_sections['nbsp']['iteration'] = 1;
                 $this->_sections['nbsp']['iteration'] <= $this->_sections['nbsp']['total'];
                 $this->_sections['nbsp']['index'] += $this->_sections['nbsp']['step'], $this->_sections['nbsp']['iteration']++):
$this->_sections['nbsp']['rownum'] = $this->_sections['nbsp']['iteration'];
$this->_sections['nbsp']['index_prev'] = $this->_sections['nbsp']['index'] - $this->_sections['nbsp']['step'];
$this->_sections['nbsp']['index_next'] = $this->_sections['nbsp']['index'] + $this->_sections['nbsp']['step'];
$this->_sections['nbsp']['first']      = ($this->_sections['nbsp']['iteration'] == 1);
$this->_sections['nbsp']['last']       = ($this->_sections['nbsp']['iteration'] == $this->_sections['nbsp']['total']);
?>&nbsp;&raquo;<?php endfor; endif; ?><?php endif; ?>
				<?php echo ((is_array($_tmp=$this->_tpl_vars['node']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

			</span>
			<span class="arrow"></span>
		</a>
	</li>
	<?php if (count($this->_tpl_vars['node']['children']) > 0): ?>
		<?php echo smarty_function_math(array('equation' => "x + 1",'x' => ($this->_tpl_vars['space']),'assign' => 'space'), $this);?>

		<?php $_from = $this->_tpl_vars['node']['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['categoryTreeBranch'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['categoryTreeBranch']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['child']):
        $this->_foreach['categoryTreeBranch']['iteration']++;
?>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./category-tree-branch.tpl", 'smarty_include_vars' => array('node' => $this->_tpl_vars['child'],'space' => $this->_tpl_vars['space'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		<?php endforeach; endif; unset($_from); ?>
	<?php endif; ?>
<?php endif; ?>