<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
	<head>
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,follow" />
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<link href="{$img_dir}homescreen.gif" rel="apple-touch-icon" />
		<meta content="minimum-scale=1.0, width=device-width, maximum-scale=0.6667, user-scalable=no" name="viewport" />
		<link href="{$ips_css_dir}style.css" rel="stylesheet" media="screen" type="text/css" />
		<!-- script src="{$js_dir}jquery-1.3.2.min.js" type="text/javascript"></script -->
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
		<script src="{$ips_js_dir}functions.js" type="text/javascript"></script>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
		<link href="{$img_dir}startup.png" rel="apple-touch-startup-image" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$img_ps_dir}favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="{$img_ps_dir}favicon.ico" />
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:htmlall:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:htmlall:'UTF-8'}" />
{/if}
		<meta name="generator" content="iPrestaShop by Joel Gaujard" />
		<link href="{$css_dir}iprestashop.css" rel="stylesheet" type="text/css" media="screen" />
{*if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if*}
		<script type="text/javascript" src="{$content_dir}js/tools.js"></script>
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
		</script>
		{$HOOK_HEADER}
{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}
	</head>
	
	<body {if $page_name}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
	{if !$content_only}
		<noscript><ul><li>{l s='This shop requires JavaScript to run correctly. Please activate JavaScript in your browser.'}</li></ul></noscript>
	{/if}
