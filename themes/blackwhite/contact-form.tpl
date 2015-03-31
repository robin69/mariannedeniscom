{capture name=path}{l s='Contact'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Contact us'}</h2>
<div id="contact">
{if isset($confirmation)}
	<p>{l s='Your message has been successfully sent to our team.'}</p>
	<ul class="footer_links">
		<li><a href="{$base_dir}"><img class="icon" alt="" src="{$img_dir}icon/home.gif"/></a><a href="{$base_dir}">{l s='Home'}</a></li>
	</ul>
    <ul>
{else}
<ul>
	<li>{l s='For questions about an order or for information about our products'}.</li>
</ul>	{include file=$tpl_dir./errors.tpl}
	<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post" class="std">
		<fieldset>
			<p>
				<label for="id_contact">{l s='Subject'}</label>
				<select id="id_contact" name="id_contact" onchange="showElemFromSelect('id_contact', 'desc_contact')">
					<option value="0">{l s='-- Choose --'}</option>
				{foreach from=$contacts item=contact}
					<option value="{$contact.id_contact|intval}" {if isset($smarty.post.id_contact) && $smarty.post.id_contact == $contact.id_contact}selected="selected"{/if}>{$contact.name|escape:'htmlall':'UTF-8'}</option>
				{/foreach}
				</select>
			</p>
		    {foreach from=$contacts item=contact}
			<p id="desc_contact{$contact.id_contact|intval}" style="display:none;">
		  	 <span>{$contact.description|escape:'htmlall':'UTF-8'}</span><br />
			</p>
		    {/foreach}
		    <p>
			<label for="email">{l s='E-mail address'}</label>
			<input type="text" id="email" name="from" value="{if isset($smarty.post.from)}{$smarty.post.from|escape:'htmlall':'UTF-8'|stripslashes}{/if}" />
		</p>
		<p>
			<label for="message">{l s='Message'}</label>
			 <textarea id="message" name="message" rows="7" cols="60">{if isset($smarty.post.message)}{$smarty.post.message|escape:'htmlall':'UTF-8'|stripslashes}{/if}</textarea>
		</p>
		<p class="submit">
			<input type="submit" name="submitMessage" id="submitMessage" value="{l s='Send'}" class="buttonvalidate" style="margin-left:150px !important; margin-left:153px " />
		</p>
	</fieldset>
</form>
{/if}
</ul>
</div>
<div id="customer_assistance">
<p><img src="{$base_dir}themes/blackwhite/img/boutique_ipnotik.jpg" width="272" height="88" /> </p>
<h3>My lampes</h3>
<p>2 bis place de la paix . 59420 Mouvaux . </p>
<p>Lundi au vendredi : 09 - 19.00 </p>
<p>Samedi : 09 - 12 </p>
<h3>Besoin de renseignement</h3>
<p>Des questions sur nos produits ou passer votre commande par telephone </p>
</p><a href="mailto:contact@mylampes.com">contact@my-lampes.com</a></p>
<p>Par telephone: 03.20.89.09.05 ; Fax : 03.20.24.11.37</p>

</div>