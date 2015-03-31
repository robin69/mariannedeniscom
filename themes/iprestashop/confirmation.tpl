{if isset($smarty.capture.confirmation)}{assign var='confirmation' value=$smarty.capture.confirmation}{/if}
{if isset($confirmation) && $confirmation}
<ul class="pageitem success">
	<li class="textbox">
		{$confirmation}
	</li>
</ul>
{/if}