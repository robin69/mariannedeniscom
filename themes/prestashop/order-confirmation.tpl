<h1>confirmation</h1><script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>
<script type="text/javascript" >
	var orderAmount = '{$totalAmountPaid}';
</script>

{capture name=path}{l s='Order confirmation'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2 class="page_title_h2">{l s='Order confirmation'}</h2>

	{assign var='current_step' value='payment'}
	{include file=$tpl_dir./order-steps.tpl}

<div class="my-account-container">

	{include file=$tpl_dir./errors.tpl}
	
	<br />
	
	{$HOOK_ORDER_CONFIRMATION}
	{$HOOK_PAYMENT_RETURN}
	
	<br /><br />
	<a href="{$base_dir_ssl}history.php" title="Commandes"><img src="{$img_dir}icon/icon-commandes.jpg" alt="Commandes" class="icon" />Acc&eacute;der &agrave; la liste de mes commandes</a>
	<br /><br /><br />
	
</div>
<!-- Google Code for ACHAT Conversion Page -->
<img height="1" width="1" alt="" src="//www.googleadservices.com/pagead/conversion/1065230772/imp.gif?value={$totalAmountPaid}&amp;label=YmCXCJSr6wgQtMP4-wM&amp;guid=ON&amp;script=0"/>
	