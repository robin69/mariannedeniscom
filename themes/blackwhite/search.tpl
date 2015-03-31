{capture name=path}{l s='Search'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Search'}&nbsp;{if $nbProducts > 0}"{if $query}{$query|escape:'htmlall':'UTF-8'}{elseif $tag}{$tag|escape:'htmlall':'UTF-8'}{elseif $ref}{$ref|escape:'htmlall':'UTF-8'}{/if}"{/if}
</h2>

{include file=$tpl_dir./errors.tpl}

{if !$nbProducts}
	<div>
	 <li class="warning">
		{if $query}
			{l s='No results found for'}&nbsp;"{$query|escape:'htmlall':'UTF-8'}"
		{else}
			{l s='Please type a search keyword'}
		{/if}
	 </li>
    </div>
	{else}
	<div>
	<li class="warning">{$nbProducts|intval}&nbsp;{if $nbProducts == 1}{l s='result has been found.'}{else}{l s='results have been found.'}
	{/if}
	</li>
	</div>
<ul class="select_Sort_ul">
<!-- MODULE Home Featured Products -->
{if isset($p) AND $p}
	{if $smarty.get.id_category|intval}
		{assign var='requestPage' value=$link->getPaginationLink('category', $category, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('category', $category, true, false, false, true)}
	{elseif $smarty.get.id_manufacturer|intval}
		{assign var='requestPage' value=$link->getPaginationLink('manufacturer', $manufacturer, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('manufacturer', $manufacturer, true, false, false, true)}
	{elseif $smarty.get.id_supplier|intval}
		{assign var='requestPage' value=$link->getPaginationLink('supplier', $supplier, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('supplier', $supplier, true, false, false, true)}
	{else}
		{assign var='requestPage' value=$link->getPaginationLink(false, false, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink(false, false, true, false, false, true)}
	{/if}
{if isset($orderby) AND isset($orderway)}
<!-- Sort products -->
{if $smarty.get.id_category|intval}
	{assign var='request' value=$link->getPaginationLink('category', $category, false, true)}
{elseif $smarty.get.id_manufacturer|intval}
	{assign var='request' value=$link->getPaginationLink('manufacturer', $manufacturer, false, true)}
{elseif $smarty.get.id_supplier|intval}
	{assign var='request' value=$link->getPaginationLink('supplier', $supplier, false, true)}
{else}
	{assign var='request' value=$link->getPaginationLink(false, false, false, true)}
{/if}
<form id="productsSortForm" action="{$request}">
		<select id="selectPrductSort" onchange="document.location.href = $(this).val();">
			<option value="{$link->addSortDetails($request, 'position', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'position'    AND $orderway eq 'DESC' }selected="selected"{/if}>{l s='Trier la liste'}</option>
			<option value="{$link->addSortDetails($request, 'price', 'asc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'price'    AND $orderway eq 'ASC' }selected="selected"{/if}>{l s='price: lowest first'}</option>
			<option value="{$link->addSortDetails($request, 'price', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'price'    AND $orderway eq 'DESC'}selected="selected"{/if}>{l s='price: highest first'}</option>
			<option value="{$link->addSortDetails($request, 'name', 'asc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'name'     AND $orderway eq 'ASC' }selected="selected"{/if}>{l s='name: A to Z'}</option>
			<option value="{$link->addSortDetails($request, 'name', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'name'     AND $orderway eq 'DESC'}selected="selected"{/if}>{l s='name: Z to A'}</option>
			<option value="{$link->addSortDetails($request, 'quantity', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'quantity' AND $orderway eq 'DESC' }selected="selected"{/if}>{l s='in-stock first'}</option>
			<option value="{$link->addSortDetails($request, 'quantity',  'asc')|escape:'htmlall':'UTF-8'}" {if $orderby eq 'quantity' AND $orderway eq 'ASC'}selected="selected"{/if}>{l s='out-of-stock first'}</option>
		</select>
</form>
<!-- /Sort products -->
{/if}

	<!-- Pagination -->
	{if $start!=$stop}
		<ul class="pagination">
		{if $p != 1}
			{assign var='p_previous' value=$p-1}
			<li id="pagination_previous"><a href="{$link->goPage($requestPage, $p_previous)}">&nbsp;{l s='Previous'}</a></li>
		{else}
			<li id="pagination_previous" class="disabled"><span>&nbsp;{l s='Previous'}</span></li>
		{/if}
		{if $start>3}
			<li><a href="{$link->goPage($requestPage, 1)}">1</a></li>
			<li class="truncate">...</li>
		{/if}
		{section name=pagination start=$start loop=$stop+1 step=1}
			{if $p == $smarty.section.pagination.index}
				<li class="current"><span>{$p|escape:'htmlall':'UTF-8'}</span></li>
			{else}
				<li><a href="{$link->goPage($requestPage, $smarty.section.pagination.index)}">{$smarty.section.pagination.index|escape:'htmlall':'UTF-8'}</a></li>
			{/if}
		{/section}
		{if $pages_nb>$stop+2}
			<li class="truncate">...</li>
			<li><a href="{$link->goPage($requestPage, $pages_nb)}">{$pages_nb|intval}</a></li>
		{/if}
		{if $pages_nb > 1 AND $p != $pages_nb}
			{assign var='p_next' value=$p+1}
			<li id="pagination_next"><a href="{$link->goPage($requestPage, $p_next)}">{l s='Next'}&nbsp;</a></li>
		{else}
			<li id="pagination_next" class="disabled"><span>{l s='Next'}&nbsp;</span></li>
		{/if}
	 </ul>
	{/if}
{/if}
</ul>
<ul id="categorie_product" class="block categorie_product">
	{if isset($products) AND $products}
		 {assign var='liHeight' value=360}
		 {assign var='nbItemsPerLine' value=4}
		 {assign var='nbLi' value=$products|@count}
		 {assign var='nbLines' value=$nbLi/$nbItemsPerLine|ceil}
		 {assign var='ulHeight' value=$nbLines*$liHeight}
	<ul id="path_product">
			{foreach from=$products item=product name=products}
			{assign var='productLink' value=$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)}
			<li class="ajax_block_product {if $smarty.foreach.products.first}first_item{elseif $smarty.foreach.products.last}last_item{else}item{/if} {if $smarty.foreach.products.iteration%$nbItemsPerLine == 0}last_item_of_line{elseif $smarty.foreach.products.iteration%$nbItemsPerLine == 1}first_item_of_line{/if} {if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - ($smarty.foreach.products.total % $nbItemsPerLine))}last_line{/if}">
			  <span class="new">  
              <h3><a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.legend|escape:'htmlall':'UTF-8'}">{$product.name|truncate:30|escape:'htmlall':'UTF-8'}</a><strong>{if $product.new == 1}{l s='new'}{/if}</strong></h3>
			  <p class="pprice">{displayWtPrice p=$product.price}<a href="{$productLink}" title="{l s='View'}">{l s='View'}</a>
			  <b id="categorie_product_view"><a rel="ajax_id_product_{$product.id_product|intval}" href="{$base_dir}cart.php?add&amp;id_product={$product.id_product|intval}&amp;token={$static_token}">{l s='Cart'}</a></b>
			  </p>
              </span>
			  <a href="{$productLink}" title="{$product.legend|escape:htmlall:'UTF-8'}">
			  <img src="{$img_prod_dir}{$product.id_image}-large.jpg" alt="{$product.legend|escape:htmlall:'UTF-8'}" height="210" width="210" /></a>
			 </li>
			 {/foreach}
			</ul>
</ul>
	    {else}
		<p>{l s='No featured products' mod='homefeatured'}</p>
	{/if}
</ul>
{/if}
