<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='bankwire'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse' mod='bankwire'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='bankwire'}</a>
	</div>
</div>

{assign var='current_step' value='payment'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">

{if $nbProducts <= 0}
	{capture name=warning}{l s='Your shopping cart is empty.' mod='bankwire'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{else}

	<span class="graytitle">{l s='Bank wire payment' mod='bankwire'}</span>

	<form action="{$this_path_ssl}validation.php" method="post" id="paymentForm">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<img src="{$img_dir}bankwire.png" alt="{l s='bank wire' mod='bankwire'}" style="float:left; margin: 0px 10px 5px 0px;" />
					{l s='You have chosen to pay by bank wire.' mod='bankwire'}
				</li>
				<li class="textbox">
					{l s='The total amount of your order is' mod='bankwire'}
					<strong>
						{if $currencies|@count > 1}
							{foreach from=$currencies item=currency}
								<span id="amount_{$currency.id_currency}" class="price" style="display:none;">{convertPriceWithCurrency price=$total currency=$currency}</span>
							{/foreach}
						{else}
							<span id="amount_{$currencies.0.id_currency}" class="price">{convertPriceWithCurrency price=$total currency=$currencies.0}</span>
						{/if}
						{l s='(tax incl.)' mod='bankwire'}
					</strong>
				</li>
	{if $currencies|@count > 1}
				<li class="textbox">
					{l s='We accept several currencies to be sent by bank wire.' mod='bankwire'}
					<br />{l s='Choose one of the following:' mod='bankwire'}
				</li>
				<li class="select">
					<select id="currency_payement" name="currency_payement" onchange="showElemFromSelect('currency_payement', 'amount_')">
					{foreach from=$currencies item=currency}
						<option value="{$currency.id_currency}" {if $currency.id_currency == $cust_currency}selected="selected"{/if}>{$currency.name}</option>
					{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				<script language="javascript">showElemFromSelect('currency_payement', 'amount_');</script>
	{else}
				<li class="textbox">
					{l s='We accept the following currency to be sent by bank wire:' mod='bankwire'}&nbsp;<strong>{$currencies.0.name}</strong>
					<input type="hidden" name="currency_payement" value="{$currencies.0.id_currency}">
				</li>
	{/if}
				<li class="textbox">
					{l s='Bank wire account information will be displayed on the next page.' mod='bankwire'}
				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<a href="javascript:$('#paymentForm').submit()" title="{l s='Next' mod='bankwire'}">
						<img alt="{l s='next' mod='bankwire'}" src="{$img_dir}cart_ok.png" />
						<span class="name">{l s='I confirm my order' mod='bankwire'}</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="{$base_dir_ssl}order.php?step=3" title="{l s='previous' mod='bankwire'}">
						<img alt="{l s='previous' mod='bankwire'}" src="{$img_dir}back.png" />
						<span class="name">{l s='Other payment methods' mod='bankwire'}</span>
					</a>
				</li>
			</ul>

		</fieldset>
</form>
{/if}