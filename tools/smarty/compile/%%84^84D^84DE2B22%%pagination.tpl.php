<?php /* Smarty version 2.6.20, created on 2010-11-25 08:35:07
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./pagination.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./pagination.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./pagination.tpl', 31, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./pagination.tpl', 21, false),)), $this); ?>
<!-- Pagination -->
<?php if (isset ( $this->_tpl_vars['p'] ) && $this->_tpl_vars['p']): ?>
	<?php if (((is_array($_tmp=$_GET['id_category'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
		<?php $this->assign('requestPage', $this->_tpl_vars['link']->getPaginationLink('category',$this->_tpl_vars['category'],false,false,true,false)); ?>
		<?php $this->assign('requestNb', $this->_tpl_vars['link']->getPaginationLink('category',$this->_tpl_vars['category'],true,false,false,true)); ?>
	<?php elseif (((is_array($_tmp=$_GET['id_manufacturer'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
		<?php $this->assign('requestPage', $this->_tpl_vars['link']->getPaginationLink('manufacturer',$this->_tpl_vars['manufacturer'],false,false,true,false)); ?>
		<?php $this->assign('requestNb', $this->_tpl_vars['link']->getPaginationLink('manufacturer',$this->_tpl_vars['manufacturer'],true,false,false,true)); ?>
	<?php elseif (((is_array($_tmp=$_GET['id_supplier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
		<?php $this->assign('requestPage', $this->_tpl_vars['link']->getPaginationLink('supplier',$this->_tpl_vars['supplier'],false,false,true,false)); ?>
		<?php $this->assign('requestNb', $this->_tpl_vars['link']->getPaginationLink('supplier',$this->_tpl_vars['supplier'],true,false,false,true)); ?>
	<?php else: ?>
		<?php $this->assign('requestPage', $this->_tpl_vars['link']->getPaginationLink(false,false,false,false,true,false)); ?>
		<?php $this->assign('requestNb', $this->_tpl_vars['link']->getPaginationLink(false,false,true,false,false,true)); ?>
	<?php endif; ?>

<span class="header pagination" style="text-align: center; display: block;">
	<?php if ($this->_tpl_vars['start'] != $this->_tpl_vars['stop']): ?>
		<?php if ($this->_tpl_vars['p'] != 1): ?>
			<?php $this->assign('p_previous', $this->_tpl_vars['p']-1); ?>
			<a href="<?php echo $this->_tpl_vars['link']->goPage($this->_tpl_vars['requestPage'],$this->_tpl_vars['p_previous']); ?>
">&laquo;&nbsp;<?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
</a>
		<?php else: ?>
			<span>&laquo;&nbsp;<?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
</span>
		<?php endif; ?>
		&nbsp;&nbsp;&nbsp;
		<?php if ($this->_tpl_vars['start'] > 3): ?>
			<a href="<?php echo $this->_tpl_vars['link']->goPage($this->_tpl_vars['requestPage'],1); ?>
">1</a> ...
		<?php endif; ?>
		<?php unset($this->_sections['pagination']);
$this->_sections['pagination']['name'] = 'pagination';
$this->_sections['pagination']['start'] = (int)$this->_tpl_vars['start'];
$this->_sections['pagination']['loop'] = is_array($_loop=$this->_tpl_vars['stop']+1) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['pagination']['step'] = ((int)1) == 0 ? 1 : (int)1;
$this->_sections['pagination']['show'] = true;
$this->_sections['pagination']['max'] = $this->_sections['pagination']['loop'];
if ($this->_sections['pagination']['start'] < 0)
    $this->_sections['pagination']['start'] = max($this->_sections['pagination']['step'] > 0 ? 0 : -1, $this->_sections['pagination']['loop'] + $this->_sections['pagination']['start']);
else
    $this->_sections['pagination']['start'] = min($this->_sections['pagination']['start'], $this->_sections['pagination']['step'] > 0 ? $this->_sections['pagination']['loop'] : $this->_sections['pagination']['loop']-1);
if ($this->_sections['pagination']['show']) {
    $this->_sections['pagination']['total'] = min(ceil(($this->_sections['pagination']['step'] > 0 ? $this->_sections['pagination']['loop'] - $this->_sections['pagination']['start'] : $this->_sections['pagination']['start']+1)/abs($this->_sections['pagination']['step'])), $this->_sections['pagination']['max']);
    if ($this->_sections['pagination']['total'] == 0)
        $this->_sections['pagination']['show'] = false;
} else
    $this->_sections['pagination']['total'] = 0;
if ($this->_sections['pagination']['show']):

            for ($this->_sections['pagination']['index'] = $this->_sections['pagination']['start'], $this->_sections['pagination']['iteration'] = 1;
                 $this->_sections['pagination']['iteration'] <= $this->_sections['pagination']['total'];
                 $this->_sections['pagination']['index'] += $this->_sections['pagination']['step'], $this->_sections['pagination']['iteration']++):
$this->_sections['pagination']['rownum'] = $this->_sections['pagination']['iteration'];
$this->_sections['pagination']['index_prev'] = $this->_sections['pagination']['index'] - $this->_sections['pagination']['step'];
$this->_sections['pagination']['index_next'] = $this->_sections['pagination']['index'] + $this->_sections['pagination']['step'];
$this->_sections['pagination']['first']      = ($this->_sections['pagination']['iteration'] == 1);
$this->_sections['pagination']['last']       = ($this->_sections['pagination']['iteration'] == $this->_sections['pagination']['total']);
?>
			<?php if ($this->_tpl_vars['p'] == $this->_sections['pagination']['index']): ?>
				<span class="current"><?php echo ((is_array($_tmp=$this->_tpl_vars['p'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
			<?php else: ?>
				<a href="<?php echo $this->_tpl_vars['link']->goPage($this->_tpl_vars['requestPage'],$this->_sections['pagination']['index']); ?>
"><?php echo ((is_array($_tmp=$this->_sections['pagination']['index'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a>
			<?php endif; ?>
		<?php endfor; endif; ?>
		<?php if ($this->_tpl_vars['pages_nb'] > $this->_tpl_vars['stop']+2): ?>
			<a href="<?php echo $this->_tpl_vars['link']->goPage($this->_tpl_vars['requestPage'],$this->_tpl_vars['pages_nb']); ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['pages_nb'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
</a>
		<?php endif; ?>
		&nbsp;&nbsp;&nbsp;
		<?php if ($this->_tpl_vars['pages_nb'] > 1 && $this->_tpl_vars['p'] != $this->_tpl_vars['pages_nb']): ?>
			<?php $this->assign('p_next', $this->_tpl_vars['p']+1); ?>
			<a href="<?php echo $this->_tpl_vars['link']->goPage($this->_tpl_vars['requestPage'],$this->_tpl_vars['p_next']); ?>
"><?php echo smartyTranslate(array('s' => 'Next'), $this);?>
&nbsp;&raquo;</a>
		<?php else: ?>
			<span><?php echo smartyTranslate(array('s' => 'Next'), $this);?>
&nbsp;&raquo;</span>
		<?php endif; ?>
	<?php endif; ?>
</span>

<form action="<?php if (! is_array ( $this->_tpl_vars['requestNb'] )): ?><?php echo $this->_tpl_vars['requestNb']; ?>
<?php else: ?><?php echo $this->_tpl_vars['requestNb']['requestUrl']; ?>
<?php endif; ?>" method="get" class="pagination" id="paginationForm">
	<fieldset>
		<ul class="pageitem">
			<li class="select">
				<select name="n" id="nb_item" onchange="$('#paginationForm').submit()">
				<?php $_from = $this->_tpl_vars['nArray']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['nValue']):
?>
					<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['nValue'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if ($this->_tpl_vars['n'] == $this->_tpl_vars['nValue']): ?>selected="selected"<?php endif; ?>>
						<?php echo ((is_array($_tmp=$this->_tpl_vars['nValue'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo smartyTranslate(array('s' => 'items'), $this);?>

					</option>
				<?php endforeach; endif; unset($_from); ?>
				</select>
				<span class="arrow"></span>
			</li>
		</ul>
		<?php if (is_array ( $this->_tpl_vars['requestNb'] )): ?>
			<?php $_from = $this->_tpl_vars['requestNb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['requestKey'] => $this->_tpl_vars['requestValue']):
?>
				<?php if ($this->_tpl_vars['requestKey'] != 'requestUrl'): ?>
					<input type="hidden" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['requestKey'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['requestValue'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?>
		<?php endif; ?>
		<?php if (isset ( $this->_tpl_vars['query'] ) && $this->_tpl_vars['query']): ?><input type="hidden" name="search_query" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['query'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php endif; ?>
		<?php if (isset ( $this->_tpl_vars['tag'] ) && $this->_tpl_vars['tag'] && ! is_array ( $this->_tpl_vars['tag'] )): ?><input type="hidden" name="tag" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tag'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php endif; ?>
	</fieldset>
</form>

	<!-- /Pagination -->
<?php endif; ?>