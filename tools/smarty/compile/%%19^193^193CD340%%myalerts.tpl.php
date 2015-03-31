<?php /* Smarty version 2.6.20, created on 2011-08-05 08:26:34
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/myalerts.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/myalerts.tpl', 9, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/myalerts.tpl', 22, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/myalerts.tpl', 27, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/myalerts.tpl', 29, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home','mod' => 'mailalerts'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account','mod' => 'mailalerts'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1"><?php echo smartyTranslate(array('s' => 'Browse','mod' => 'mailalerts'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'My alerts','mod' => 'mailalerts'), $this);?>
</span>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if (((is_array($_tmp=$this->_tpl_vars['id_customer'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)) != 0): ?>
	<?php if ($this->_tpl_vars['alerts']): ?>
	<ul class="pageitem">
		<?php $_from = $this->_tpl_vars['alerts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['i'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['i']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['i']['iteration']++;
?>
		<li class="store">
			<a class="noeffect" href="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['link'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
				<span class="image" style="background-image: url('<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['cover'],$this->_tpl_vars['ips_img_medium']); ?>
')"></span>
				<span class="name"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 40, '...') : smarty_modifier_truncate($_tmp, 40, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
				<?php if (isset ( $this->_tpl_vars['product']['attributes_small'] )): ?>
				<span class="comment"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['attributes_small'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
				<?php endif; ?>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="textbox error align_center">
			<a class="noeffect" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/mailalerts/myalerts.php?action=delete&id_product=<?php echo $this->_tpl_vars['product']['id_product']; ?>
&id_product_attribute=<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
">
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
cancel.png" alt="<?php echo smartyTranslate(array('s' => 'delete','mod' => 'mailalerts'), $this);?>
" />
				<?php echo smartyTranslate(array('s' => 'Delete','mod' => 'mailalerts'), $this);?>

			</a>
		</li>
				<?php endforeach; endif; unset($_from); ?>
	</ul>
	<?php else: ?>
		<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'You are not subscribed to any alerts.','mod' => 'mailalerts'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endif; ?>
<?php endif; ?>
</div>