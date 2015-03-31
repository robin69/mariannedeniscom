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
	<span class="graytitle">{if $nbSuppliers > 1}{l s='There are'} <span class="bold">{$nbSuppliers} {l s='suppliers.'}</span>{else}{l s='There is'} <span class="bold">{$nbSuppliers} {l s='supplier.'}</span>{/if}</span>
{include file=$tpl_dir./errors.tpl}
{if $nbSuppliers > 0}
	{include file=$tpl_dir./product-sort.tpl}
	<ul class="pageitem">
	{foreach from=$suppliers item=supplier}
		<li class="store">
			<a href="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$supplier.name|escape:'htmlall':'UTF-8'}">
				<span class="image" style="background-image: url('{$img_sup_dir}{$supplier.image|escape:'htmlall':'UTF-8'}-{$ips_img_medium}.jpg')"></span>
				<span class="name">{$supplier.name|truncate:60:'...'|escape:'htmlall':'UTF-8'}</span>
				<span class="comment">{$supplier.nb_products|intval} {if $supplier.nb_products > 1}{l s='products'}{else}{l s='product'}{/if}</span>
				<span class="comment">{$supplier.description|truncate:60:'...'|escape:'htmlall':'UTF-8'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	{/foreach}
	</ul>
	{include file=$tpl_dir./pagination.tpl}
{else}
	{capture name=warning}{l s='No supplier.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
</div>