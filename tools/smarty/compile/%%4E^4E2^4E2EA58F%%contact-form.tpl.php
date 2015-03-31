<?php /* Smarty version 2.6.20, created on 2012-09-18 22:19:15
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/contact-form.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/contact-form.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/contact-form.tpl', 23, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/contact-form.tpl', 33, false),array('modifier', 'stripslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/contact-form.tpl', 50, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
my-account.php" class="noeffect"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Contact us'), $this);?>
</span>

<?php if (isset ( $this->_tpl_vars['confirmation'] )): ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Your message has been successfully sent to our team.'), $this);?>
<?php $this->_smarty_vars['capture']['confirmation'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./confirmation.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php else: ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if (isset ( $this->_tpl_vars['ips_contact'] ) && $this->_tpl_vars['ips_contact']): ?><?php echo $this->_tpl_vars['ips_contact']; ?>
<?php endif; ?>

<form action="<?php echo ((is_array($_tmp=$this->_tpl_vars['request_uri'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" method="post" class="std">
	<fieldset>
		<ul class="pageitem">
			<li class="textbox">
				<span class="header"><?php echo smartyTranslate(array('s' => 'Use this form for questions about an order or for information about our products.'), $this);?>
</span>
			</li>
			<li class="select">
				<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
					<option value="0"><?php echo smartyTranslate(array('s' => 'Subject'), $this);?>
</option>
				<?php $_from = $this->_tpl_vars['contacts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['contact']):
?>
					<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['id_contact'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" <?php if (isset ( $_POST['id_contact'] ) && $_POST['id_contact'] == $this->_tpl_vars['contact']['id_contact']): ?>selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
				<?php endforeach; endif; unset($_from); ?>
				</select>
				<span class="arrow"></span>
			</li>
			<li class="textbox">
				<p id="desc_contact0" class="desc_contact">&nbsp;</p>
			<?php $_from = $this->_tpl_vars['contacts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['contact']):
?>
				<p id="desc_contact<?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['id_contact'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" class="desc_contact" style="display:none;"><?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</p>
			<?php endforeach; endif; unset($_from); ?>
			</li>
			<li class="smallfield">
				<span class="name"><?php echo smartyTranslate(array('s' => 'E-mail address'), $this);?>
</span>
				<input placeholder="" type="text" id="email" name="from" value="<?php echo $this->_tpl_vars['email']; ?>
" />
			</li>
			<li class="textbox">
				<p><?php echo smartyTranslate(array('s' => 'Message'), $this);?>
</p>
				 <textarea id="message" name="message" rows="7" cols="35"><?php if (isset ( $_POST['message'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['message'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?></textarea>
			</li>
			<li class="button">
				<input type="submit" name="submitMessage" id="submitMessage" value="<?php echo smartyTranslate(array('s' => 'Send'), $this);?>
" class="button_large" />
			</li>
		</ul>
	</fieldset>
</form>
<?php endif; ?>
</div>