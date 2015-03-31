<p class="payment_module">
	<a href="{if isset($notcashpbx_link) && $notcashpbx_link !='' }{$notcashpbx_link}{else}{$cashpbx_link}{/if}" title="{l s='Pay with Paybox' mod='paybox'}">
		<img src="{$base_dir}modules/paybox/{$pbx_picture}.jpg" alt="{l s='Pay with Paybox' mod='paybox'}" />
		{$pbx_text}
	</a>
</p>
