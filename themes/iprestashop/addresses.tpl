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
	<span class="graytitle">{l s='My addresses'}</span>

{if $addresses}
	<ul class="pageitem">
		<li class="textbox">
			{l s='Configure your billing and delivery addresses that will be preselected by default when you make an order. You can also add additional addresses, which can be useful for sending gifts or receiving your order at the office.'}
		</li>
	</ul>

	<ul class="pageitem">
	{foreach from=$addresses item=address name=myLoop}
		<li class="textbox" id="address_delivery">
			<span class="header">{$address.alias}</span>
			<ul class="address">
				{if $address.company}<li class="address_company">{$address.company}</li>{/if}
				<li class="address_name">{$address.firstname} {$address.lastname}</li>
				<li class="address_address1">{$address.address1}</li>
				{if $address.address2}<li class="address_address2">{$address.address2}</li>{/if}
				<li class="address_city">{$address.postcode} {$address.city}</li>
				<li class="address_country">{$address.country}{if isset($address.state)} ({$address.state}){/if}</li>
				{if $address.phone}<li class="address_phone">{$address.phone}</li>{/if}
				{if $address.phone_mobile}<li class="address_phone_mobile">{$address.phone_mobile}</li>{/if}
				<li class="address_update"><a href="{$base_dir_ssl}address.php?id_address={$address.id_address|intval}" title="{l s='Update'}">{l s='Update'}</a></li>
				<li class="address_delete"><a href="{$base_dir_ssl}address.php?id_address={$address.id_address|intval}&amp;delete" onclick="return confirm('{l s='Are you sure?'}');" title="{l s='Delete'}">{l s='Delete'}</a></li>
			</ul>
		</li>
	{/foreach}
	</ul>

{else}
	{capture name=warning}{l s='No addresses available.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}

	<ul class="pageitem">
		<li class="menu">
			<a title="{l s='Add'}" href="{$base_dir_ssl}address.php">
				<img alt="add address" src="{$img_dir}address_add.png" />
				<span class="name">{l s='Add an address'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>

</div>