<span class="graytitle">{l s='Order #'}{$order->id|string_format:"%04d"} {l s='placed on'} {dateFormat date=$order->date_add full=0}</span>

{if count($order_history)}
<ul class="pageitem">
	<li class="textbox">
		<span class="header">{l s='Follow your order step by step'}</span>
	</li>
	{foreach from=$order_history item=state name="orderStates"}
	<li class="textbox">
		{dateFormat date=$state.date_add full=1} &raquo; {$state.ostate_name|escape:'htmlall':'UTF-8'}
	</li>
	{/foreach}
</ul>
{/if}

{if $followup}
<ul class="pageitem">
	<li class="menu">
		<a href="{$followup|escape:'htmlall':'UTF-8'}">
			<img src="{$img_dir}tracking.png" alt="{l s='tracking'}" />
			<span class="name">
				{l s='Link to track delivery'}
			</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
{/if}

<ul class="pageitem">
{if $carrier->id}
	<li class="textbox">
		<img src="{$img_ship_dir}{$carrier->id}.jpg" alt="{$carrier->name}" width="26" height="26" />
		{l s='Carrier:'} <strong>{if $carrier->name == "0"}{$shop_name|escape:'htmlall':'UTF-8'}{else}{$carrier->name|escape:'htmlall':'UTF-8'}{/if}</strong>
	</li>
{/if}
	<li class="textbox">
		<img src="{$img_dir}{if $order->module}{$order->module}{else}order{/if}.png" alt="{$order->module}" width="26" height="26" />
		{l s='Payment method:'} <strong>{$order->payment|escape:'htmlall':'UTF-8'}</strong>
	</li>
{if $invoice AND $invoiceAllowed}
	<li class="menu">
		<a href="{$base_dir}pdf-invoice.php?id_order={$order->id|intval}">
			<img src="{$img_dir}pdf.png" alt="{l s='pdf'}" />
			<span class="name">{l s='Your invoice'}</span>
			<span class="arrow"></span>
		</a>
	</li>
{/if}
{if $order->recyclable}
	<li class="textbox">
		<img src="{$img_dir}recyclable.png" alt="" width="32" height="32" class="left" />
		{l s='You received your order in recycled packaging.'}
	</li>
{/if}
{if $order->gift}
	<li class="textbox">
		<img src="{$img_dir}gift.png" alt="" width="32" height="32" class="left" />
		{l s='You requested gift-wrapping for your order.'}
	{if $order->gift_message}
		<br/>&nbsp;<br/><span class="header">{l s='Message:'}</span>
		{$order->gift_message|nl2br}
	{/if}
	</li>
{/if}
</ul>

<ul class="pageitem">
	<li class="textbox">
		<span class="header">{l s='Invoice'}</span>
		<ul class="address">
			{if $address_invoice->company}<li class="address_company">{$address_invoice->company|escape:'htmlall':'UTF-8'}</li>{/if}
			<li class="address_name">{$address_invoice->firstname|escape:'htmlall':'UTF-8'} {$address_invoice->lastname|escape:'htmlall':'UTF-8'}</li>
			<li class="address_address1">{$address_invoice->address1|escape:'htmlall':'UTF-8'}</li>
			{if $address_invoice->address2}<li class="address_address2">{$address_invoice->address2|escape:'htmlall':'UTF-8'}</li>{/if}
			<li class="address_city">{$address_invoice->postcode|escape:'htmlall':'UTF-8'} {$address_invoice->city|escape:'htmlall':'UTF-8'}</li>
			<li class="address_country">{$address_invoice->country|escape:'htmlall':'UTF-8'}{if $invoiceState} - {$invoiceState->name|escape:'htmlall':'UTF-8'}{/if}</li>
			{if $address_invoice->phone}<li class="address_phone">{$address_invoice->phone|escape:'htmlall':'UTF-8'}</li>{/if}
			{if $address_invoice->phone_mobile}<li class="address_phone_mobile">{$address_invoice->phone_mobile|escape:'htmlall':'UTF-8'}</li>{/if}
		</ul>
	</li>
	<li class="textbox">
		<span class="header">{l s='Delivery'}</span>
		<ul class="address">
			{if $address_delivery->company}<li class="address_company">{$address_delivery->company|escape:'htmlall':'UTF-8'}</li>{/if}
			<li class="address_name">{$address_delivery->firstname|escape:'htmlall':'UTF-8'} {$address_delivery->lastname|escape:'htmlall':'UTF-8'}</li>
			<li class="address_address1">{$address_delivery->address1|escape:'htmlall':'UTF-8'}</li>
			{if $address_delivery->address2}<li class="address_address2">{$address_delivery->address2|escape:'htmlall':'UTF-8'}</li>{/if}
			<li class="address_city">{$address_delivery->postcode|escape:'htmlall':'UTF-8'} {$address_delivery->city|escape:'htmlall':'UTF-8'}</li>
			<li class="address_country">{$address_delivery->country|escape:'htmlall':'UTF-8'}{if $deliveryState} - {$deliveryState->name|escape:'htmlall':'UTF-8'}{/if}</li>
			{if $address_delivery->phone}<li class="address_phone">{$address_delivery->phone|escape:'htmlall':'UTF-8'}</li>{/if}
			{if $address_delivery->phone_mobile}<li class="address_phone_mobile">{$address_delivery->phone_mobile|escape:'htmlall':'UTF-8'}</li>{/if}
		</ul>
	</li>
</ul>

<form action="{$base_dir}order-detail.php" method="post" class="std" id="sendOrderMessage">
	<fieldset>
		<ul class="pageitem">
			<li class="textbox">
				<span class="header">{l s='Add a message about your order:'}</span>
				<textarea cols="67" rows="3" name="msgText"></textarea>
			</li>
			<li class="button">
				<input type="submit" class="button" name="submitMessage" value="{l s='Send'}"/>
			</li>
		</ul>
		<input type="hidden" name="id_order" value="{$order->id|intval}" />
	</fieldset>
</form>

{if count($messages)}
<ul class="pageitem">
	<li class="textbox"><span class="header">{l s='Messages'}</span></li>
	{foreach from=$messages item=message name="messageList"}
	<li class="textbox">
		{l s='From:'}
		{if $message.ename}
			{$message.efirstname|escape:'htmlall':'UTF-8'} {$message.elastname|escape:'htmlall':'UTF-8'}
		{elseif $message.clastname}
			{$message.cfirstname|escape:'htmlall':'UTF-8'} {$message.clastname|escape:'htmlall':'UTF-8'}
		{else}
			<b>{$shop_name|escape:'htmlall':'UTF-8'}</b>
		{/if}
		- {dateFormat date=$message.date_add full=1}
		<hr/>
		{$message.message|nl2br}
	</li>
	{/foreach}
</ul>
{/if}

<ul class="pageitem">
	<li class="textbox">{l s='Please connect you to the computer version for more information.'}</li>
</ul>


{*
<form action="{$base_dir_ssl}order-follow.php" method="post">
<div id="order-detail-content" class="table_block">
	<table class="std">
		<thead>
			<tr>
				{if $return_allowed}<th class="first_item"><input type="checkbox" /></th>{/if}
				<th class="{if $return_allowed}item{else}first_item{/if}">{l s='Reference'}</th>
				<th class="item">{l s='Product'}</th>
				<th class="item">{l s='Quantity'}</th>
				<th class="item">{l s='Unit price'}</th>
				<th class="last_item">{l s='Total price'}</th>
			</tr>
		</thead>
		<tfoot>
			{if $priceDisplay}
				<tr class="item">
					<td colspan="{if $return_allowed}6{else}5{/if}">
						{l s='Total products (tax excl.):'} <span class="price">{displayWtPriceWithCurrency price=$order->getTotalProductsWithoutTaxes() currency=$currency convert=0}</span>
					</td>
				</tr>
			{/if}
			<tr class="item">
				<td colspan="{if $return_allowed}6{else}5{/if}">
					{l s='Total products (tax incl.):'} <span class="price">{displayWtPriceWithCurrency price=$order->getTotalProductsWithTaxes() currency=$currency convert=0}</span>
				</td>
			</tr>
			{if $order->total_discounts > 0}
			<tr class="item">
				<td colspan="{if $return_allowed}6{else}5{/if}">
					{l s='Total vouchers:'} <span class="price-discount">{displayWtPriceWithCurrency price=$order->total_discounts currency=$currency convert=1}</span>
				</td>
			</tr>
			{/if}
			{if $order->total_wrapping > 0}
			<tr class="item">
				<td colspan="{if $return_allowed}6{else}5{/if}">
					{l s='Total gift-wrapping:'} <span class="price-wrapping">{displayWtPriceWithCurrency price=$order->total_wrapping currency=$currency convert=0}</span>
				</td>
			</tr>
			{/if}
			<tr class="item">
				<td colspan="{if $return_allowed}6{else}5{/if}">
					{l s='Total shipping (tax incl.):'} <span class="price-shipping">{displayWtPriceWithCurrency price=$order->total_shipping currency=$currency convert=0}</span>
				</td>
			</tr>
			<tr class="item">
				<td colspan="{if $return_allowed}6{else}5{/if}">
					{l s='Total:'} <span class="price">{displayWtPriceWithCurrency price=$order->total_paid currency=$currency convert=0}</span>
				</td>
			</tr>
		</tfoot>
		<tbody>
		{foreach from=$products item=product name=products}
			{if !$product.deleted}
				{assign var='productId' value=$product.product_id}
				{assign var='productAttributeId' value=$product.product_attribute_id}
				{if isset($customizedDatas.$productId.$productAttributeId)}{assign var='productQuantity' value=$product.product_quantity-$product.customizationQuantityTotal}{else}{assign var='productQuantity' value=$product.product_quantity}{/if}
				<!-- Customized products -->
				{if isset($customizedDatas.$productId.$productAttributeId)}
					<tr class="item">
						{if $return_allowed}<td class="order_cb"></td>{/if}
						<td><label for="cb_{$product.id_order_detail|intval}">{if $product.product_reference}{$product.product_reference|escape:'htmlall':'UTF-8'}{else}--{/if}</label></td>
						<td class="bold">
							<label for="cb_{$product.id_order_detail|intval}">{$product.product_name|escape:'htmlall':'UTF-8'}</label>
						</td>
						<td><input class="order_qte_input" name="order_qte_input[{$smarty.foreach.products.index}]" type="text" size="2" value="{$customizationQuantityTotal|intval}" /><label for="cb_{$product.id_order_detail|intval}"><span class="order_qte_span editable">{$product.customizationQuantityTotal|intval}</span></label></td>
						<td><label for="cb_{$product.id_order_detail|intval}">{convertPriceWithCurrency price=$product.product_price_wt currency=$currency convert=0}</label></td>
						<td><label for="cb_{$product.id_order_detail|intval}">{if isset($customizedDatas.$productId.$productAttributeId)}{convertPriceWithCurrency price=$product.total_customization_wt currency=$currency convert=0}{else}{convertPriceWithCurrency price=$product.total_wt currency=$currency convert=0}{/if}</label></td>
					</tr>
					{foreach from=$customizedDatas.$productId.$productAttributeId item='customization' key='customizationId'}
					<tr class="alternate_item">
						{if $return_allowed}<td class="order_cb"><input type="checkbox" id="cb_{$product.id_order_detail|intval}" name="customization_ids[{$product.id_order_detail|intval}][]" value="{$customizationId|intval}" /></td>{/if}
						<td colspan="2">
						{foreach from=$customization.datas key='type' item='datas'}
							{if $type == $CUSTOMIZE_FILE}
							<ul class="customizationUploaded">
								{foreach from=$datas item='data'}
									<li><img src="{$pic_dir}{$data.value}_small" alt="" class="customizationUploaded" /></li>
								{/foreach}
							</ul>
							{elseif $type == $CUSTOMIZE_TEXTFIELD}
							<ul class="typedText">{counter start=0 print=false}
								{foreach from=$datas item='data'}
									<li>{l s='Text #'}{counter}{l s=':'} {$data.value}</li>
								{/foreach}
							</ul>
							{/if}
						{/foreach}
						</td>
						<td>
							<input class="order_qte_input" name="customization_qty_input[{$customizationId|intval}]" type="text" size="2" value="{$customization.quantity|intval}" /><label for="cb_{$product.id_order_detail|intval}"><span class="order_qte_span editable">{$customization.quantity|intval}</span></label>
						</td>
						<td colspan="2"></td>
					</tr>
					{/foreach}
				{/if}
				<!-- Classic products -->
				{if $product.product_quantity > $product.customizationQuantityTotal}
					<tr class="item">
						{if $return_allowed}<td class="order_cb"><input type="checkbox" id="cb_{$product.id_order_detail|intval}" name="ids_order_detail[{$product.id_order_detail|intval}]" value="{$product.id_order_detail|intval}" /></td>{/if}
						<td><label for="cb_{$product.id_order_detail|intval}">{if $product.product_reference}{$product.product_reference|escape:'htmlall':'UTF-8'}{else}--{/if}</label></td>
						<td class="bold">
							<label for="cb_{$product.id_order_detail|intval}">
								{if $product.download_hash && $invoice}
									<a href="{$base_dir}get-file.php?key={$product.filename|escape:'htmlall':'UTF-8'}-{$product.download_hash|escape:'htmlall':'UTF-8'}" title="{l s='download this product'}">
										<img src="{$img_dir}icon/download_product.gif" class="icon" alt="{l s='Download product'}" />
									</a>
									<a href="{$base_dir}get-file.php?key={$product.filename|escape:'htmlall':'UTF-8'}-{$product.download_hash|escape:'htmlall':'UTF-8'}" title="{l s='download this product'}">
										{$product.product_name|escape:'htmlall':'UTF-8'}
									</a>
								{else}
									{$product.product_name|escape:'htmlall':'UTF-8'}
								{/if}
							</label>
						</td>
						<td><input class="order_qte_input" name="order_qte_input[{$product.id_order_detail|intval}]" type="text" size="2" value="{$productQuantity|intval}" /><label for="cb_{$product.id_order_detail|intval}"><span class="order_qte_span editable">{$productQuantity|intval}</span></label></td>
						<td><label for="cb_{$product.id_order_detail|intval}">{convertPriceWithCurrency price=$product.product_price_wt currency=$currency convert=0}</label></td>
						<td><label for="cb_{$product.id_order_detail|intval}">{convertPriceWithCurrency price=$product.total_wt currency=$currency convert=0}</label></td>
					</tr>
				{/if}
			{/if}
		{/foreach}
		{foreach from=$discounts item=discount}
			<tr class="item">
				<td>{$discount.name|escape:'htmlall':'UTF-8'}</td>
				<td>{l s='Voucher:'} {$discount.name|escape:'htmlall':'UTF-8'}</td>
				<td><span class="order_qte_span editable">1</span></td>
				<td>&nbsp;</td>
				<td>{l s='-'}{convertPriceWithCurrency price=$discount.value currency=$currency convert=0}</td>
				{if $return_allowed}
				<td>&nbsp;</td>
				{/if}
			</tr>
		{/foreach}
		</tbody>
	</table>
</div>
{if $return_allowed}
<br />
<p class="bold">{l s='Merchandise return'}</p>
<p>{l s='If you want to return one or several products, please mark the corresponding checkbox(es) and provide an explanation for the return. Then click the button below.'}</p>
<p class="textarea">
	<textarea cols="67" rows="3" name="returnText"></textarea>
</p>
<p class="submit">
	<input type="submit" value="{l s='Make a RMA slip'}" name="submitReturnMerchandise" class="button_large" />
	<input type="hidden" class="hidden" value="{$order->id|intval}" name="id_order" />
</p>
<br />
{/if}
</form>
*}

{include file=$tpl_dir./errors.tpl}
