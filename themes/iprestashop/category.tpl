<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}order.php" class="noeffect">{l s='Cart'}</a>
	</div>
</div>

{if $category->id AND $category->active}
<div id="content">
	<span class="graytitle">
		{$category->name|escape:'htmlall':'UTF-8'}
		- {$nb_products|intval} {if $nb_products>1}{l s='products'}{else}{l s='product'}{/if}
	</span>
	{include file=$tpl_dir./errors.tpl}

	{*if $scenes}
		<!-- Scenes -->
		{include file=$tpl_dir./scenes.tpl scenes=$scenes}
	{else*}
		<!-- Category image -->
		{if $category->id_image}
		<div class="align_center">
			<img src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, $ips_img_category)}" alt="{$category->name|escape:'htmlall':'UTF-8'}" id="categoryImage" />
		</div>
		{/if}
	{*/if*}

	{if $category->description}
	<ul class="pageitem">
		<li class="textbox">
			<p>{$category->description}</p>
		</li>
	</ul>
	{/if}

	{if isset($subcategories)}
	<!-- Subcategories -->
	<ul class="pageitem">
	{foreach from=$subcategories item=subcategory name=loop}
		{include file=$tpl_dir./subcategory-tree-branch.tpl node=$subcategory space=0}
	{/foreach}
	</ul>
	{/if}

	{if $products}
		{include file=$tpl_dir./product-sort.tpl}
		{include file=$tpl_dir./product-list.tpl products=$products}
		{include file=$tpl_dir./pagination.tpl}
	{elseif !isset($subcategories)}
		<ul class="pageitem"><li class="textbox">{l s='There is no product in this category.'}</p></li></ul>
	{/if}
{else}
	<ul class="pageitem warning">
		<li class="textbox">
			<span class="header">{l s='This category is currently unavailable.'}</span>
		</li>
	</ul>
{/if}
</div>
