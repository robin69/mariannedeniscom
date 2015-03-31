<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?config=1">{l s='Config'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}my-account.php" class="noeffect">{l s='My account'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Contact us'}</span>

{if isset($confirmation)}
	{capture name=confirmation}{l s='Your message has been successfully sent to our team.'}{/capture}
	{include file=$tpl_dir./confirmation.tpl}
{else}

{include file=$tpl_dir./errors.tpl}

{if isset($ips_contact) && $ips_contact}{$ips_contact}{/if}

<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post" class="std">
	<fieldset>
		<ul class="pageitem">
			<li class="textbox">
				<span class="header">{l s='Use this form for questions about an order or for information about our products.'}</span>
			</li>
			<li class="select">
				<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
					<option value="0">{l s='Subject'}</option>
				{foreach from=$contacts item=contact}
					<option value="{$contact.id_contact|intval}" {if isset($smarty.post.id_contact) && $smarty.post.id_contact == $contact.id_contact}selected="selected"{/if}>{$contact.name|escape:'htmlall':'UTF-8'}</option>
				{/foreach}
				</select>
				<span class="arrow"></span>
			</li>
			<li class="textbox">
				<p id="desc_contact0" class="desc_contact">&nbsp;</p>
			{foreach from=$contacts item=contact}
				<p id="desc_contact{$contact.id_contact|intval}" class="desc_contact" style="display:none;">{$contact.description|escape:'htmlall':'UTF-8'}</p>
			{/foreach}
			</li>
			<li class="smallfield">
				<span class="name">{l s='E-mail address'}</span>
				<input placeholder="" type="text" id="email" name="from" value="{$email}" />
			</li>
			<li class="textbox">
				<p>{l s='Message'}</p>
				 <textarea id="message" name="message" rows="7" cols="35">{if isset($smarty.post.message)}{$smarty.post.message|escape:'htmlall':'UTF-8'|stripslashes}{/if}</textarea>
			</li>
			<li class="button">
				<input type="submit" name="submitMessage" id="submitMessage" value="{l s='Send'}" class="button_large" />
			</li>
		</ul>
	</fieldset>
</form>
{/if}
</div>
