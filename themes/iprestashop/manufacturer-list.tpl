<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}order.php" class="noeffect">{l s='Cart'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{if $nbManufacturers > 1}{l s='There are'} <span class="bold">{$nbManufacturers} {l s='manufacturers.'}</span>{else}{l s='There is'} <span class="bold">{$nbManufacturers} {l s='manufacturer.'}</span>{/if}</span>
	{include file=$tpl_dir./errors.tpl}
{if $nbManufacturers > 0}
	{include file=$tpl_dir./product-sort.tpl}
	<ul class="pageitem">
	{foreach from=$manufacturers item=manufacturer}
		<li class="store">
			<a href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$manufacturer.name|escape:'htmlall':'UTF-8'}">
				<span class="image" style="background-image: url('{$img_manu_dir}{$manufacturer.image|escape:'htmlall':'UTF-8'}-{$ips_img_medium}.jpg')"></span>
				<span class="name">{$manufacturer.name|truncate:60:'...'|escape:'htmlall':'UTF-8'}</span>
				<span class="comment">{$manufacturer.nb_products|intval} {if $manufacturer.nb_products > 1}{l s='products'}{else}{l s='product'}{/if}</span>
				<span class="comment">{$manufacturer.description|truncate:60:'...'|escape:'htmlall':'UTF-8'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	{/foreach}
	</ul>
	{include file=$tpl_dir./pagination.tpl}
{else}
	{capture name=warning}{l s='No manufacturer.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
</div>