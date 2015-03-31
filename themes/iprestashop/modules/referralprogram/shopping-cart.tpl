<!-- MODULE ReferralProgram -->
<ul class="pageitem" id="referralprogram">
	<li class="textbox">
		{l s='You have earned a voucher worth' mod='referralprogram'} <strong class="price">{$discount_display}</strong> {l s='thanks to your sponsor!' mod='referralprogram'}
		<br/>{l s='Enter voucher name' mod='referralprogram'}&nbsp;<strong>{$discount->name}</strong> {l s='to receive the reduction on this order.' mod='referralprogram'}
	</li>
	<li class="menu">
		<a href="{$module_dir}referralprogram-program.php" title="{l s='Referral program' mod='referralprogram'}">
			<img src="{$img_dir}referralprogram.png" alt="{l s='Referral program' mod='referralprogram'}" />
			<span class="name">{l s='Your referral program' mod='referralprogram'}</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<!-- /MODULE ReferralProgram -->
