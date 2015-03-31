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
	<span class="graytitle">{l s='Order history'}</span>
	<ul class="pageitem">
		<li class="textbox">
			{l s='Here are the orders you have placed since the creation of your account.'}
		</li>
	</ul>

{if $orders && count($orders)}
	<ul class="pageitem">
	{foreach from=$orders item=order name=myLoop}
		<li class="menu">
			<a class="noeffect" href="javascript:showOrder(1, {$order.id_order|intval}, 'order-detail');">
			{if $order.invoice && $order.virtual}
				<img src="{$img_dir}download.png" alt="{l s='Product(s) to download'}" />
			{else}
				<img alt="{l s='order'}" src="{$img_dir}order.png" />
			{/if}
				<span class="name">
					{l s='#'}{$order.id_order|string_format:"%04d"}
					- <span class="price">{displayPrice price=$order.total_paid_real currency=$order.id_currency no_utf8=false convert=false}</span>
				</span>
				<span class="arrow"></span>
				{*dateFormat date=$order.date_add full=0}
				{$order.payment|escape:'htmlall':'UTF-8'}
				{$order.order_state|escape:'htmlall':'UTF-8'}
				{if ($order.invoice or $order.invoice_number) AND $invoiceAllowed}
					<a href="{$base_dir}pdf-invoice.php?id_order={$order.id_order|intval}" title="{l s='Invoice'} {$order.name|escape:'htmlall':'UTF-8'}"><img src="{$img_dir}icon/pdf.gif" alt="{l s='Invoice'} {$order.name|escape:'htmlall':'UTF-8'}" class="icon" /></a>
					<a href="{$base_dir}pdf-invoice.php?id_order={$order.id_order|intval}" title="{l s='Invoice'} {$order.name|escape:'htmlall':'UTF-8'}">{l s='PDF'}</a>
				{else}-{/if*}
			</a>
		</li>
	{/foreach}
	</ul>
	<div id="block-order-detail" class="hidden">&nbsp;</div>

{else}
	{capture name=warning}{l s='You have not placed any orders.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}

</div>
