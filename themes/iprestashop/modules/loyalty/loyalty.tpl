<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='loyalty'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='loyalty'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}order.php">{l s='Cart' mod='loyalty'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='My reward points' mod='loyalty'}</span>
{if $orders}
	{if $orders && count($orders)}
	<ul class="pageitem">
		{foreach from=$orders item='order'}
		<li class="textbox">
			<p>
				{l s='Order #' mod='loyalty'}{$order.id|string_format:"%06d"}
				- {dateFormat date=$order.date full=1}
			</p>
			<p>
				{$order.points|intval} {if $order.points > 1}{l s='points' mod='loyalty'}{else}{l s='point' mod='loyalty'}{/if}
			</p>
			<span class="header">
				{l s='Status:' mod='loyalty'} {$order.state|escape:'htmlall':'UTF-8'}
			</span>
		</li>
		{/foreach}
		<li class="textbox warning">
			<strong>{l s='Total points available:' mod='loyalty'} {$totalPoints|intval}</strong>
		</li>
	</ul>
	{else}
		{capture name=warning}{l s='You have not placed any orders.'}{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}

	{if $transformation_allowed}
	<ul class="pageitem">
		<li class="menu">
			<a class="noeffect" href="{$base_dir}modules/loyalty/loyalty-program.php?transform-points=true" onclick="return confirm('{l s='Are you sure to want to transform your points into vouchers ?' mod='loyalty' js=1}');">
				<img src="{$img_dir}voucher.png" alt="" />
				<span class="name">{l s='Earn a voucher of' mod='loyalty'} <span class="price">{convertPrice price=$voucher}</span></span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
	<p style="text-align:center; margin-top:20px">
		
	</p>
	{/if}

	<span class="graytitle">{l s='My vouchers from loyalty points' mod='loyalty'}</span>
	{if $nbDiscounts}
		{foreach from=$discounts item=discount name=myLoop}
		<ul class="pageitem">
			<li class="textbox">
				{l s='Created on' mod='loyalty'} {dateFormat date=$discount->date_add}
				<br/>{l s='Valid until' mod='loyalty'} {dateFormat date=$discount->date_to}
				<br/>{l s='Status:' mod='loyalty'} {if $discount->quantity > 0}{l s='To use' mod='loyalty'}{else}{l s='Used' mod='loyalty'}{/if}
			</li>
			<li class="menu">
				<a class="noeffect" href="javascript:$('#discount{$smarty.foreach.myLoop.index}').slideToggle()" onclick="return false">
					<span class="name">
						{$discount->name} -
						{if $discount->id_discount_type == 1}
							{$discount->value}%
						{elseif $discount->id_discount_type == 2}
							<span class="price">{convertPrice price=$discount->value}</span>
						{else}
							{l s='Free shipping' mod='loyalty'}
						{/if}
					</span>
					<span class="arrow"></span>
				</a>
			</li>
			<li class="textbox" id="discount{$smarty.foreach.myLoop.index}" style="display:none">
				<span class="header">{l s='Generated by these following orders' mod='loyalty'}</span>
				{foreach from=$discount->orders item=myorder name=loop}
					{l s='Order #' mod='loyalty'}{$myorder.id_order}
					- {convertPrice price=$myorder.total_paid}
					- {if $myorder.points > 0}{$myorder.points} {l s='points' mod='loyalty'}{else}{l s='Cancelled' mod='loyalty'}{/if}
				{/foreach}
			</li>
		</ul>
		{/foreach}
		<script type="text/javascript">
			{literal}
			$(document).ready(function()
			{
				$('a.tips').cluetip({
					showTitle: false,
					splitTitle: '|',
					arrows: false,
					fx: {
						open: 'fadeIn',
						openSpeed: 'fast'
					}
				});
			});
			{/literal}
		</script>
	{else}
		{capture name=warning}{l s='No vouchers yet.' mod='loyalty'}{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}

{else}
	{capture name=warning}{l s='No reward points yet.' mod='loyalty'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
</div>
