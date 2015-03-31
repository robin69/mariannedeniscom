{if $products}

<ul class="pageitem">
	<li class="menu">
		<a href="javascript:WishlistVisibility('wlp_bought', 'BoughtProducts');" id="showBoughtProducts" class="button_account_large">
			<span class="name">{l s='Show products' mod='blockwishlist'}</span>
			<span class="arrow"></span>
		</a>
		<a href="javascript:WishlistVisibility('wlp_bought', 'BoughtProducts');" id="hideBoughtProducts" class="button_account_large">
			<span class="name">{l s='Hide products' mod='blockwishlist'}</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>

<div class="wlp_bought hidden">
	{foreach from=$products item=product name=i}
	<form id="wlp_{$product.id_product|intval}_{$product.id_product_attribute|intval}" action="{$base_dir}cart.php" method="post" class="{if $smarty.foreach.i.last}last_item{elseif $smarty.foreach.i.first}first_item{/if} {if $smarty.foreach.i.index % 2}alternate_item{else}item{/if}">
		<fieldset>
			<ul class="pageitem">
				<li class="store">
					<a href="{$link->getProductlink($product.id_product, $product.link_rewrite, $product.category_rewrite)}" title="{$product.name|escape:'htmlall':'UTF-8'}">
						<span class="image" style="background-image: url('{$link->getImageLink($product.link_rewrite, $product.cover, $ips_img_medium)}')"></span>
						<span class="name">{$product.name|truncate:30:'...'|escape:'htmlall':'UTF-8'}</span>
						<span class="comment">
							{l s='Priority:' mod='blockwishlist'}
							{if $product.priority eq 0}
							<span class="priority_high">{l s='High' mod='blockwishlist'}</span>
							{elseif $product.priority eq 1}
							<span class="priority_medium">{l s='Medium' mod='blockwishlist'}</span>
							{else}
							<span class="priority_low">{l s='Low' mod='blockwishlist'}</span>
							{/if}
						</span>
						<span class="comment">
							<p>
						{if isset($product.attributes_small)}
							{$product.attributes_small|escape:'htmlall':'UTF-8'}
						{/if}
							</p>
						</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="smallfield">
					<span class="name">{l s='Quantity:' mod='blockwishlist'}</span>
					<input placeholder="" type="text" id="quantity_{$product.id_product}_{$product.id_product_attribute}" value="{$product.quantity|intval}" />
				</li>
				<li class="select">
					<select id="priority_{$product.id_product}_{$product.id_product_attribute}">
						<option value=""{if $product.priority < 0} selected="selected"{/if}>{l s='Priority' mod='blockwishlist'}</option>
						<option value="0"{if $product.priority eq 0} selected="selected"{/if}>{l s='High' mod='blockwishlist'}</option>
						<option value="1"{if $product.priority eq 1} selected="selected"{/if}>{l s='Medium' mod='blockwishlist'}</option>
						<option value="2"{if $product.priority eq 2} selected="selected"{/if}>{l s='Low' mod='blockwishlist'}</option>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="menu">
					<a title="{l s='delete' mod='blockwishlist'}" class="button" href="javascript:WishlistProductManage('wlp_bought', 'delete', '{$id_wishlist}', '{$product.id_product}', '{$product.id_product_attribute}', $('#quantity_{$product.id_product}_{$product.id_product_attribute}').val(), $('#priority_{$product.id_product}_{$product.id_product_attribute}').val());">
						<img src="{$img_dir}delete.png" alt="{l s='delete' mod='blockwishlist'}" />
						<span class="name">{l s='Delete' mod='blockwishlist'}</span>
					</a>
				</li>
				<li class="menu">
					<a title="{l s='save' mod='blockwishlist'}" class="exclusive" href="javascript:WishlistProductManage('wlp_bought_{$product.id_product_attribute}', 'update', '{$id_wishlist}', '{$product.id_product}', '{$product.id_product_attribute}', $('#quantity_{$product.id_product}_{$product.id_product_attribute}').val(), $('#priority_{$product.id_product}_{$product.id_product_attribute}').val());">
						<img src="{$img_dir}save.png" alt="{l s='save' mod='blockwishlist'}" />
						<span class="name">{l s='Save' mod='blockwishlist'}</span>
						<span class="arrow"></span>
					</a>
				</li>
			</ul>
		</fieldset>
	</form>
	{/foreach}
</div>


{if count($productsBoughts)}
<ul class="pageitem">
	<li class="menu">
		<a href="javascript:;" id="showBoughtProductsInfos" class="button_account_large"  onclick="WishlistVisibility('wlp_bought_infos', 'BoughtProductsInfos');">
			<span class="name">{l s='Bought product\'s infos' mod='blockwishlist'}</span>
			<span class="arrow"></span>
		</a>
		<a href="javascript:;" id="hideBoughtProductsInfos" class="button_account_large" onclick="WishlistVisibility('wlp_bought_infos', 'BoughtProductsInfos');">
			<span class="name">{l s='Hide product\'s infos' mod='blockwishlist'}</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<ul class="pageitem hidden wlp_bought_infos">
{foreach from=$productsBoughts item=product name=i}
	{foreach from=$product.bought item=bought name=j}
		{*if $bought.quantity > 0*}
	<li class="store">
		<a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category_rewrite)}" title="{$product.name|escape:'htmlall':'UTF-8'}">
			<span class="image" style="background-image: url('{$link->getImageLink($product.link_rewrite, $product.cover, $ips_img_medium)}')"></span>
			<span class="name">{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</span>
			<span class="comment">
				{l s='Quantity:' mod='blockwishlist'} {$bought.quantity|intval}
			</span>
			<span class="comment">
				<p>
			{if isset($product.attributes_small)}
				{$product.attributes_small|escape:'htmlall':'UTF-8'}
			{/if}
				</p>
			</span>
			<span class="arrow"></span>
		</a>
	</li>
	<li class="textbox">
		{l s='Offered by:' mod='blockwishlist'} {$bought.firstname} {$bought.lastname}
		<br/>{l s='Date:' mod='blockwishlist'} {$bought.date_add|date_format:"%Y-%m-%d"}
	</li>
		{*/if*}
	{/foreach}
{/foreach}
</ul>
{/if}

<ul class="pageitem">
	<li class="menu">
		<a href="javascript:;" id="showSendWishlist" class="button_account" onclick="WishlistVisibility('wl_send', 'SendWishlist');">
			<span class="name">{l s='Send this wishlist' mod='blockwishlist'}</span>
			<span class="arrow"></span>
		</a>
		<a href="javascript:;" id="hideSendWishlist" class="button_account" onclick="WishlistVisibility('wl_send', 'SendWishlist');">
			<span class="name">{l s='Hide form' mod='blockwishlist'}</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<form class="wl_send std hidden" method="post" onsubmit="return (false);">
	<fieldset>
		<ul class="pageitem required">
			<li class="bigfield">
				<input placeholder="{l s='Email' mod='blockwishlist'} 1 *" type="text" name="email1" id="email1" />
			</li>
			{section name=i loop=6 start=2}
			<li class="bigfield">
				<input placeholder="{l s='Email' mod='blockwishlist'} {$smarty.section.i.index}" type="text" name="email{$smarty.section.i.index}" id="email{$smarty.section.i.index}" />
			</li>
			{/section}
			<li class="button">
				<input class="button" type="submit" value="{l s='Send' mod='blockwishlist'}" name="submitWishlist" onclick="WishlistSend('wl_send', '{$id_wishlist}', 'email');" />
			</li>
			<li class="textbox required">
				<sup>*</sup>
				{l s='Required field' mod='blockwishlist'}
			</li>
		</ul>
	</fieldset>
</form>

{else}
	{capture name=warning}{l s='No products' mod='blockwishlist'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
