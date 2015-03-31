<?php /* Smarty version 2.6.20, created on 2013-03-05 10:11:22
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/product_page.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/product_page.tpl', 3, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/sendtoafriend/product_page.tpl', 4, false),)), $this); ?>
<!-- MODULE Send to a friend -->
<li class="menu">
	<a href="<?php echo $this->_tpl_vars['this_path']; ?>
sendtoafriend-form.php?id_product=<?php echo ((is_array($_tmp=$_GET['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
sendtoafriend.png" alt="<?php echo smartyTranslate(array('s' => 'send','mod' => 'sendtoafriend'), $this);?>
" />
		<span class="name"><?php echo smartyTranslate(array('s' => 'Send to a friend','mod' => 'sendtoafriend'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /MODULE Send to a friend -->