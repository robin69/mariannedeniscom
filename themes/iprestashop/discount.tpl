<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}?config=1">{l s='Config'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Your vouchers'}</span>

{if $discount && count($discount) && $nbDiscounts}
<ul class="pageitem">

	{foreach from=$discount item=discount name=myLoop}
	<li class="menu">
		<a href="order.php?discount_name={$discount.name}">
			<span class="name">
				{$discount.name} -
				{if $discount.id_discount_type == 1}
					{l s='Value:'}{$discount.value|escape:'htmlall':'UTF-8'}%*
				{elseif $discount.id_discount_type == 2}
					{l s='Value:'}{convertPrice price=$discount.value}*
				{else}
					{l s='Free shipping'}
				{/if}
			</span>
			<span class="arrow"></span>
		</a>
	</li>
	<li class="textbox">
		{$discount.description}
		<br/>{l s='Quantity:'} {$discount.quantity_for_user}
		<br/>{l s='Minimum:'}
			{if $discount.minimal == 0}
				{l s='none'}
			{else}
				{convertPrice price=$discount.minimal}
			{/if}
		<br/>
			{if $discount.cumulable == 1}
				{l s='Cumulative'}
			{else}
				{l s='No cumulative'}
			{/if} - {l s='Expiration date:'} {dateFormat date=$discount.date_to}
	</li>
	{/foreach}
	<li class="textbox">
		<span class="header">*{l s='Tax included'}</span>
	</li>
</ul>
{else}
	{capture name=warning}{l s='You do not possess any vouchers.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}

</div>
