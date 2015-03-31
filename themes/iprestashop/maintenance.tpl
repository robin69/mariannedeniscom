<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}" lang="{$lang_iso}">
	<head>
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="minimum-scale=1.0, width=device-width, maximum-scale=0.6667, user-scalable=no" name="viewport" />
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>	
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{if isset($meta_description)}
		<meta name="description" content="{$meta_description|escape:'htmlall':'UTF-8'}" />
{/if}
{if isset($meta_keywords)}
		<meta name="keywords" content="{$meta_keywords|escape:'htmlall':'UTF-8'}" />
{/if}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,follow" />
		<meta name="generator" content="iPrestaShop by Joel Gaujard" />
		<link href="{$img_dir}startup.png" rel="apple-touch-startup-image" />
		<link href="{$img_dir}homescreen.gif" rel="apple-touch-icon" />
		<link href="{$ips_css_dir}style.css" rel="stylesheet" media="screen" type="text/css" />
		<script src="{$ips_js_dir}functions.js" type="text/javascript"></script>
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$img_ps_dir}favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="{$img_ps_dir}favicon.ico" />
	</head>
	<body>
		<div id="topbar">
			<div id="title">{$shop_name}</div>
		</div>
		<div id="content">
			<ul class="pageitem">
				<li class="textbox" style="text-align:center">
					<img src="{$img_ps_dir}logo.jpg" alt="logo" />
					<br/>
					{l s='In order to perform site maintenance, our online shop has been taken offline temporarily. We apologize for the inconvenience, and ask that you please try again later !'}
				</li>
			</ul>
		</div>
	</body>
</html>