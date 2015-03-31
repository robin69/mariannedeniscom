<!-- Block currencies module -->
<span class="graytitle">{l s='Currencies' mod='blockcurrencies'}</span>
<form id="setCurrency" action="{$request_uri}" method="post">
	<ul class="pageitem">
		{foreach from=$currencies key=k item=f_currency}
		<li class="menu">
			<a class="noeffect" href="javascript:setCurrency({$f_currency.id_currency});">
				<img src="{$ips_currency_dir}{$f_currency.iso_code|lower}.png" alt="{$f_currency.name}" />
				<span class="name">{$f_currency.sign} {$f_currency.name}</span>
				{if $id_currency_cookie != $f_currency.id_currency}<span class="arrow"></span>{/if}
			</a>
		</li>
		{/foreach}
	</ul>
	<input type="hidden" name="id_currency" id="id_currency" value=""/>
	<input type="hidden" name="SubmitCurrency" value="" />
</form>
<script type="text/javascript">
	function setCurrency(id) {ldelim}
		$('form#setCurrency input#id_currency').val(id);
		$('form#setCurrency').submit();
	{rdelim}
</script>
<!-- /Block currencies module -->
