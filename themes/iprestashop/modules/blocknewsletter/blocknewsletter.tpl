<!-- Block Newsletter module-->
<form action="{$base_dir}?browse=1" method="post">
	<fieldset>
		<span class="graytitle">{l s='Newsletter' mod='blocknewsletter'}</span>
		{if $msg}
			{if $nw_error}
				{capture name=warning}{$msg}{/capture}
				{include file=$tpl_dir./warning.tpl}
			{else}
				{capture name=confirmation}{$msg}{/capture}
				{include file=$tpl_dir./confirmation.tpl}
			{/if}
		{/if}
		<ul class="pageitem">
			<li class="bigfield">
				<input placeholder="{l s='your e-mail' mod='blocknewsletter'}" type="text" name="email" value="{if $value}{$value}{/if}" />
			</li>
			<li class="select">
				<select name="action">
					<option value="0"{if $action == 0} selected="selected"{/if}>{l s='Subscribe' mod='blocknewsletter'}</option>
					<option value="1"{if $action == 1} selected="selected"{/if}>{l s='Unsubscribe' mod='blocknewsletter'}</option>
				</select>
				<span class="arrow"></span>
			</li>
			<li class="button">
				<input type="submit" value="{l s='ok'}" class="button_mini" name="submitNewsletter" />
			</li>
		</ul>
	</fieldset>
</form>
<!-- /Block Newsletter module-->
