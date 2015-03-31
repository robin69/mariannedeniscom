<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
		<meta property="og:title" content="{$meta_title|escape:'htmlall':'UTF-8'}" />
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
		<meta property="og:description" content="{$meta_description|escape:html:'UTF-8'}" />
		<meta name="google-site-verification" content="KbwhzH1WkGpfz0MgNpU3WsntDevqd5oNlW0wErGLEZQ" />
		<meta name="google-site-verification" content="KbwhzH1WkGpfz0MgNpU3WsntDevqd5oNlW0wErGLEZQ" />
		<meta name="google-site-verification" content="lEviRbgKOnIOjg1_wfs1sFOAFm9qYQcNfNP7fSsWLfg" />
		<META name="y_key" content="5960ee99399e90f1" />
		<meta name="msvalidate.01" content="01DE0F91F80D18A5EA1D6035CA608CBA" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<meta name="generator" content="Dev-PHP 2.3.2" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,follow" />
{if ($page_name == 'product')}
		<meta property="og:image" content="{$base_dir}{$link->getImageLink($product->link_rewrite, $cover.id_image, 'small')}" />
{/if}
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$img_ps_dir}favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="{$img_ps_dir}favicon.ico" />
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if}
		<script type="text/javascript" src="{$content_dir}js/tools.js"></script>
		<script type="text/javascript" src="{$content_dir}js/fonctions.js"></script>
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var roundMode = {$roundMode};
		</script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}
	
		{$HOOK_HEADER}
	</head>
	
	<body {if $page_name == "search"}id="category"{elseif $page_name}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
	
	<!-- ANALYTICS -->
  {include_php file="http://www.mariannedenis.com/prestashop/analyticstracking.php"}
	
	{if !$content_only}
		<noscript><ul><li>{l s='This shop requires JavaScript to run correctly. Please activate JavaScript in your browser.'}</li></ul></noscript>
		
		
		<div id="main">
		<!-- LEFT COLUMN -->
		<div id="leftcol">
			<!-- LOGO -->
			<div id="logo">
				<h1><a href="{$content_dir}" title="" onfocus="this.blur();">Marianne Denis - Cr&eacute;ation de bijoux</a></h1>
			</div>
		</div>
		<!-- RIGHT COLUMN -->
		<div id="rightcol">
			<!-- NAV -->
			<div id="nav">
				<a href="{$content_dir}" title="" {if $page_name == index}class="navitem"{/if} onfocus="this.blur();">Home</a>
				<a href="{$content_dir}29-catalogue-bijoux" title="" {if $request_uri == '/29-catalogue-bijoux'} class="navitem"{/if} onfocus="this.blur();">Catalogue</a>
				<a href="{$content_dir}30-collections" title="" {if $request_uri == '/30-collections'}class="navitem"{/if} onfocus="this.blur();">Collections</a>
				<a href="{$content_dir}prices-drop.php" title="" {if $request_uri == '/prices-drop.php'}class="navitem"{/if} onfocus="this.blur();" >Promotions</a>
				<a href="{$content_dir}content/7-esprit-md" title="" {if $request_uri == '/content/7-esprit-md'}class="navitem"{/if} onfocus="this.blur();">L'esprit MD</a>
				<a href="{$content_dir}blog/actualites/just-married-les-mariees-sur-mesure/" title="" {if $request_uri == 'blog/actualites/just-married-les-mariees-sur-mesure/'}class="navitem"{/if} onfocus="this.blur();">Sur mesure</a>
				<a href="{$content_dir}blog/actualites/points-de-vente/" title="" {if $request_uri == 'blog/actualites/points-de-vente/'}class="navitem"{/if} onfocus="this.blur();">Points de vente</a>
				<a href="{$content_dir}blog/actualites/espace-pros/" title="" {if $request_uri == 'blog/actualites/espace-pros/'}class="navitem"{/if} onfocus="this.blur();">Espace Pros - BIJORHCA</a>
				<a href="{$content_dir}blog/" title="" onfocus="this.blur();">Actualit&eacute;s</a>
			</div>
			
			<!-- QUOTE -->
			<!-- <div id="subnav-quote">
				&laquo; Marianne Denis, création de bijoux prêt-à-porter et sur mesure, fantaisie et haute couture : harmonie des couleurs, diversité des matières... &raquo;
			</div> -->
			
			<!-- HOOK TOP -->
			{$HOOK_TOP}
				
			<!-- NEWSLETTER -->
			<div id="newsletter-link">
				<a href="{$content_dir}content/8-newsletter" title="" onfocus="this.blur();">Newsletter&nbsp;MD&nbsp;Cr&eacute;ation</a>
			</div>
			
			<!-- COMPTE/PANIER -->
			<div id="account">
				<a href="{$content_dir}my-account.php" title="" onfocus="this.blur();">Mon compte</a>
				<span>|</span>
				<a href="{$content_dir}order.php" title="" onfocus="this.blur();">Mon panier (<span class="ajax_cart_quantity">{$cart_qties}</span>)</a>
			</div>
			<!-- SEARCH -->
			<!--<div id="search">
				<form>
					<input type="text" name="" class="searchinput" value="Rechercher" />
					<input type="submit" name="" class="searchsubmit" value="" />
				</form>
			</div> -->
			<!-- sof. CONTENT -->
			<div id="content">
		
		
	{/if}
