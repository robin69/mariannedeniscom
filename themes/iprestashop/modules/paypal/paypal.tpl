<!-- Module PAYPAL -->
<li class="menu payment_module">
	<a class="noeffect" href="javascript:$('#paypal_form').submit();" title="{l s='Pay with PayPal' mod='paypal'}">
		<img src="{$img_dir}paypal_big.png" alt="{l s='paypal' mod='paypal'}" />
		<span class="name">{l s='Pay with PayPal' mod='paypal'}</span>
		<span class="arrow"></span>
	</a>
</li>
{* URL FOR DISPLAY MOBILE VERSION OF PAYPAL $paypalUrl|replace:'www.paypal.com':'mobile.paypal.com'*}
<form action="{$paypalUrl}" method="post" id="paypal_form" class="hidden">
	<input type="hidden" name="upload" value="1" />
	<input type="hidden" name="first_name" value="{$address->firstname}" />
	<input type="hidden" name="last_name" value="{$address->lastname}" />
	<input type="hidden" name="address1" value="{$address->address1}" />
	{if !empty($address->address2)}<input type="hidden" name="address2" value="{$address->address2}" />{/if}
	<input type="hidden" name="city" value="{$address->city}" />
	<input type="hidden" name="zip" value="{$address->postcode}" />
	<input type="hidden" name="country" value="{$country->iso_code}" />
	<input type="hidden" name="amount" value="{$amount}" />
	<input type="hidden" name="email" value="{$customer->email}" />
{if !$discounts}
	<input type="hidden" name="shipping_1" value="{$shipping}" />
	{counter assign=i}
	{foreach from=$products item=product}
	<input type="hidden" name="item_name_{$i}" value="{$product.name}{if isset($product.attributes)} - {$product.attributes}{/if}" />
	<input type="hidden" name="amount_{$i}" value="{$product.paypalAmount}" />
	<input type="hidden" name="quantity_{$i}" value="{$product.quantity}" />
	{counter print=false}
	{/foreach}
{else}
	<input type="hidden" name="item_name_1" value="{l s='My cart' mod='paypal'}" />
	<input type="hidden" name="amount_1" value="{$total}" />
	<input type="hidden" name="quantity_1" value="1" />
{/if}
	<input type="hidden" name="business" value="{$business}" />
	<input type="hidden" name="receiver_email" value="{$business}" />
	<input type="hidden" name="cmd" value="_cart" />
	<input type="hidden" name="charset" value="utf-8" />
	<input type="hidden" name="currency_code" value="{$currency->iso_code}" />
	<input type="hidden" name="payer_id" value="{$customer->id}" />
	<input type="hidden" name="payer_email" value="{$customer->email}" />
	<input type="hidden" name="custom" value="{$id_cart}" />
	<input type="hidden" name="return" value="{$goBackUrl}" />
	<input type="hidden" name="cancel_return" value="{$cancelUrl}" />
	<input type="hidden" name="notify_url" value="{$notify}" />
	{if $header}<input type="hidden" name="cpp_header_image" value="{$header}" />{/if}
    <input type="hidden" name="rm" value="2" />
	<input type="hidden" name="bn" value="PRESTASHOP_WPS" />
	<input type="hidden" name="cbt" value="{l s='Return to' mod='paypal'} {$meta_title}" />
</form>
<!-- /Module PAYPAL -->
