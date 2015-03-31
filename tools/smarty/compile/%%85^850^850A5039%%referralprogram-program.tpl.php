<?php /* Smarty version 2.6.20, created on 2012-07-08 19:05:58
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-program.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-program.tpl', 9, false),array('function', 'dateFormat', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-program.tpl', 147, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-program.tpl', 121, false),array('modifier', 'substr', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-program.tpl', 143, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<script type="text/javascript">
// <![CDATA[
	ThickboxI18nClose = "<?php echo smartyTranslate(array('s' => 'Close','mod' => 'referralprogram'), $this);?>
";
	ThickboxI18nOrEscKey = "<?php echo smartyTranslate(array('s' => 'or Esc key','mod' => 'referralprogram'), $this);?>
";
	tb_pathToImage = "<?php echo $this->_tpl_vars['img_ps_dir']; ?>
loadingAnimation.gif";
	//]]>
</script>

<?php ob_start(); ?><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account','mod' => 'referralprogram'), $this);?>
</a><span class="navigation-pipe"><?php echo $this->_tpl_vars['navigationPipe']; ?>
</span><?php echo smartyTranslate(array('s' => 'ReferralProgram','mod' => 'referralprogram'), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<h2><?php echo smartyTranslate(array('s' => 'Referral program','mod' => 'referralprogram'), $this);?>
</h2>

<?php if ($this->_tpl_vars['error']): ?>
	<p class="error">
		<?php if ($this->_tpl_vars['error'] == 'conditions not valided'): ?>
			<?php echo smartyTranslate(array('s' => 'You need to agree to the conditions of the referral program!','mod' => 'referralprogram'), $this);?>

		<?php elseif ($this->_tpl_vars['error'] == 'email invalid'): ?>
			<?php echo smartyTranslate(array('s' => 'At least one e-mail address is invalid!','mod' => 'referralprogram'), $this);?>

		<?php elseif ($this->_tpl_vars['error'] == 'name invalid'): ?>
			<?php echo smartyTranslate(array('s' => 'At least one first name or last name is invalid!','mod' => 'referralprogram'), $this);?>

		<?php elseif ($this->_tpl_vars['error'] == 'email exists'): ?>
			<?php echo smartyTranslate(array('s' => 'Someone with this e-mail address has already been sponsored!','mod' => 'referralprogram'), $this);?>
: <?php $_from = $this->_tpl_vars['mails_exists']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['mail']):
?><?php echo $this->_tpl_vars['mail']; ?>
 <?php endforeach; endif; unset($_from); ?>
		<?php elseif ($this->_tpl_vars['error'] == 'no revive checked'): ?>
			<?php echo smartyTranslate(array('s' => 'Please mark at least one checkbox','mod' => 'referralprogram'), $this);?>

		<?php elseif ($this->_tpl_vars['error'] == 'cannot add friends'): ?>
			<?php echo smartyTranslate(array('s' => 'Cannot add friends to database','mod' => 'referralprogram'), $this);?>

		<?php endif; ?>
	</p>
<?php endif; ?>

<?php if ($this->_tpl_vars['invitation_sent']): ?>
	<p class="success">
	<?php if ($this->_tpl_vars['nbInvitation'] > 1): ?>
		<?php echo smartyTranslate(array('s' => 'Emails have been sent to your friends !','mod' => 'referralprogram'), $this);?>

	<?php else: ?>
		<?php echo smartyTranslate(array('s' => 'Email have been sent to your friend !','mod' => 'referralprogram'), $this);?>

	<?php endif; ?>
	</p>
<?php endif; ?>

<?php if ($this->_tpl_vars['revive_sent']): ?>
	<p class="success">
	<?php if ($this->_tpl_vars['nbRevive'] > 1): ?>
		<?php echo smartyTranslate(array('s' => 'Revive emails have been sent to your friends !','mod' => 'referralprogram'), $this);?>

	<?php else: ?>
		<?php echo smartyTranslate(array('s' => 'Revive email have been sent to your friend !','mod' => 'referralprogram'), $this);?>

	<?php endif; ?>
	</p>
<?php endif; ?>

<ul class="idTabs">
	<li><a href="#idTab1" <?php if ($this->_tpl_vars['activeTab'] == 'sponsor'): ?>class="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Sponsor my friends','mod' => 'referralprogram'), $this);?>
</a></li>
	<li><a href="#idTab2" <?php if ($this->_tpl_vars['activeTab'] == 'pending'): ?>class="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Pending friends','mod' => 'referralprogram'), $this);?>
</a></li>
	<li><a href="#idTab3" <?php if ($this->_tpl_vars['activeTab'] == 'subscribed'): ?>class="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Friends I sponsored','mod' => 'referralprogram'), $this);?>
</a></li>
</ul>
<div class="sheets">

	<div id="idTab1">
		<p class="bold">
			<?php echo smartyTranslate(array('s' => 'Get a discount of','mod' => 'referralprogram'), $this);?>
 <?php echo $this->_tpl_vars['discount']; ?>
 <?php echo smartyTranslate(array('s' => 'for you and your friends by recommending this Website.','mod' => 'referralprogram'), $this);?>

		</p>
		<?php if ($this->_tpl_vars['canSendInvitations']): ?>
			<p>
				<?php echo smartyTranslate(array('s' => 'It\'s quick and it\'s easy. Just fill in the first name, last name, and e-mail address(es) of your friend(s) in the fields below.','mod' => 'referralprogram'), $this);?>

				<?php echo smartyTranslate(array('s' => 'When one of them makes at least','mod' => 'referralprogram'), $this);?>
 <?php echo $this->_tpl_vars['orderQuantity']; ?>
 <?php if ($this->_tpl_vars['orderQuantity'] > 1): ?><?php echo smartyTranslate(array('s' => 'orders','mod' => 'referralprogram'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'order','mod' => 'referralprogram'), $this);?>
<?php endif; ?>,
				<?php echo smartyTranslate(array('s' => 'he or she will receive a','mod' => 'referralprogram'), $this);?>
 <?php echo $this->_tpl_vars['discount']; ?>
 <?php echo smartyTranslate(array('s' => 'voucher and you will receive your own voucher worth','mod' => 'referralprogram'), $this);?>
 <?php echo $this->_tpl_vars['discount']; ?>
.
			</p>
			<form method="post" action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/referralprogram/referralprogram-program.php" class="std">
				<table class="std">
				<thead>
					<tr>
						<th class="first_item">&nbsp;</th>
						<th class="item"><?php echo smartyTranslate(array('s' => 'Last name','mod' => 'referralprogram'), $this);?>
</th>
						<th class="item"><?php echo smartyTranslate(array('s' => 'First name','mod' => 'referralprogram'), $this);?>
</th>
						<th class="last_item"><?php echo smartyTranslate(array('s' => 'E-mail','mod' => 'referralprogram'), $this);?>
</th>
					</tr>
				</thead>
				<tbody>
					<?php unset($this->_sections['friends']);
$this->_sections['friends']['name'] = 'friends';
$this->_sections['friends']['start'] = (int)0;
$this->_sections['friends']['loop'] = is_array($_loop=$this->_tpl_vars['nbFriends']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['friends']['step'] = ((int)1) == 0 ? 1 : (int)1;
$this->_sections['friends']['show'] = true;
$this->_sections['friends']['max'] = $this->_sections['friends']['loop'];
if ($this->_sections['friends']['start'] < 0)
    $this->_sections['friends']['start'] = max($this->_sections['friends']['step'] > 0 ? 0 : -1, $this->_sections['friends']['loop'] + $this->_sections['friends']['start']);
else
    $this->_sections['friends']['start'] = min($this->_sections['friends']['start'], $this->_sections['friends']['step'] > 0 ? $this->_sections['friends']['loop'] : $this->_sections['friends']['loop']-1);
if ($this->_sections['friends']['show']) {
    $this->_sections['friends']['total'] = min(ceil(($this->_sections['friends']['step'] > 0 ? $this->_sections['friends']['loop'] - $this->_sections['friends']['start'] : $this->_sections['friends']['start']+1)/abs($this->_sections['friends']['step'])), $this->_sections['friends']['max']);
    if ($this->_sections['friends']['total'] == 0)
        $this->_sections['friends']['show'] = false;
} else
    $this->_sections['friends']['total'] = 0;
if ($this->_sections['friends']['show']):

            for ($this->_sections['friends']['index'] = $this->_sections['friends']['start'], $this->_sections['friends']['iteration'] = 1;
                 $this->_sections['friends']['iteration'] <= $this->_sections['friends']['total'];
                 $this->_sections['friends']['index'] += $this->_sections['friends']['step'], $this->_sections['friends']['iteration']++):
$this->_sections['friends']['rownum'] = $this->_sections['friends']['iteration'];
$this->_sections['friends']['index_prev'] = $this->_sections['friends']['index'] - $this->_sections['friends']['step'];
$this->_sections['friends']['index_next'] = $this->_sections['friends']['index'] + $this->_sections['friends']['step'];
$this->_sections['friends']['first']      = ($this->_sections['friends']['iteration'] == 1);
$this->_sections['friends']['last']       = ($this->_sections['friends']['iteration'] == $this->_sections['friends']['total']);
?>
					<tr class="<?php if ($this->_sections['friends']['index'] % 2): ?>item<?php else: ?>alternate_item<?php endif; ?>">
						<td class="align_right"><?php echo $this->_sections['friends']['iteration']; ?>
</td>
						<td><input type="text" class="text" name="friendsLastName[<?php echo $this->_sections['friends']['index']; ?>
]" size="14" value="<?php if (isset ( $_POST['friendsLastName'][$this->_sections['friends']['index']] )): ?><?php echo $_POST['friendsLastName'][$this->_sections['friends']['index']]; ?>
<?php endif; ?>" /></td>
						<td><input type="text" class="text" name="friendsFirstName[<?php echo $this->_sections['friends']['index']; ?>
]" size="14" value="<?php if (isset ( $_POST['friendsFirstName'][$this->_sections['friends']['index']] )): ?><?php echo $_POST['friendsFirstName'][$this->_sections['friends']['index']]; ?>
<?php endif; ?>" /></td>
						<td><input type="text" class="text" name="friendsEmail[<?php echo $this->_sections['friends']['index']; ?>
]" size="20" value="<?php if (isset ( $_POST['friendsEmail'][$this->_sections['friends']['index']] )): ?><?php echo $_POST['friendsEmail'][$this->_sections['friends']['index']]; ?>
<?php endif; ?>" /></td>
					</tr>
					<?php endfor; endif; ?>
				</tbody>
				</table>
				<p class="bold">
					<?php echo smartyTranslate(array('s' => 'Important: Your friends\' e-mail addresses will only be used in the referral program. They will never be used for other purposes.','mod' => 'referralprogram'), $this);?>

				</p>
				<p class="checkbox">
					<input type="checkbox" name="conditionsValided" id="conditionsValided" value="1" <?php if (isset ( $_POST['conditionsValided'] ) && $_POST['conditionsValided'] == 1): ?>checked="checked"<?php endif; ?> />
					<label for="conditionsValided">
						<?php echo smartyTranslate(array('s' => 'I have read the conditions of the referral program and accept them in their entirety. I also agree to have my friend reminded again in two weeks (if he or she still has not made a purchase on conditions).','mod' => 'referralprogram'), $this);?>

					</label>
					<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/referralprogram/referralprogram-rules.php?height=500&amp;width=400" class="thickbox" title="<?php echo smartyTranslate(array('s' => 'Conditions of the referral program','mod' => 'referralprogram'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Read conditions.','mod' => 'referralprogram'), $this);?>
</a>
				</p>
				<p>
					<?php echo smartyTranslate(array('s' => 'Preview','mod' => 'referralprogram'), $this);?>
 <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/referralprogram/preview-email.php?height=500&amp;width=600&amp;mail=<?php echo $this->_tpl_vars['lang_iso']; ?>
/referralprogram-invitation.html" class="thickbox" title="<?php echo smartyTranslate(array('s' => 'Invitation e-mail','mod' => 'referralprogram'), $this);?>
"><?php echo smartyTranslate(array('s' => 'the default e-mail','mod' => 'referralprogram'), $this);?>
</a> <?php echo smartyTranslate(array('s' => 'that will be sent to your(s) friend(s).','mod' => 'referralprogram'), $this);?>

				</p>
				<p class="submit">
					<input type="submit" id="submitSponsorFriends" name="submitSponsorFriends" class="button_large" value="<?php echo smartyTranslate(array('s' => 'Validate','mod' => 'referralprogram'), $this);?>
" />
				</p>
			</form>
		<?php else: ?>
			<p class="warning">
				<?php echo smartyTranslate(array('s' => 'To become a sponsor, you need to have completed at least','mod' => 'referralprogram'), $this);?>
 <?php echo $this->_tpl_vars['orderQuantity']; ?>
 <?php if ($this->_tpl_vars['orderQuantity'] > 1): ?><?php echo smartyTranslate(array('s' => 'orders','mod' => 'referralprogram'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'order','mod' => 'referralprogram'), $this);?>
<?php endif; ?>.
			</p>
		<?php endif; ?>
	</div>

	<div id="idTab2">
	<?php if ($this->_tpl_vars['pendingFriends'] && count($this->_tpl_vars['pendingFriends']) > 0): ?>
		<p>
			<?php echo smartyTranslate(array('s' => 'These friends have not yet placed an order on this Website since you sponsored them, but you can try again! To do so, mark the checkboxes of the friend(s) you want to remind, then click on the button "Remind my friend(s)"','mod' => 'referralprogram'), $this);?>

		</p>
		<form method="post" action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/referralprogram/referralprogram-program.php" class="std">
			<table class="std">
			<thead>
				<tr>
					<th class="first_item">&nbsp;</th>
					<th class="item"><?php echo smartyTranslate(array('s' => 'Last name','mod' => 'referralprogram'), $this);?>
</th>
					<th class="item"><?php echo smartyTranslate(array('s' => 'First name','mod' => 'referralprogram'), $this);?>
</th>
					<th class="item"><?php echo smartyTranslate(array('s' => 'E-mail','mod' => 'referralprogram'), $this);?>
</th>
					<th class="last_item"><b><?php echo smartyTranslate(array('s' => 'Last invitation','mod' => 'referralprogram'), $this);?>
</b></th>
				</tr>
			</thead>
			<tbody>
			<?php $_from = $this->_tpl_vars['pendingFriends']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['pendingFriend']):
        $this->_foreach['myLoop']['iteration']++;
?>
				<tr>
					<td>
						<input type="checkbox" name="friendChecked[<?php echo $this->_tpl_vars['pendingFriend']['id_referralprogram']; ?>
]" id="friendChecked[<?php echo $this->_tpl_vars['pendingFriend']['id_referralprogram']; ?>
]" value="1" />
					</td>
					<td>
						<label for="friendChecked[<?php echo $this->_tpl_vars['pendingFriend']['id_referralprogram']; ?>
]"><?php echo ((is_array($_tmp=$this->_tpl_vars['pendingFriend']['lastname'])) ? $this->_run_mod_handler('substr', true, $_tmp, 0, 22) : substr($_tmp, 0, 22)); ?>
</label>
					</td>
					<td><?php echo ((is_array($_tmp=$this->_tpl_vars['pendingFriend']['firstname'])) ? $this->_run_mod_handler('substr', true, $_tmp, 0, 22) : substr($_tmp, 0, 22)); ?>
</td>
					<td><?php echo $this->_tpl_vars['pendingFriend']['email']; ?>
</td>
					<td><?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['pendingFriend']['date_upd'],'full' => 1), $this);?>
</td>
				</tr>
			<?php endforeach; endif; unset($_from); ?>
			</tbody>
			</table>
			<p class="submit">
				<input type="submit" value="<?php echo smartyTranslate(array('s' => 'Remind my friend(s)','mod' => 'referralprogram'), $this);?>
" name="revive" id="revive" class="button_large" />
			</p>
		</form>
		<?php else: ?>
			<p class="warning"><?php echo smartyTranslate(array('s' => 'You have not sponsored any friends.','mod' => 'referralprogram'), $this);?>
</p>
		<?php endif; ?>
	</div>

	<div id="idTab3">
	<?php if ($this->_tpl_vars['subscribeFriends'] && count($this->_tpl_vars['subscribeFriends']) > 0): ?>
		<p>
			<?php echo smartyTranslate(array('s' => 'Here are sponsored friends who have accepted your invitation:','mod' => 'referralprogram'), $this);?>

		</p>
		<table class="std">
		<thead>
			<tr>
				<th class="first_item">&nbsp;</th>
				<th class="item"><?php echo smartyTranslate(array('s' => 'Last name','mod' => 'referralprogram'), $this);?>
</th>
				<th class="item"><?php echo smartyTranslate(array('s' => 'First name','mod' => 'referralprogram'), $this);?>
</th>
				<th class="item"><?php echo smartyTranslate(array('s' => 'E-mail','mod' => 'referralprogram'), $this);?>
</th>
				<th class="last_item"><?php echo smartyTranslate(array('s' => 'Inscription date','mod' => 'referralprogram'), $this);?>
</th>
			</tr>
		</thead>
		<tbody>
			<?php $_from = $this->_tpl_vars['subscribeFriends']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['subscribeFriend']):
        $this->_foreach['myLoop']['iteration']++;
?>
			<tr>
				<td><?php echo $this->_foreach['myLoop']['iteration']; ?>
.</td>
				<td><?php echo ((is_array($_tmp=$this->_tpl_vars['subscribeFriend']['lastname'])) ? $this->_run_mod_handler('substr', true, $_tmp, 0, 22) : substr($_tmp, 0, 22)); ?>
</td>
				<td><?php echo ((is_array($_tmp=$this->_tpl_vars['subscribeFriend']['firstname'])) ? $this->_run_mod_handler('substr', true, $_tmp, 0, 22) : substr($_tmp, 0, 22)); ?>
</td>
				<td><?php echo $this->_tpl_vars['subscribeFriend']['email']; ?>
</td>
				<td><?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['subscribeFriend']['date_upd'],'full' => 1), $this);?>
</td>
			</tr>
			<?php endforeach; endif; unset($_from); ?>
		</tbody>
		</table>
	<?php else: ?>
		<p class="warning">
			<?php echo smartyTranslate(array('s' => 'No sponsored friends have accepted your invitation yet.','mod' => 'referralprogram'), $this);?>

		</p>
	<?php endif; ?>
	</div>
</div>

<ul class="footer_links">
	<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/my-account.gif" alt="" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'Back to Your Account','mod' => 'referralprogram'), $this);?>
</a></li>
	<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/home.gif" alt="" class="icon" /></a><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
"><?php echo smartyTranslate(array('s' => 'Home','mod' => 'referralprogram'), $this);?>
</a></li>
</ul>