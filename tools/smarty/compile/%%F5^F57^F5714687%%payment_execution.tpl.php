<?php /* Smarty version 2.6.20, created on 2012-12-09 13:30:44
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/cheque/payment_execution.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/cheque/payment_execution.tpl', 3, false),array('function', 'convertPriceWithCurrency', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/cheque/payment_execution.tpl', 35, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/cheque/payment_execution.tpl', 33, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home','mod' => 'cheque'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1"><?php echo smartyTranslate(array('s' => 'Browse','mod' => 'cheque'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account','mod' => 'cheque'), $this);?>
</a>
	</div>
</div>

<?php $this->assign('current_step', 'payment'); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="content">

<?php if ($this->_tpl_vars['nbProducts'] <= 0): ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Your shopping cart is empty.','mod' => 'cheque'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php else: ?>

	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Cheque payment','mod' => 'cheque'), $this);?>
</span>

	<form action="<?php echo $this->_tpl_vars['this_path_ssl']; ?>
validation.php" method="post" id="paymentForm">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
cheque.png" alt="<?php echo smartyTranslate(array('s' => 'cheque','mod' => 'cheque'), $this);?>
" style="float:left; margin: 0px 10px 5px 0px;" />
					<?php echo smartyTranslate(array('s' => 'You have chosen to pay by cheque.','mod' => 'cheque'), $this);?>

				</li>
				<li class="textbox">
					<?php echo smartyTranslate(array('s' => 'The total amount of your order is','mod' => 'cheque'), $this);?>

					<strong>
						<?php if (count($this->_tpl_vars['currencies']) > 1): ?>
							<?php $_from = $this->_tpl_vars['currencies']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['currency']):
?>
								<span id="amount_<?php echo $this->_tpl_vars['currency']['id_currency']; ?>
" class="price" style="display:none;"><?php echo Product::convertPriceWithCurrency(array('price' => $this->_tpl_vars['total'],'currency' => $this->_tpl_vars['currency']), $this);?>
</span>
							<?php endforeach; endif; unset($_from); ?>
						<?php else: ?>
							<span id="amount_<?php echo $this->_tpl_vars['currencies']['0']['id_currency']; ?>
" class="price"><?php echo Product::convertPriceWithCurrency(array('price' => $this->_tpl_vars['total'],'currency' => $this->_tpl_vars['currencies']['0']), $this);?>
</span>
						<?php endif; ?>
						<?php echo smartyTranslate(array('s' => '(tax incl.)','mod' => 'cheque'), $this);?>

					</strong>
				</li>
	<?php if (count($this->_tpl_vars['currencies']) > 1): ?>
				<li class="textbox">
					<?php echo smartyTranslate(array('s' => 'We accept several currencies for cheques.','mod' => 'cheque'), $this);?>

					<br /><?php echo smartyTranslate(array('s' => 'Choose one of the following:','mod' => 'cheque'), $this);?>

				</li>
				<li class="select">
					<select id="currency_payement" name="currency_payement" onchange="showElemFromSelect('currency_payement', 'amount_')">
					<?php $_from = $this->_tpl_vars['currencies']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['currency']):
?>
						<option value="<?php echo $this->_tpl_vars['currency']['id_currency']; ?>
" <?php if ($this->_tpl_vars['currency']['id_currency'] == $this->_tpl_vars['cust_currency']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['currency']['name']; ?>
</option>
					<?php endforeach; endif; unset($_from); ?>
					</select>
					<span class="arrow"></span>
				</li>
				<script language="javascript">showElemFromSelect('currency_payement', 'amount_');</script>
	<?php else: ?>
				<li class="textbox">
					<?php echo smartyTranslate(array('s' => 'We accept the following currency to be sent by cheque:','mod' => 'cheque'), $this);?>
&nbsp;<strong><?php echo $this->_tpl_vars['currencies']['0']['name']; ?>
</strong>
					<input type="hidden" name="currency_payement" value="<?php echo $this->_tpl_vars['currencies']['0']['id_currency']; ?>
">
				</li>
	<?php endif; ?>
				<li class="textbox">
					<?php echo smartyTranslate(array('s' => 'Cheque owner and address information will be displayed on the next page.','mod' => 'cheque'), $this);?>

				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<a href="javascript:$('#paymentForm').submit()" title="<?php echo smartyTranslate(array('s' => 'Next','mod' => 'cheque'), $this);?>
">
						<img alt="<?php echo smartyTranslate(array('s' => 'next','mod' => 'cheque'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
cart_ok.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'I confirm my order','mod' => 'cheque'), $this);?>
</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=3" title="<?php echo smartyTranslate(array('s' => 'previous','mod' => 'cheque'), $this);?>
">
						<img alt="<?php echo smartyTranslate(array('s' => 'previous','mod' => 'cheque'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
back.png" />
						<span class="name"><?php echo smartyTranslate(array('s' => 'Other payment methods','mod' => 'cheque'), $this);?>
</span>
					</a>
				</li>
			</ul>

		</fieldset>
	</form>
<?php endif; ?>
</div>