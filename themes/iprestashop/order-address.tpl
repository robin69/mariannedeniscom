<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
	var addresses = new Array();
	{foreach from=$addresses key=k item=address}
		addresses[{$address.id_address|intval}] = new Array('{$address.company|addslashes}', '{$address.firstname|addslashes}', '{$address.lastname|addslashes}', '{$address.address1|addslashes}', '{$address.address2|addslashes}', '{$address.postcode|addslashes}', '{$address.city|addslashes}', '{$address.country|addslashes}', '{$address.state|default:''|addslashes}');
	{/foreach}
-->
</script>
<script type="text/javascript" src="{$js_dir}order-address.js"></script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

{assign var='current_step' value='address'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">
	<span class="graytitle">{l s='Addresses'}</span>

	{include file=$tpl_dir./errors.tpl}

	<form action="{$base_dir_ssl}order.php" method="post" id="formAddresses">
		<fieldset>

			<ul class="pageitem">
				<li class="textbox">{l s='Choose a delivery address:'}</li>
				<li class="select">
					<select name="id_address_delivery" id="id_address_delivery" class="address_select" onchange="updateAddressesDisplay();">
					{foreach from=$addresses key=k item=address}
						<option value="{$address.id_address|intval}" {if $address.id_address == $cart->id_address_delivery}selected="selected"{/if}>{$address.alias|escape:'htmlall':'UTF-8'}</option>
					{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				<li class="checkbox">
					{if $cart->id_address_invoice == $cart->id_address_delivery || $addresses|@count == 1}
						{assign var='same_address' value=true}
					{else}
						{assign var='same_address' value=false}
					{/if}
					{if $same_address}<span class="check">{/if}
						<span class="name">{l s='Use the same address for billing.'}</span>
						<input type="checkbox" name="same" id="addressesAreEquals" value="1" onclick="updateAddressesDisplay();" {if $same_address}checked="checked"{/if} />
					{if $same_address}</span>{/if}
				</li>
				{if ($cart->id_address_invoice == $cart->id_address_delivery) || $addresses|@count < 2}
					{assign var='display_address' value=false}
				{else}
					{assign var='display_address' value=true}
				{/if}
				<li class="textbox address_invoice_form" {if !$display_address}style="display:none"{/if}>{l s='Choose a billing address:'}</li>
				<li class="select address_invoice_form" {if !$display_address}style="display:none"{/if}>
					<select name="id_address_invoice" id="id_address_invoice" class="address_select" onchange="updateAddressesDisplay();">
					{section loop=$addresses step=-1 name=address}
						<option value="{$addresses[address].id_address|intval}" {if $addresses[address].id_address == $cart->id_address_invoice && $cart->id_address_delivery != $cart->id_address_invoice}selected="selected"{/if}>{$addresses[address].alias|escape:'htmlall':'UTF-8'}</option>
					{/section}
					</select>
					<span class="arrow"></span>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="textbox">
					<span class="header">{l s='Your delivery address'}</span>
					<ul class="address item" id="address_delivery">
						<li class="address_company"></li>
						<li class="address_name"></li>
						<li class="address_address1"></li>
						<li class="address_address2"></li>
						<li class="address_city"></li>
						<li class="address_country"></li>
						<li class="address_update"><a href="{$base_dir_ssl}address.php?id_address={$address.id_address|intval}&amp;back=order.php&amp;step=1" title="{l s='Update'}">{l s='Update'}</a></li>
					</ul>
				</li>
				<li class="textbox">
					<span class="header">{l s='Your billing address'}</span>
					<ul class="address alternate_item" id="address_invoice">
						<li class="address_company"></li>
						<li class="address_name"></li>
						<li class="address_address1"></li>
						<li class="address_address2"></li>
						<li class="address_city"></li>
						<li class="address_country"></li>
						<li class="address_update"><a href="{$base_dir_ssl}address.php?id_address={$address.id_address|intval}&amp;back=order.php&amp;step=1" title="{l s='Update'}">{l s='Update'}</a></li>
					</ul>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<a title="{l s='Add'}" href="{$base_dir_ssl}address.php?back=order.php&amp;step=1{if $addresses|@count < 1}&select_address=1{/if}">
						<img alt="add address" src="{$img_dir}address_add.png" />
						<span class="name">{l s='Add a new address'}</span>
						<span class="arrow"></span>
					</a>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="textbox">
					<span class="header">{l s='If you want to leave us comment about your order, please write it below.'}</span>
					<textarea cols="60" rows="3" name="message">{$oldMessage}</textarea>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<input type="hidden" class="hidden" name="step" value="2" />
					<input type="hidden" name="back" value="{$back}" />
					<input type="hidden" name="processAddress" value="1" />
					<a href="javascript:$('#formAddresses').submit()" title="{l s='Next'}">
						<img alt="{l s='next'}" src="{$img_dir}cart_ok.png" />
						<span class="name">{l s='Next'}</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="{$base_dir_ssl}order.php?step=0{if $back}&back={$back}{/if}" title="{l s='previous'}">
						<img alt="{l s='previous'}" src="{$img_dir}back.png" />
						<span class="name">{l s='Previous'}</span>
					</a>
				</li>
			</ul>

	</fieldset>
</form>