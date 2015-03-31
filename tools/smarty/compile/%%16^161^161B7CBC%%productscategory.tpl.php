<?php /* Smarty version 2.6.20, created on 2013-03-05 10:11:23
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/productscategory/productscategory.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/productscategory/productscategory.tpl', 7, false),)), $this); ?>
<!-- Module PRODUCTS CATEGORY -->
<?php if (count ( $this->_tpl_vars['categoryProducts'] ) > 0): ?>
	<span class="graytitle">
	<?php unset($this->_sections['loop']);
$this->_sections['loop']['loop'] = is_array($_loop=$this->_tpl_vars['categoryProducts']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['loop']['name'] = 'loop';
$this->_sections['loop']['step'] = ((int)1) == 0 ? 1 : (int)1;
$this->_sections['loop']['start'] = (int)0;
$this->_sections['loop']['max'] = (int)1;
$this->_sections['loop']['show'] = true;
if ($this->_sections['loop']['max'] < 0)
    $this->_sections['loop']['max'] = $this->_sections['loop']['loop'];
if ($this->_sections['loop']['start'] < 0)
    $this->_sections['loop']['start'] = max($this->_sections['loop']['step'] > 0 ? 0 : -1, $this->_sections['loop']['loop'] + $this->_sections['loop']['start']);
else
    $this->_sections['loop']['start'] = min($this->_sections['loop']['start'], $this->_sections['loop']['step'] > 0 ? $this->_sections['loop']['loop'] : $this->_sections['loop']['loop']-1);
if ($this->_sections['loop']['show']) {
    $this->_sections['loop']['total'] = min(ceil(($this->_sections['loop']['step'] > 0 ? $this->_sections['loop']['loop'] - $this->_sections['loop']['start'] : $this->_sections['loop']['start']+1)/abs($this->_sections['loop']['step'])), $this->_sections['loop']['max']);
    if ($this->_sections['loop']['total'] == 0)
        $this->_sections['loop']['show'] = false;
} else
    $this->_sections['loop']['total'] = 0;
if ($this->_sections['loop']['show']):

            for ($this->_sections['loop']['index'] = $this->_sections['loop']['start'], $this->_sections['loop']['iteration'] = 1;
                 $this->_sections['loop']['iteration'] <= $this->_sections['loop']['total'];
                 $this->_sections['loop']['index'] += $this->_sections['loop']['step'], $this->_sections['loop']['iteration']++):
$this->_sections['loop']['rownum'] = $this->_sections['loop']['iteration'];
$this->_sections['loop']['index_prev'] = $this->_sections['loop']['index'] - $this->_sections['loop']['step'];
$this->_sections['loop']['index_next'] = $this->_sections['loop']['index'] + $this->_sections['loop']['step'];
$this->_sections['loop']['first']      = ($this->_sections['loop']['iteration'] == 1);
$this->_sections['loop']['last']       = ($this->_sections['loop']['iteration'] == $this->_sections['loop']['total']);
?>
		<?php if (isset ( $this->_tpl_vars['categoryProducts'][$this->_sections['loop']['index']]['id_category_default'] ) && $this->_tpl_vars['categoryProducts'][$this->_sections['loop']['index']]['id_category_default'] > 1): ?>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
category.php?id_category=<?php echo $this->_tpl_vars['categoryProducts'][$this->_sections['loop']['index']]['id_category_default']; ?>
">
			<?php echo smartyTranslate(array('s' => 'In same category','mod' => 'productscategory'), $this);?>

		</a>
		<?php else: ?>
			<?php echo smartyTranslate(array('s' => 'In same category','mod' => 'productscategory'), $this);?>

		<?php endif; ?>
	<?php endfor; endif; ?>
	</span>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-list.tpl", 'smarty_include_vars' => array('products' => $this->_tpl_vars['categoryProducts'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
<!-- /Module PRODUCTS CATEGORY -->