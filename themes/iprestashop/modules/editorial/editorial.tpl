<!-- Module Editorial -->
{if $xml->body->$title}<span class="graytitle">{$xml->body->$title|stripslashes}</span>{/if}
<ul class="pageitem">
	<li class="textbox">
		{if $xml->body->home_logo_link}<a href="{$xml->body->home_logo_link|escape:'htmlall':'UTF-8'}" title="{$xml->body->$title|escape:'htmlall':'UTF-8'|stripslashes}">{/if}
			{if $homepage_logo}<img src="{$this_path}homepage_logo.jpg" alt="{$xml->body->$title|escape:'htmlall':'UTF-8'|stripslashes}" />{/if}
		{if $xml->body->home_logo_link}</a>{/if}
		{if $xml->body->$logo_subheading}{$xml->body->$logo_subheading|stripslashes}{/if} 
		{if $xml->body->$subheading}<span class="header">{$xml->body->$subheading|stripslashes}</span>{/if}
		{if $xml->body->$paragraph}<div class="rte">{$xml->body->$paragraph|stripslashes}</div>{/if}
	</li>
</ul>
<!-- /Module Editorial -->
