{if isset($smarty.capture.warning)}{assign var='warning' value=$smarty.capture.warning}{/if}
{if isset($warning) && $warning}
<ul class="pageitem warning">
	<li class="textbox">
		{$warning}
	</li>
</ul>
{/if}
