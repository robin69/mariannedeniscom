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
	<span class="graytitle">{l s='Return Merchandise Authorization (RMA)'}</span>
	
	{if $errorQuantity}
		{assign var='error' value='You do not have enough products to request another merchandise return.'}
	{/if}
	{if $errorMsg}
		{assign var='error' value='Please provide an explanation for your RMA.'}
	{/if}
	{if $errorDetail1}
		{assign var='error' value='Please check at least one product you want to return.'}
	{/if}
	{if $errorDetail2}
		{assign var='error' value='Please provide quantity for product you checked.'}
	{/if}
	{if isset($error)}
	<ul class="pageitem error">
		<li class="textbox">
			{$error}
		</li>
	</ul>
	{/if}

	{if $ordersReturn && count($ordersReturn)}
	<ul class="pageitem">
		<li class="textbox">
			{l s='Here are the merchandise returns you have made since ordering'}.
		</li>
	</ul>
	<ul class="pageitem">

		{foreach from=$ordersReturn item=return name=myLoop}
		<li class="menu">
			<a href="{if $return.state == 2}{$base_dir}pdf-order-return.php?id_order_return={$return.id_order_return|intval}{else}#" class="noeffect{/if}" title="{l s='Order return'} {l s='#'}{$return.id_order_return|string_format:"%06d"}">
				{if $return.state == 2}<img alt="{l s='pdf'}" src="{$img_dir}pdf.png" />{/if}
				<span class="name">
					{l s='#'}{$return.id_order_return|string_format:"%06d"}
					- {dateFormat date=$return.date_add full=0}
				</span>
				{if $return.state == 2}<span class="arrow"></span>{/if}
			</a>
		</li>
		<li class="textbox">
			{l s='Order:'} <a class="noeffect	" href="javascript:showOrder(0, {$return.id_order_return|intval}, 'order-return');">{l s='#'}{$return.id_order|string_format:"%06d"}</a>
			<br/>{l s='Package status:'} {$return.state_name|escape:'htmlall':'UTF-8'}
		</li>
		{/foreach}
	</ul>
	<div id="block-order-detail" class="hidden">&nbsp;</div>
	{else}
		{capture name=warning}{l s='You have no return merchandise authorizations.'}{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}
</div>

