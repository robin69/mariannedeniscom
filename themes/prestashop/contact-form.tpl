{capture name=path}{l s='Contact'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2 class="page_title_h2">{l s='Contact us'}</h2>

<div class="my-account-container">

{if isset($confirmation)}
	<p>{l s='Your message has been successfully sent to our team.'}</p>
	<br /><br />
	<a href="{$base_dir_ssl}" title="Accueil"><img src="{$img_dir}icon/icon-home.jpg" alt="{l s='Home'}" class="icon" /> Retour accueil</a>
{else}
	<p><strong>N'h&eacute;sitez pas &agrave; nous contacter via le formulaire ci-dessous</strong> pour toute question ou information sur notre catalogue, nos collections, le suivi de vos commandes, les cr&eacute;ations sur mesure, la distribution des bijoux Marianne Denis dans votre boutique ou tout autre motif.</p>
	<br />
	<p>Nous prendrons contact avec vous dans les meilleurs d&eacute;lais.</p>
	<br /><br />
	{include file=$tpl_dir./errors.tpl}
	<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post" class="std">
		<fieldset class="account_creation">
			<h3>{l s='Send a message'}</h3>
		
		<p class="radio required">
			<span>Civilit&eacute;</span>
			<input type="radio" name="id_gender" id="id_gender2" value="2" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 2}checked="checked"{/if} />
			<label for="id_gender2" class="top">Mme</label>
			<input type="radio" name="id_gender" id="id_gender3" value="3" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 3}checked="checked"{/if} />
			<label for="id_gender3" class="top">Mlle</label>
			<input type="radio" name="id_gender" id="id_gender1" value="1" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 1}checked="checked"{/if} />
			<label for="id_gender1" class="top">M.</label>
		</p>
		
		<p class="text">
			<label for="prenom">Votre pr&eacute;nom</label>
			<input type="text" id="prenom" name="prenom" value="{$prenom}" />
		</p>
		
		<p class="text">
			<label for="nom">{l s='Votre nom'}</label>
			<input type="text" id="nom" name="nom" value="{$nom}" />
		</p>
		
		<p class="text">
			<label for="email">{l s='E-mail address'}</label>
			<input type="text" id="email" name="from" value="{$email}" />
		</p>
		
		<p class="select">
			<label for="id_contact">{l s='Subject'}</label>
			<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
				<option value="0">{l s='-- Choose --'}</option>
			{foreach from=$contacts item=contact}
				<option value="{$contact.id_contact|intval}" {if isset($smarty.post.id_contact) && $smarty.post.id_contact == $contact.id_contact}selected="selected"{/if}>{$contact.name|escape:'htmlall':'UTF-8'}</option>
			{/foreach}
			</select>
		</p>
		<p id="desc_contact0" class="desc_contact">&nbsp;</p>
		{foreach from=$contacts item=contact}
			<p id="desc_contact{$contact.id_contact|intval}" class="desc_contact" style="display:none;margin-left:220px;">
			<label>&nbsp;</label>{$contact.description|escape:'htmlall':'UTF-8'}</p>
		{/foreach}
		
		<p class="textarea">
			<label for="message">{l s='Message'}</label>
			 <textarea id="message" name="message" rows="7" cols="35">{if isset($smarty.post.message)}{$smarty.post.message|escape:'htmlall':'UTF-8'|stripslashes}{/if}</textarea>
		</p>
		<br class="clear" /><br />
		<p class="text">
			<label for="optin"></label>
			<input type="checkbox" id="optin" name="optin" style="width:auto;" value="" /> &nbsp; Je souhaite recevoir la newsletter des cr&eacute;ations Marianne Denis.
		</p>
		<br />
		<p class="submit">
			<input type="submit" name="submitMessage" id="submitMessage" value="{l s='Send'}" class="button" onclick="$(this).hide();" />
		</p>
	</fieldset>
</form>
{/if}

</if>
