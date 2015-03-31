{if isset($errors) && $errors}
	<div class="error">
		<img src="{$content_dir}themes/prestashop/img/icon/warning.png" width="40" height="38" alt="" />
		<ul>
		{foreach from=$errors key=k item=error}
			<li>{$error}</li>
		{/foreach}
		</ul>
		<p><a href="{$smarty.server.HTTP_REFERER|escape:'htmlall':'UTF-8'|secureReferrer}" class="button_small" title="{l s='Back'}">&laquo; {l s='Back'}</a></p>
		<div class="clear"></div>
	</div>
{/if}
