<?php /* Smarty version 2.6.20, created on 2013-03-05 10:38:11
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-sort.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-sort.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-sort.tpl', 15, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/./product-sort.tpl', 13, false),)), $this); ?>
<?php if (isset ( $this->_tpl_vars['orderby'] ) && isset ( $this->_tpl_vars['orderway'] )): ?>
<!-- Sort products -->
<?php if (((is_array($_tmp=$_GET['id_category'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
	<?php $this->assign('request', $this->_tpl_vars['link']->getPaginationLink('category',$this->_tpl_vars['category'],false,true)); ?>
<?php elseif (((is_array($_tmp=$_GET['id_manufacturer'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
	<?php $this->assign('request', $this->_tpl_vars['link']->getPaginationLink('manufacturer',$this->_tpl_vars['manufacturer'],false,true)); ?>
<?php elseif (((is_array($_tmp=$_GET['id_supplier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
	<?php $this->assign('request', $this->_tpl_vars['link']->getPaginationLink('supplier',$this->_tpl_vars['supplier'],false,true)); ?>
<?php else: ?>
	<?php $this->assign('request', $this->_tpl_vars['link']->getPaginationLink(false,false,false,true)); ?>
<?php endif; ?>
<form id="productsSortForm" action="<?php echo $this->_tpl_vars['request']; ?>
">
		<label for="selectPrductSort"><?php echo smartyTranslate(array('s' => 'sort by'), $this);?>
</label>
		<select id="selectPrductSort" onchange="document.location.href = $(this).val();">
			<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->addSortDetails($this->_tpl_vars['request'],'position',$this->_tpl_vars['orderwayposition']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if ($this->_tpl_vars['orderby'] == 'position'): ?>selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => '--'), $this);?>
</option>
			<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->addSortDetails($this->_tpl_vars['request'],'price','asc'))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if ($this->_tpl_vars['orderby'] == 'price' && $this->_tpl_vars['orderway'] == 'ASC'): ?>selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'price: lowest first'), $this);?>
</option>
			<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->addSortDetails($this->_tpl_vars['request'],'price','desc'))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if ($this->_tpl_vars['orderby'] == 'price' && $this->_tpl_vars['orderway'] == 'DESC'): ?>selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'price: highest first'), $this);?>
</option>
			<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->addSortDetails($this->_tpl_vars['request'],'quantity','desc'))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if ($this->_tpl_vars['orderby'] == 'quantity' && $this->_tpl_vars['orderway'] == 'DESC'): ?>selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'in-stock first'), $this);?>
</option>
		</select>
		<div class="clear"></div>
</form>
<!-- /Sort products -->
<?php endif; ?>