<!-- MODULE Send to a friend -->
<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='sendtoafriend'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$productLink}">{l s='Back' mod='sendtoafriend'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}order.php">{l s='Cart' mod='sendtoafriend'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Send to a friend' mod='sendtoafriend'}</span>
	{if $confirm}
		{capture name=confirmation}{$confirm}{/capture}
		{include file=$tpl_dir./confirmation.tpl}
	{else}
	{include file=$tpl_dir./errors.tpl}
	<form method="post" action="{$request_uri}" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">{l s='Send this page to a friend who might be interested in the item below.' mod='sendtoafriend'}</li>
				<li class="textbox">
					<p>
						<a href="{$productLink}"><img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, $ips_img_small)}" alt="{$cover.legend}" /></a>
					</p>
					<span class="header"><a href="{$productLink}">{$product->name}</a></span>
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Friend\'s name' mod='sendtoafriend'}" type="text" id="friend-name" name="name" value="{if isset($smarty.post.name)}{$smarty.post.name|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Friend\'s email' mod='sendtoafriend'}" type="text" id="friend-address" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="button">
					<input type="submit" name="submitAddtoafriend" value="{l s='send' mod='sendtoafriend'}" class="button" />
				</li>
			</ul>
		</fieldset>
	</form>
	{/if}
</div>
<!-- /MODULE Send to a friend -->
