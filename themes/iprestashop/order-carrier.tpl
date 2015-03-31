{include file=$tpl_dir./thickbox.tpl}
<script type="text/javascript">
// <![CDATA[
	var baseDir = '{$base_dir_ssl}';
	function displayCarrierInfo(id) {ldelim}
		$('.mycarrier').slideUp('fast');
		$('#mycarrier'+id).slideDown('fast');
	{rdelim}
{if !$virtual_cart && $giftAllowed && $cart->gift == 1}
	$('document').ready( function(){ldelim}
		$('#gift_div').slideUp('slow');
	{rdelim});
{/if}
	//]]>
</script>
<script type="text/javascript" src="{$js_dir}layer.js"></script>
<script type="text/javascript" src="{$content_dir}js/conditions.js"></script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

{assign var='current_step' value='shipping'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">
	<span class="graytitle">{l s='Shipping'}</span>

{include file=$tpl_dir./errors.tpl}

	<form id="carrierForm" action="{$base_dir_ssl}order.php" method="post">
		<fieldset>

{if $conditions}
			<ul class="pageitem">
				<li class="checkbox">
					{if $checkedTOS}<span class="check">{/if}
						<span class="name">{l s='I agree with the terms of service and I adhere to them unconditionally.'}</span>
						<input type="checkbox" name="cgv" id="cgv" value="1" {if $checkedTOS}checked="checked"{/if} />
					{if $checkedTOS}</span>{/if} 
				</li>
				<li class="menu">
					<a href="{$base_dir}cms.php?id_cms=3">
						<img alt="{l s='TOS'}" src="{$img_dir}conditions.png" />
						<span class="name">{l s='Read terms of service'}</span>
						<span class="arrow"></span>
					</a>
				</li>
			</ul>
{/if}

{if $virtual_cart}
			<input id="input_virtual_carrier" class="hidden" type="hidden" name="id_carrier" value="0" />

{else}
	{if $carriers && count($carriers)}
			<ul class="pageitem">
				<li class="textbox"><span class="header">{l s='Choose your delivery method'}</span></li>
			{foreach from=$carriers item=carrier name=loop}
				<li class="radiobutton">
					<span class="name">
						{$carrier.name|escape:'htmlall':'UTF-8'}
					</span>
					<input onchange="displayCarrierInfo('{$smarty.foreach.loop.index}')" type="radio" name="id_carrier" value="{$carrier.id_carrier|intval}" id="id_carrier{$carrier.id_carrier|intval}" {if $carrier.id_carrier == $checked || ($checked == 0 && $i == 0) || ($carriers|@sizeof == 1)}checked="checked"{/if} />
				</li>
				<li class="textbox mycarrier" id="mycarrier{$smarty.foreach.loop.index}" style="display:{if $carrier.id_carrier == $checked || ($checked == 0 && $i == 0) || ($carriers|@sizeof == 1)}block{else}none{/if}">
					{if $carrier.img}<img class="left" src="{$carrier.img|escape:'htmlall':'UTF-8'}" alt="{$carrier.name|escape:'htmlall':'UTF-8'}" width="32" height="32" />{/if}
					<b class="price">
					{if $carrier.price}
						{if $priceDisplay == 1}{convertPrice price=$carrier.price_tax_exc} {l s='(tax excl.)'}{else}{convertPrice price=$carrier.price} {l s='(tax incl.)'}{/if}
					{else}
						{l s='Free!'}
					{/if}
					</b>
					{if $carrier.delay}- {$carrier.delay|escape:'htmlall':'UTF-8'}{/if}
				</li>
			{/foreach}
				{$HOOK_EXTRACARRIER}
				<li style="display: none;" id="extra_carrier"></li>
			</ul>
		{else}
			{capture name=warning}{l s='There is no carrier available that will deliver to this address!'}{/capture}
			{include file=$tpl_dir./warning.tpl}
		{/if}

	{if $recyclablePackAllowed}
			<ul class="pageitem">
				<li class="checkbox">
					{if $recyclable}<span class="check">{/if}
						<span class="name">{l s='Recycled packaging'}</span>
						<input type="checkbox" name="recyclable" id="recyclable" value="1" {if $recyclable == 1}checked="checked"{/if} />
					{if $recyclable}</span>{/if} 
				</li>
			</ul>
	{/if}

	{if $giftAllowed}
			<ul class="pageitem">
				<li class="checkbox">
					{if $cart->gift == 1}<span class="check">{/if}
						<span class="name">
							{l s='Gift-wrapping'}
						{if $gift_wrapping_price > 0}
							(+{if $priceDisplay == 1}{convertPrice price=$total_wrapping_tax_exc} {l s='(tax excl.)'}{else}{convertPrice price=$total_wrapping} {l s='(tax incl.)'}{/if})
						{/if}
						</span>
						<input type="checkbox" name="gift" id="gift" value="1" onclick="$('#gift_div').slideToggle('fast');" {if $cart->gift == 1}checked="checked"{/if} />
					{if $cart->gift == 1}</span>{/if} 
				</li>
				<li class="textbox" id="gift_div" style="display:{if $cart->gift == 1}block{else}none{/if};">
					<span class="header">{l s='If you wish, you can add a note to the gift:'}</span>
					<textarea rows="5" cols="35" id="gift_message" name="gift_message">{$cart->gift_message|escape:'htmlall':'UTF-8'}</textarea>
				</li>
			</ul>
	{/if}

{/if}

			<ul class="pageitem">
				<li class="menu">
					<input type="hidden" name="step" value="3" />
					<input type="hidden" name="back" value="{$back}" />
					<input type="hidden" name="processCarrier" value="1" />
					<a href="javascript:if (acceptCGV('{l s='Please accept the terms of service before the next step.' js=1}')) {ldelim} $('#carrierForm').submit() {rdelim}" title="{l s='Next'}">
						<img alt="{l s='next'}" src="{$img_dir}cart_ok.png" />
						<span class="name">{l s='Next'}</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="{$base_dir_ssl}order.php?step=1{if $back}&back={$back}{/if}" title="{l s='previous'}">
						<img alt="{l s='previous'}" src="{$img_dir}back.png" />
						<span class="name">{l s='Previous'}</span>
					</a>
				</li>
			</ul>

		</fieldset>
	</form>
</div>