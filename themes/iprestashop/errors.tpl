{if isset($errors) && $errors}
<ul class="pageitem error">
	<li class="textbox">
		<span class="header">{if $errors|@count > 1}{l s='There are'}{else}{l s='There is'}{/if} {$errors|@count} {if $errors|@count > 1}{l s='errors'}{else}{l s='error'}{/if} :</span>
		<ol>
		{foreach from=$errors key=k item=error}
			<li>{$error}</li>
		{/foreach}
		</ol>
	</li>
	<li class="menu">
		<a href="{$smarty.server.HTTP_REFERER|escape:'htmlall':'UTF-8'}" title="{l s='Back'}">
			<img alt="list" src="{$img_dir}error_back.png" />
			<span class="name">{l s='Back'}</span>
		</a>
	</li>
</ul>
{/if}