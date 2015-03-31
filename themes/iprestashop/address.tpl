<script type="text/javascript">
//<![CDATA[
var baseDir = '{$base_dir_ssl}';
idSelectedCountry = {if isset($smarty.post.id_state)}{$smarty.post.id_state|intval}{else}false{/if};
countries = new Array();
{foreach from=$countries item='country'}
	{if isset($country.states)}
		countries[{$country.id_country|intval}] = new Array();
		{foreach from=$country.states item='state' name='states'}
			countries[{$country.id_country|intval}]['{$state.id_state|intval}'] = '{$state.name}';
		{/foreach}
	{/if}
{/foreach}
$(function(){ldelim}
	$('.id_state option[value={if isset($smarty.post.id_state)}{$smarty.post.id_state}{else}{$address->id_state|escape:'htmlall':'UTF-8'}{/if}]').attr('selected', 'selected');
{rdelim});
//]]>
</script>

{*capture name=path}<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Your personal information'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl*}

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		{if isset($back)}
			<a href="{$back}?step=1">{l s='Back'}</a>
		{else}
			<a href="{$base_dir}addresses.php">{l s='Addresses'}</a>
		{/if}
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

{if isset($back)}
	{assign var='current_step' value='address'}
	{include file=$tpl_dir./order-steps.tpl}
{/if}

<div id="content">
	<span class="graytitle">{if isset($id_address)}{l s='Modify address'} {if isset($smarty.post.alias)}"{$smarty.post.alias}"{elseif $address->alias}"{$address->alias|escape:'htmlall':'UTF-8'}"{/if}{else}{l s='Add a new address'}{/if}</span>

	{include file=$tpl_dir./errors.tpl}

	<form action="{$base_dir_ssl}address.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox"><span class="header"><sup>*</sup>{l s='Required field'}</span></li>
				<li class="bigfield required">
					<input placeholder="{l s='Assign an address title'}*" type="text" id="alias" name="alias" value="{if isset($smarty.post.alias)}{$smarty.post.alias}{elseif $address->alias}{$address->alias|escape:'htmlall':'UTF-8'}{elseif isset($select_address)}{else}{l s='My address'}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Company'}" type="text" id="company" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{else}{$address->company|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield required">
					<input placeholder="{l s='First name'}*" type="text" name="firstname" id="firstname" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{else}{$address->firstname|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield required">
					<input placeholder="{l s='Last name'}*" type="text" id="lastname" name="lastname" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{else}{$address->lastname|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield required">
					<input placeholder="{l s='Address'}*" type="text" id="address1" name="address1" value="{if isset($smarty.post.address1)}{$smarty.post.address1}{else}{$address->address1|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Address (2)'}" type="text" id="address2" name="address2" value="{if isset($smarty.post.address2)}{$smarty.post.address2}{else}{$address->address2|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield required">
					<input placeholder="{l s='Zip code'}*" type="text" id="postcode" name="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{else}{$address->postcode|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield required">
					<input placeholder="{l s='City'}*" type="text" name="city" id="city" value="{if isset($smarty.post.city)}{$smarty.post.city}{else}{$address->city|escape:'htmlall':'UTF-8'}{/if}" maxlength="64" />
				</li>
				<li class="select required">
					<select id="id_country" name="id_country">
						<!-- option value="">{l s='Country'}*</option -->
						{$countries_list}
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select required id_state">
					<select name="id_state" id="id_state">
						<option value=""></option>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Home phone'}" type="tel" id="phone" name="phone" value="{if isset($smarty.post.phone)}{$smarty.post.phone}{else}{$address->phone|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Mobile phone'}" type="tel" id="phone_mobile" name="phone_mobile" value="{if isset($smarty.post.phone_mobile)}{$smarty.post.phone_mobile}{else}{$address->phone_mobile|escape:'htmlall':'UTF-8'}{/if}" />
				</li>
				<li class="textbox">
					<label for="other">{l s='Additional information'}</label>
					<textarea id="other" name="other" cols="26" rows="3">{if isset($smarty.post.other)}{$smarty.post.other}{else}{$address->other|escape:'htmlall':'UTF-8'}{/if}</textarea>
				</li>
				<li class="button">
					<input type="hidden" name="token" value="{$token}" />
					{if isset($id_address)}<input type="hidden" name="id_address" value="{$id_address|intval}" />{/if}
					{if isset($back)}<input type="hidden" name="back" value="{$back}?step=1" />{/if}
					{if isset($select_address)}<input type="hidden" name="select_address" value="{$select_address|intval}" />{/if}
					<input type="submit" name="submitAddress" id="submitAddress" value="{l s='Save'}" class="button" />
				</li>
			</ul>
		</fieldset>
	</form>
</div>
