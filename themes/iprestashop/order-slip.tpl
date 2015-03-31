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
	<span class="graytitle">{l s='Credit slips'}</span>

{if $ordersSlip && count($ordersSlip)}
	<ul class="pageitem">
		<li class="textbox">
			{l s='Credit slips you received after canceled orders'}.
		</li>
	</ul>

	<ul class="pageitem">
	{foreach from=$ordersSlip item=slip name=myLoop}
		<li class="menu">
			<a href="{$base_dir}pdf-order-slip.php?id_order_slip={$slip.id_order_slip|intval}" title="{l s='Credit slip'} {l s='#'}{$slip.id_order_slip|string_format:"%06d"}">
				<img alt="{l s='pdf'}" src="{$img_dir}pdf.png" />
				<span class="name">
					{l s='#'}{$slip.id_order_slip|string_format:"%04d"}
					- {dateFormat date=$slip.date_add full=0}
				</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="textbox">
			{l s='Order:'} <a class="noeffect	" href="javascript:showOrder(1, {$slip.id_order|intval}, 'order-detail');">{l s='#'}{$slip.id_order|string_format:"%06d"}</a>
		</li>
	{/foreach}
	</ul>
	<div id="block-order-detail" class="hidden">&nbsp;</div>

{else}
	{capture name=warning}{l s='You have not received any credit slips.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}

</div>
