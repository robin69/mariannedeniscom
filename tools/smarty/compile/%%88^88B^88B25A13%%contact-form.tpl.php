<?php /* Smarty version 2.6.20, created on 2015-03-31 11:39:01
         compiled from /home/www/mariannedenis.com/themes/prestashop/contact-form.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/themes/prestashop/contact-form.tpl', 1, false),array('modifier', 'escape', '/home/www/mariannedenis.com/themes/prestashop/contact-form.tpl', 18, false),array('modifier', 'intval', '/home/www/mariannedenis.com/themes/prestashop/contact-form.tpl', 52, false),array('modifier', 'stripslashes', '/home/www/mariannedenis.com/themes/prestashop/contact-form.tpl', 64, false),)), $this); ?>
<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Contact'), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<h2 class="page_title_h2"><?php echo smartyTranslate(array('s' => 'Contact us'), $this);?>
</h2>

<div class="my-account-container">

<?php if (isset ( $this->_tpl_vars['confirmation'] )): ?>
	<p><?php echo smartyTranslate(array('s' => 'Your message has been successfully sent to our team.'), $this);?>
</p>
	<br /><br />
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
" title="Accueil"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/icon-home.jpg" alt="<?php echo smartyTranslate(array('s' => 'Home'), $this);?>
" class="icon" /> Retour accueil</a>
<?php else: ?>
	<p><strong>N'h&eacute;sitez pas &agrave; nous contacter via le formulaire ci-dessous</strong> pour toute question ou information sur notre catalogue, nos collections, le suivi de vos commandes, les cr&eacute;ations sur mesure, la distribution des bijoux Marianne Denis dans votre boutique ou tout autre motif.</p>
	<br />
	<p>Nous prendrons contact avec vous dans les meilleurs d&eacute;lais.</p>
	<br /><br />
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<form action="<?php echo ((is_array($_tmp=$this->_tpl_vars['request_uri'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" method="post" class="std">
		<fieldset class="account_creation">
			<h3><?php echo smartyTranslate(array('s' => 'Send a message'), $this);?>
</h3>
		
		<p class="radio required">
			<span>Civilit&eacute;</span>
			<input type="radio" name="id_gender" id="id_gender2" value="2" <?php if (isset ( $_POST['id_gender'] ) && $_POST['id_gender'] == 2): ?>checked="checked"<?php endif; ?> />
			<label for="id_gender2" class="top">Mme</label>
			<input type="radio" name="id_gender" id="id_gender3" value="3" <?php if (isset ( $_POST['id_gender'] ) && $_POST['id_gender'] == 3): ?>checked="checked"<?php endif; ?> />
			<label for="id_gender3" class="top">Mlle</label>
			<input type="radio" name="id_gender" id="id_gender1" value="1" <?php if (isset ( $_POST['id_gender'] ) && $_POST['id_gender'] == 1): ?>checked="checked"<?php endif; ?> />
			<label for="id_gender1" class="top">M.</label>
		</p>
		
		<p class="text">
			<label for="prenom">Votre pr&eacute;nom</label>
			<input type="text" id="prenom" name="prenom" value="<?php echo $this->_tpl_vars['prenom']; ?>
" />
		</p>
		
		<p class="text">
			<label for="nom"><?php echo smartyTranslate(array('s' => 'Votre nom'), $this);?>
</label>
			<input type="text" id="nom" name="nom" value="<?php echo $this->_tpl_vars['nom']; ?>
" />
		</p>
		
		<p class="text">
			<label for="email"><?php echo smartyTranslate(array('s' => 'E-mail address'), $this);?>
</label>
			<input type="text" id="email" name="from" value="<?php echo $this->_tpl_vars['email']; ?>
" />
		</p>
		
		<p class="select">
			<label for="id_contact"><?php echo smartyTranslate(array('s' => 'Subject'), $this);?>
</label>
			<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
				<option value="0"><?php echo smartyTranslate(array('s' => '-- Choose --'), $this);?>
</option>
			<?php $_from = $this->_tpl_vars['contacts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['contact']):
?>
				<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['id_contact'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" <?php if (isset ( $_POST['id_contact'] ) && $_POST['id_contact'] == $this->_tpl_vars['contact']['id_contact']): ?>selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
			<?php endforeach; endif; unset($_from); ?>
			</select>
		</p>
		<p id="desc_contact0" class="desc_contact">&nbsp;</p>
		<?php $_from = $this->_tpl_vars['contacts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['contact']):
?>
			<p id="desc_contact<?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['id_contact'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" class="desc_contact" style="display:none;margin-left:220px;">
			<label>&nbsp;</label><?php echo ((is_array($_tmp=$this->_tpl_vars['contact']['description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</p>
		<?php endforeach; endif; unset($_from); ?>
		
		<p class="textarea">
			<label for="message"><?php echo smartyTranslate(array('s' => 'Message'), $this);?>
</label>
			 <textarea id="message" name="message" rows="7" cols="35"><?php if (isset ( $_POST['message'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['message'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?></textarea>
		</p>
		<br class="clear" /><br />
		<p class="text">
			<label for="optin"></label>
			<input type="checkbox" id="optin" name="optin" style="width:auto;" value="" /> &nbsp; Je souhaite recevoir la newsletter des cr&eacute;ations Marianne Denis.
		</p>
		<br />
		<p class="submit">
			<input type="submit" name="submitMessage" id="submitMessage" value="<?php echo smartyTranslate(array('s' => 'Send'), $this);?>
" class="button" onclick="$(this).hide();" />
		</p>
	</fieldset>
</form>
<?php endif; ?>

</if>