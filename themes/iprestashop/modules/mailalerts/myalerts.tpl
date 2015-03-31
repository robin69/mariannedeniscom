<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='mailalerts'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='mailalerts'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}?browse=1">{l s='Browse' mod='mailalerts'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='My alerts' mod='mailalerts'}</span>

	{include file=$tpl_dir./errors.tpl}

{if $id_customer|intval neq 0}
	{if $alerts}
	<ul class="pageitem">
		{foreach from=$alerts item=product name=i}
		<li class="store">
			<a class="noeffect" href="{$product.link|escape:'htmlall':'UTF-8'}">
				<span class="image" style="background-image: url('{$link->getImageLink($product.link_rewrite, $product.cover, $ips_img_medium)}')"></span>
				<span class="name">{$product.name|truncate:40:'...'|escape:'htmlall':'UTF-8'}</span>
				{if isset($product.attributes_small)}
				<span class="comment">{$product.attributes_small|escape:'htmlall':'UTF-8'}</span>
				{/if}
				<span class="arrow"></span>
			</a>
		</li>
		<li class="textbox error align_center">
			<a class="noeffect" href="{$base_dir_ssl}modules/mailalerts/myalerts.php?action=delete&id_product={$product.id_product}&id_product_attribute={$product.id_product_attribute}">
				<img src="{$img_dir}cancel.png" alt="{l s='delete' mod='mailalerts'}" />
				{l s='Delete' mod='mailalerts'}
			</a>
		</li>
		{*$img_prod_dir}{$product.cover*}
		{/foreach}
	</ul>
	{else}
		{capture name=warning}{l s='You are not subscribed to any alerts.' mod='mailalerts'}{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}
{/if}
</div>
