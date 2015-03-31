
{if !$content_only}
	{capture name=path}{l s=$cms->meta_title}{/capture}
	{include file=$tpl_dir./breadcrumb.tpl}
{/if}
{if $cms}
	<div class="rte{if $content_only} content_only{/if}">
		{$cms->content}
		{if $cms->id == 8}{$HOOK_NEWSLETTER}{/if}
	</div>
{else}
	{l s='This page does not exist.'}
{/if}
<br />