<!-- Module CHEQUE -->
{if $status == 'ok'}
	<ul class="pageitem">
		<li class="textbox">
			<span class="header">{l s='Your order on' mod='cheque'} <strong>{$shop_name}</strong> {l s='is complete.' mod='cheque'}</span>
		</li>
		<li class="textbox">
			{l s='Please send us a cheque with:' mod='cheque'}
			<ul>
				<li>{l s='an amount of' mod='cheque'} <span class="price">{$total_to_pay}</span></li>
				<li>{l s='payable to the order of' mod='cheque'} <strong>{if $chequeName}{$chequeName}{else}___________{/if}</strong></li>
				<li>{l s='mail to' mod='cheque'} <strong>{if $chequeAddress}{$chequeAddress}{else}___________{/if}</strong></li>
			</ul>
		</li>
		<li class="textbox">
			{l s='An e-mail has been sent to you with this information.' mod='cheque'}
			<br /><strong>{l s='Your order will be sent as soon as we receive your payment.' mod='cheque'}</strong>
			<br />{l s='For any questions or for further information, please contact our' mod='cheque'} <a href="{$base_dir_ssl}contact-form.php">{l s='customer support' mod='cheque'}</a>.
		</li>
	</ul>
{else}
	{capture name=warning}{l s='We noticed a problem with your order. If you think this is an error, you can contact our' mod='cheque'} <a href="{$base_dir_ssl}contact-form.php">{l s='customer support' mod='cheque'}</a>.{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /Module CHEQUE -->
