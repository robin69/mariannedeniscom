<!-- MODULE MailAlerts -->
{if $email}
	<input type="text" id="oos_customer_email" name="customer_email" size="20" value="your@email.com" class="mailalerts_oos_email" onclick="clearText();" /><br />
{/if}
<div id="mailalert_link">
	<img src="{$img_dir}mailalerts.png" alt="{l s='alert' mod='mailalerts'}" />
	<a class="noeffect" href="#" onclick="return addNotification();">
		<span class="name">{l s='Notify me when available' mod='mailalerts'}</span>
		<span class="arrow"></span>
	</a>
</div>

<script type="text/javascript">
oosHookJsCodeFunctions.push('oosHookJsCodeMailAlert');

function clearText()
{ldelim}
	if ($('#oos_customer_email').val() == 'your@email.com')
		$('#oos_customer_email').val('');
{rdelim}

function oosHookJsCodeMailAlert()
{ldelim}
	$.ajax({ldelim}
		type: 'POST',
		url: '{$module_dir}mailalerts-ajax_check.php',
		data: 'id_product={$id_product}&id_product_attribute='+$('#idCombination').val(),
		success: function (msg)
		{ldelim}
			if (msg == '0')
			{ldelim}
				$('#mailalert_link').show().find('a').attr('href', '{$module_dir}mailalerts-add.php?id_product={$id_product}&id_product_attribute='+$('#idCombination').val());
				$('#oos_customer_email').show();
			{rdelim}
			else
			{ldelim}
				$('#mailalert_link').hide();
				$('#oos_customer_email').hide();
			{rdelim}
		{rdelim}
	{rdelim});
{rdelim}

function addNotification()
{ldelim}
	$.ajax({ldelim}
		type: 'POST',
		url: '{$module_dir}mailalerts-ajax_add.php',
		data: 'id_product={$id_product}&id_product_attribute='+$('#idCombination').val()+'&customer_email='+$('#oos_customer_email').val()+'',
		success: function (msg)
		{ldelim}
			if (msg == '1')
			{ldelim}
				$('#mailalert_link').hide();
				$('#oos_customer_email').hide();
			{rdelim}
		{rdelim}
	{rdelim});
	return false;
{rdelim}
</script>
<!-- END : MODULE MailAlerts -->