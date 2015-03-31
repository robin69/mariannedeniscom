{if isset($products)}
	<div id="products-main-list">
		{assign var='prodnbItemsPerLine' value=4}
		<!-- Products list -->
		{foreach from=$products item=product name=products}
			<div class="product {if $smarty.foreach.products.index % 2}alternate_item{else}item{/if} clearfix" {if $smarty.foreach.products.last}style="margin-right:0;"{/if}{if $smarty.foreach.products.iteration%$prodnbItemsPerLine == 0}style="margin-right:0;"{/if}>
				<a href="{$product.link|escape:'htmlall':'UTF-8'}" title="" onfocus="this.blur();">
					<img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home')}" width="203" height="203" alt="{$product.legend|escape:'htmlall':'UTF-8'}" />
					<p>{$product.name|escape:'htmlall':'UTF-8'|truncate:35:'...'}</p>
					<span>[+]</span>
					
					{if $product->on_sale}
						<img src="{$content_dir}themes/prestashop/img/onsale-small.png" alt="{l s='On sale'}" class="on_sale_img_zoom_format"/>
					{/if}
				</a>
			</div>
		{/foreach}
		<!-- /Products list -->
		<div class="clear"></div>
	</div><!-- EOF products-main-list -->
{/if}

