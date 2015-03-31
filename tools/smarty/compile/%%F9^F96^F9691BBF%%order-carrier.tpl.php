<?php /* Smarty version 2.6.20, created on 2013-02-01 20:39:38
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-carrier.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-carrier.tpl', 21, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-carrier.tpl', 76, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-carrier.tpl', 68, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-carrier.tpl', 70, false),array('modifier', 'sizeof', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/order-carrier.tpl', 70, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./thickbox.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<script type="text/javascript">
// <![CDATA[
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
	function displayCarrierInfo(id) {
		$('.mycarrier').slideUp('fast');
		$('#mycarrier'+id).slideDown('fast');
	}
<?php if (! $this->_tpl_vars['virtual_cart'] && $this->_tpl_vars['giftAllowed'] && $this->_tpl_vars['cart']->gift == 1): ?>
	$('document').ready( function(){
		$('#gift_div').slideUp('slow');
	});
<?php endif; ?>
	//]]>
</script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_dir']; ?>
layer.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/conditions.js"></script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1"><?php echo smartyTranslate(array('s' => 'Browse'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>

<?php $this->assign('current_step', 'shipping'); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Shipping'), $this);?>
</span>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

	<form id="carrierForm" action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php" method="post">
		<fieldset>

<?php if ($this->_tpl_vars['conditions']): ?>
			<ul class="pageitem">
				<li class="checkbox">
					<?php if ($this->_tpl_vars['checkedTOS']): ?><span class="check"><?php endif; ?>
						<span class="name"><?php echo smartyTranslate(array('s' => 'I agree with the terms of service and I adhere to them unconditionally.'), $this);?>
</span>
						<input type="checkbox" name="cgv" id="cgv" value="1" <?php if ($this->_tpl_vars['checkedTOS']): ?>checked="checked"<?php endif; ?> />
					<?php if ($this->_tpl_vars['checkedTOS']): ?></span><?php endif; ?> 
				</li>
				<li class="menu">
					<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
cms.php?id_cms=3">
						<img alt="<?php echo smartyTranslate(array('s' => 'TOS'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
conditions.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Read terms of service'), $this);?>
</span>
						<span class="arrow"></span>
					</a>
				</li>
			</ul>
<?php endif; ?>

<?php if ($this->_tpl_vars['virtual_cart']): ?>
			<input id="input_virtual_carrier" class="hidden" type="hidden" name="id_carrier" value="0" />

<?php else: ?>
	<?php if ($this->_tpl_vars['carriers'] && count ( $this->_tpl_vars['carriers'] )): ?>
			<ul class="pageitem">
				<li class="textbox"><span class="header"><?php echo smartyTranslate(array('s' => 'Choose your delivery method'), $this);?>
</span></li>
			<?php $_from = $this->_tpl_vars['carriers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['carrier']):
        $this->_foreach['loop']['iteration']++;
?>
				<li class="radiobutton">
					<span class="name">
						<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

					</span>
					<input onchange="displayCarrierInfo('<?php echo ($this->_foreach['loop']['iteration']-1); ?>
')" type="radio" name="id_carrier" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['id_carrier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" id="id_carrier<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['id_carrier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" <?php if ($this->_tpl_vars['carrier']['id_carrier'] == $this->_tpl_vars['checked'] || ( $this->_tpl_vars['checked'] == 0 && $this->_tpl_vars['i'] == 0 ) || ( sizeof($this->_tpl_vars['carriers']) == 1 )): ?>checked="checked"<?php endif; ?> />
				</li>
				<li class="textbox mycarrier" id="mycarrier<?php echo ($this->_foreach['loop']['iteration']-1); ?>
" style="display:<?php if ($this->_tpl_vars['carrier']['id_carrier'] == $this->_tpl_vars['checked'] || ( $this->_tpl_vars['checked'] == 0 && $this->_tpl_vars['i'] == 0 ) || ( sizeof($this->_tpl_vars['carriers']) == 1 )): ?>block<?php else: ?>none<?php endif; ?>">
					<?php if ($this->_tpl_vars['carrier']['img']): ?><img class="left" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['img'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" width="32" height="32" /><?php endif; ?>
					<b class="price">
					<?php if ($this->_tpl_vars['carrier']['price']): ?>
						<?php if ($this->_tpl_vars['priceDisplay'] == 1): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['carrier']['price_tax_exc']), $this);?>
 <?php echo smartyTranslate(array('s' => '(tax excl.)'), $this);?>
<?php else: ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['carrier']['price']), $this);?>
 <?php echo smartyTranslate(array('s' => '(tax incl.)'), $this);?>
<?php endif; ?>
					<?php else: ?>
						<?php echo smartyTranslate(array('s' => 'Free!'), $this);?>

					<?php endif; ?>
					</b>
					<?php if ($this->_tpl_vars['carrier']['delay']): ?>- <?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['delay'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>
				</li>
			<?php endforeach; endif; unset($_from); ?>
				<?php echo $this->_tpl_vars['HOOK_EXTRACARRIER']; ?>

				<li style="display: none;" id="extra_carrier"></li>
			</ul>
		<?php else: ?>
			<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'There is no carrier available that will deliver to this address!'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		<?php endif; ?>

	<?php if ($this->_tpl_vars['recyclablePackAllowed']): ?>
			<ul class="pageitem">
				<li class="checkbox">
					<?php if ($this->_tpl_vars['recyclable']): ?><span class="check"><?php endif; ?>
						<span class="name"><?php echo smartyTranslate(array('s' => 'Recycled packaging'), $this);?>
</span>
						<input type="checkbox" name="recyclable" id="recyclable" value="1" <?php if ($this->_tpl_vars['recyclable'] == 1): ?>checked="checked"<?php endif; ?> />
					<?php if ($this->_tpl_vars['recyclable']): ?></span><?php endif; ?> 
				</li>
			</ul>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['giftAllowed']): ?>
			<ul class="pageitem">
				<li class="checkbox">
					<?php if ($this->_tpl_vars['cart']->gift == 1): ?><span class="check"><?php endif; ?>
						<span class="name">
							<?php echo smartyTranslate(array('s' => 'Gift-wrapping'), $this);?>

						<?php if ($this->_tpl_vars['gift_wrapping_price'] > 0): ?>
							(+<?php if ($this->_tpl_vars['priceDisplay'] == 1): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_wrapping_tax_exc']), $this);?>
 <?php echo smartyTranslate(array('s' => '(tax excl.)'), $this);?>
<?php else: ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_wrapping']), $this);?>
 <?php echo smartyTranslate(array('s' => '(tax incl.)'), $this);?>
<?php endif; ?>)
						<?php endif; ?>
						</span>
						<input type="checkbox" name="gift" id="gift" value="1" onclick="$('#gift_div').slideToggle('fast');" <?php if ($this->_tpl_vars['cart']->gift == 1): ?>checked="checked"<?php endif; ?> />
					<?php if ($this->_tpl_vars['cart']->gift == 1): ?></span><?php endif; ?> 
				</li>
				<li class="textbox" id="gift_div" style="display:<?php if ($this->_tpl_vars['cart']->gift == 1): ?>block<?php else: ?>none<?php endif; ?>;">
					<span class="header"><?php echo smartyTranslate(array('s' => 'If you wish, you can add a note to the gift:'), $this);?>
</span>
					<textarea rows="5" cols="35" id="gift_message" name="gift_message"><?php echo ((is_array($_tmp=$this->_tpl_vars['cart']->gift_message)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</textarea>
				</li>
			</ul>
	<?php endif; ?>

<?php endif; ?>

			<ul class="pageitem">
				<li class="menu">
					<input type="hidden" name="step" value="3" />
					<input type="hidden" name="back" value="<?php echo $this->_tpl_vars['back']; ?>
" />
					<input type="hidden" name="processCarrier" value="1" />
					<a href="javascript:if (acceptCGV('<?php echo smartyTranslate(array('s' => 'Please accept the terms of service before the next step.','js' => 1), $this);?>
')) { $('#carrierForm').submit() }" title="<?php echo smartyTranslate(array('s' => 'Next'), $this);?>
">
						<img alt="<?php echo smartyTranslate(array('s' => 'next'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
cart_ok.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Next'), $this);?>
</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=1<?php if ($this->_tpl_vars['back']): ?>&back=<?php echo $this->_tpl_vars['back']; ?>
<?php endif; ?>" title="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
">
						<img alt="<?php echo smartyTranslate(array('s' => 'previous'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
back.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
</span>
					</a>
				</li>
			</ul>

		</fieldset>
	</form>
</div>