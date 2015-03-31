<script type="text/javascript" src="{$base_dir}js/jquery/jquery.scrollto.js"></script>
<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='blockwishlist'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='blockwishlist'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}index.php?browse=1">{l s='Browse' mod='blockwishlist'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Wishlist' mod='blockwishlist'}</span>

	{include file=$tpl_dir./errors.tpl}

{if $id_customer|intval neq 0}
	<form action="{$base_dir_ssl}modules/blockwishlist/mywishlist.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header">
						<img src="{$img_dir}wishlist_add.png" alt="{l s='add' mod='blockwishlist'}" />
						{l s='Create a new wishlist' mod='blockwishlist'}
					</span>
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Name' mod='blockwishlist'}" type="text" id="name" name="name" value="{if isset($smarty.post.name) and $errors|@count > 0}{$smarty.post.name|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="button">
					<input type="hidden" name="token" value="{$token|escape:'htmlall':'UTF-8'}" />
					<input type="submit" name="submitWishlist" id="submitWishlist" value="{l s='Save' mod='blockwishlist'}" />
				</li>
			</ul>
		</fieldset>
	</form>

	{if $wishlists}
	<span class="graytitle">{l s='My wishlists' mod='blockwishlist'}</span>

	{section name=i loop=$wishlists}
	<ul class="pageitem" id="wishlist_{$wishlists[i].id_wishlist|intval}">
		<li class="menu">
			<a class="noeffect" href="#block-order-detail" onclick="WishlistManage('block-order-detail', '{$wishlists[i].id_wishlist|intval}');">
				<span class="name">{$wishlists[i].name|truncate:30:'...'|escape:'htmlall':'UTF-8'}</span>
				<span class="comment">
					{assign var=n value=0}
					{foreach from=$nbProducts item=nb name=i}
						{if $nb.id_wishlist eq $wishlists[i].id_wishlist}
							{assign var=n value=$nb.nbProducts|intval}
						{/if}
					{/foreach}
					{if $n > 1}
						{$n|intval} {l s='products' mod='blockwishlist'}
					{elseif $n == 1}
						{l s='1 product' mod='blockwishlist'}
					{else}
						{l s='none product' mod='blockwishlist'}
					{/if}
				</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a href="{$base_dir_ssl}modules/blockwishlist/view.php?token={$wishlists[i].token|escape:'htmlall':'UTF-8'}">
				<img src="{$img_dir}wishlist.png" alt="{l s='view' mod='blockwishlist'}" />
				<span class="name">{l s='View direct link' mod='blockwishlist'}</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a class="noeffect" href="javascript:;" onclick="return(WishlistDelete('wishlist_{$wishlists[i].id_wishlist|intval}', '{$wishlists[i].id_wishlist|intval}', '{l s='Do you really want to delete this wishlist ?' mod='blockwishlist' js=1}'));">
				<img src="{$img_dir}wishlist_delete.png" alt="{l s='delete' mod='blockwishlist'}" />
				<span class="name">{l s='Delete' mod='blockwishlist'}</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="textbox">
			<p>
				{l s='Viewed' mod='blockwishlist'}
				{if $wishlists[i].counter > 1}
					{$wishlists[i].counter|intval} {l s='times.' mod='blockwishlist'}
				{else}
					{$wishlists[i].counter|intval} {l s='time.' mod='blockwishlist'}
				{/if}
				<br/>{l s='Created on' mod='blockwishlist'} {$wishlists[i].date_add|date_format:"%Y-%m-%d"}.
			</p>
		</li>
	</ul>
	{/section}
	<div id="block-order-detail">&nbsp;</div>
	{/if}
{/if}

</div>
