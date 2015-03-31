<div class="div_categorie_product">
 <h2 class="category_title">
 {l s='New products'}  
{if $products}
	{include file=$tpl_dir./product-sort.tpl}
{/if}
</h2>
<ul id="categorie_product" class="block categorie_product">
	{if isset($products) AND $products}
		 {assign var='liHeight' value=360}
		 {assign var='nbItemsPerLine' value=4}
		 {assign var='nbLi' value=$products|@count}
		 {assign var='nbLines' value=$nbLi/$nbItemsPerLine|ceil}
		 {assign var='ulHeight' value=$nbLines*$liHeight}
 	<ul  id="path_product">
			{foreach from=$products item=product name=products}
			{assign var='productLink' value=$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)}
			<li class="ajax_block_product {if $smarty.foreach.products.first}first_item{elseif $smarty.foreach.products.last}last_item{else}item{/if} {if $smarty.foreach.products.iteration%$nbItemsPerLine == 0}last_item_of_line{elseif $smarty.foreach.products.iteration%$nbItemsPerLine == 1}first_item_of_line{/if} {if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - ($smarty.foreach.products.total % $nbItemsPerLine))}last_line{/if}">
          {if $product.on_sale}
		  <p class="on_sale"><strong>{l s='On sale!'}</strong></p>
		  {elseif ($product.reduction_price != 0 || $product.reduction_percent != 0) && ($product.reduction_from == $product.reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product.reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product.reduction_from))}
		  <p class="on_sale"><strong>{l s='Price lowered!'}</strong></p>
          {/if}
          <p class="new_product">{if $product.new == 1}<strong>{l s='new'}{/if}</strong></p>
			  <a href="{$productLink}" title="{$product.legend|escape:htmlall:'UTF-8'}">
			  <img src="{$img_prod_dir}{$product.id_image}-large.jpg" alt="{$product.legend|escape:htmlall:'UTF-8'}" height="210" width="210" /></a>
              <h3>
              <a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.legend|escape:'htmlall':'UTF-8'}">{$product.name|truncate:30|escape:'htmlall':'UTF-8'}</a>
              </h3>
			  <p class="pprice">{displayWtPrice p=$product.price}<a href="{$productLink}" title="{l s='View'}">{l s='View'}</a>
			  <b id="categorie_product_view"><a rel="ajax_id_product_{$product.id_product|intval}" href="{$base_dir}cart.php?add&amp;id_product={$product.id_product|intval}&amp;token={$static_token}">{l s='Cart'}</a></b>
			  </p>
			 </li>
			 {/foreach}
			</ul>
	    {else}
		<p>{l s='No New products'}</p>
	{/if}
</ul>
	<!-- Pagination -->
	{include file=$tpl_dir./pagination.tpl}

<!-- /MODULE Home Featured Products -->
</div>
