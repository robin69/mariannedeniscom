<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}supplier.php">{l s='Supplier'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}order.php" class="noeffect">{l s='Cart'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{$supplier->name|escape:'htmlall':'UTF-8'}</span>
	{include file=$tpl_dir./errors.tpl}
{if $products}
	{include file=$tpl_dir./product-sort.tpl}
	<span class="header">{l s='List of products by supplier:'}</span>
	{include file=$tpl_dir./product-list.tpl products=$products}
	{include file=$tpl_dir./pagination.tpl}
{else}
	{capture name=warning}{l s='No products for this supplier.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
</div>