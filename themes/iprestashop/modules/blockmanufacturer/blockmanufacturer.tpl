<!-- Block manufacturers module -->
<span class="graytitle"><a href="{$base_dir}manufacturer.php" title="{l s='Manufacturers' mod='blockmanufacturer'}">{l s='Manufacturers' mod='blockmanufacturer'}</a></span>
{if $manufacturers}
<ul class="pageitem">
	{if $text_list}
	{foreach from=$manufacturers item=manufacturer name=manufacturer_list}
		{if $smarty.foreach.manufacturer_list.iteration <= $text_list_nb}
	<li class="menu">
		<a href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}" title="{l s='More about' mod='blockmanufacturer'} {$manufacturer.name}">
			<img alt="list" src="{$img_manu_dir}{$manufacturer.id_manufacturer}-{$ips_img_small}.jpg" />
			<span class="name">{$manufacturer.name}</span>
			<span class="arrow"></span>
		</a>
	</li>
		{/if}
	{/foreach}
	{/if}
	{if $form_list}
	<form action="{$smarty.server.SCRIPT_NAME}" method="get">
		<li class="select">
			<select id="manufacturer_list" onchange="autoUrl('manufacturer_list', '');">
				<option value="0">{l s='All manufacturers' mod='blockmanufacturer'}</option>
			{foreach from=$manufacturers item=manufacturer}
				<option value="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)}">{$manufacturer.name}</option>
			{/foreach}
			</select>
			<span class="arrow"></span>
		</li>
	</form>
	{/if}
</ul>
{else}
	{capture name=warning}{l s='No manufacturer' mod='blockmanufacturer'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /Block manufacturers module -->
