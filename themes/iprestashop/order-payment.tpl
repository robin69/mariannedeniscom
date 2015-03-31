<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

{assign var='current_step' value='payment'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">
	{include file=$tpl_dir./errors.tpl}

{if $HOOK_PAYMENT}
	<span class="graytitle">{l s='Choose your payment method for an amount of'}&nbsp;<span class="price">{convertPrice price=$total_price}</span> {l s='(tax incl.)'}</span>
	<ul class="pageitem">
		{$HOOK_PAYMENT}
	</ul>
{else}
	{capture name=warning}{l s='No payment modules have been installed yet.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}

	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir_ssl}order.php?step=2" title="{l s='previous'}">
				<img alt="{l s='previous'}" src="{$img_dir}back.png" />
				<span class="name">{l s='Previous'}</span>
			</a>
		</li>
	</ul>
</div>