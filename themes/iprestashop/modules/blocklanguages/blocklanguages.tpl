<!-- Block languages module -->
<span class="graytitle">{l s='Languages' mod='blocklanguages'}</span>
<ul class="pageitem">
	{foreach from=$languages key=k item=language name="languages"}
	<li class="menu">
		<a class="noeffect" href="{$link->getLanguageLink($language.id_lang, $language.name)}">
			<img src="{$ips_lang_dir}{$language.iso_code}.png" alt="{$language.name}" />
			<span class="name">{$language.name}</span>
			{if $language.iso_code != $lang_iso}<span class="arrow"></span>{/if}
		</a>
	</li>
	{/foreach}
</ul>
<!-- /Block languages module -->
