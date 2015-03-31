<!-- Module : Send to my friend -->

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='sendtomyfriend'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$productLink}">{l s='Back' mod='sendtomyfriend'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}order.php">{l s='Cart' mod='sendtomyfriend'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Send to my friends' mod='sendtomyfriend'}</span>
	{if $confirm}
		{capture name=confirmation}{$confirm}{/capture}
		{include file=$tpl_dir./confirmation.tpl}
	{else}
	{include file=$tpl_dir./errors.tpl}
	<form method="post" action="{$request_uri}" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">{l s='Send this page to friends who might be interested in the item below.' mod='sendtomyfriend'}</li>
				<li class="textbox">
					<p>
						<a href="{$productLink}"><img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, $ips_img_medium)}" alt="{$product->legend}" /></a>
					</p>
					<span class="header"><a href="{$productLink}">{$product->name}</a></span>
					<div class="rte">{$product->description_short}</div>
				</li>
				{if $logged == true}
				<input type="hidden" name="yname" value="{$customerName}" />
				<input type="hidden" name="yemail" value="{$customerEmail}" />
				{else}
				<li class="bigfield required">
					<input placeholder="{l s='Your name*' mod='sendtomyfriend'}" type="text" id="your-name" name="yname" value="{if isset($smarty.post.yname)}{$smarty.post.yname}{/if}" />
				</li>
				<li class="bigfield required">
					<input placeholder="{l s='Your email*' mod='sendtomyfriend'}" type="text" id="your-address" name="yemail" value="{if isset($smarty.post.yemail)}{$smarty.post.yemail|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				{/if }
				<li class="bigfield">
					<input placeholder="{l s='Friend\'s name*' mod='sendtomyfriend'}" type="text" id="friend-name" name="name" value="{if isset($smarty.post.name)}{$smarty.post.name|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Friend\'s email*' mod='sendtomyfriend'}" type="text" id="friend-address" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Carbon copy mail' mod='sendtomyfriend'}" type="text" id="friend_cc-address" name="emailcc" value="{if isset($smarty.post.emailcc)}{$smarty.post.emailcc|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="textbox">
					<span class="header">{l s='Message:' mod='sendtomyfriend'}</span>
					<textarea id="message" name="message" rows="5" cols="35">{if isset($smarty.post.message)}{$smarty.post.message|escape:'htmlall'|stripslashes}{/if}</textarea>
				</li>
				{if $history}
				<li class="checkbox">
					{if isset($smarty.post.history_sent)}<span class="check">{/if}
						<span class="name">{l s='News from this shop' mod='sendtomyfriend'}</span>
						<input type="checkbox" id="history_sent" name="history_sent" {if isset($smarty.post.history_sent)}checked="checked"{/if} />
					{if isset($smarty.post.history_sent)}</span>{/if}
				</li>
				{/if}
				<li class="button">
					<input type="submit" name="submitAddtomyfriend" value="{l s='Send this product' mod='sendtomyfriend'}" class="button" />
				</li>
			</ul>
		</fieldset>
	</form>
	{/if}
</div>
<!-- /Module : Send to my friend -->
