<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}manufacturer.php">{l s='Manufacturers'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}order.php" class="noeffect">{l s='Cart'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{$manufacturer->name|escape:'htmlall':'UTF-8'}</span>
{include file=$tpl_dir./errors.tpl}
{if $products}
	{include file=$tpl_dir./product-sort.tpl}
	<span class="header">{l s='List of products by manufacturer:'}</span>
	{include file=$tpl_dir./product-list.tpl products=$products}
	{include file=$tpl_dir./pagination.tpl}
{else}
	{capture name=warning}{l s='No products for this manufacturer.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
</div>