{if $status == 'ok'}
	<ul class="pageitem">
		<li class="textbox">
			<span class="header">{l s='Your order on' mod='bankwire'} <strong>{$shop_name}</strong> {l s='is complete.' mod='bankwire'}</span>
		</li>
		<li class="textbox">
			{l s='Please send us a bank wire with:' mod='bankwire'}
			<ul>
				<li>{l s='an amount of' mod='bankwire'} <span class="price">{$total_to_pay}</span></li>
				<li>{l s='to the account owner of' mod='bankwire'} <strong>{if $bankwireOwner}{$bankwireOwner}{else}___________{/if}</strong></li>
				<li>{l s='with theses details' mod='bankwire'} <strong>{if $bankwireDetails}{$bankwireDetails}{else}___________{/if}</strong></li>
				<li>{l s='to this bank' mod='bankwire'} <strong>{if $bankwireAddress}{$bankwireAddress}{else}___________{/if}</strong></li>
				<li>{l s='Do not forget to insert your order #' mod='bankwire'} <strong>{$id_order}</strong> {l s='in the subjet of your bank wire' mod='bankwire'}</li>
			</ul>
		</li>
		<li class="textbox">
			{l s='An e-mail has been sent to you with this information.' mod='bankwire'}
			<br /><strong>{l s='Your order will be sent as soon as we receive your settlement.' mod='bankwire'}</strong>
			<br />{l s='For any questions or for further information, please contact our' mod='bankwire'} <a href="{$base_dir_ssl}contact-form.php">{l s='customer support' mod='bankwire'}</a>.
		</li>
	</ul>
{else}
	{capture name=warning}{l s='We noticed a problem with your order. If you think this is an error, you can contact our' mod='bankwire'} <a href="{$base_dir_ssl}contact-form.php">{l s='customer support' mod='cheque'}</a>.{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
