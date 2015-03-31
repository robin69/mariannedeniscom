<!-- MODULE ReferralProgram -->
<span class="graytitle">{l s='Referral program' mod='referralprogram'}</span>
<ul class="pageitem">
	<li class="smallfield">
		<span class="name">{l s='Sponsor mail' mod='referralprogram'}</span>
		<input placeholder="{l s='Sponsor mail' mod='referralprogram'}" type="text" maxlength="128" class="text" id="referralprogram" name="referralprogram" value="{if isset($smarty.post.referralprogram)}{$smarty.post.referralprogram|escape:'htmlall':'UTF-8'}{/if}" />
	</li>
</ul>

<!-- /MODULE ReferralProgram -->
