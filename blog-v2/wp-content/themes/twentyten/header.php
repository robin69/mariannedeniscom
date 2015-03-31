<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '&nbsp;&#8226;&nbsp', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " &nbsp;&#8226;&nbsp $site_description";

	// Add a page number if necessary:
	if ( $paged >= 2 || $page >= 2 )
		echo ' &nbsp;&#8226;&nbsp ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) );

	?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="icon" type="image/vnd.microsoft.icon" href="{$img_ps_dir}favicon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="<?php bloginfo('template_url'); ?>/images/favicon.ico" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<script type="text/javascript" src="http://www.mariannedenis.com/blog/wp-includes/js/fonctions.js"></script>
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<?php
	/* We add some JavaScript to pages with the comment form
	 * to support sites with threaded comments (when in use).
	 */
	if ( is_singular() && get_option( 'thread_comments' ) )
		wp_enqueue_script( 'comment-reply' );

	/* Always have wp_head() just before the closing </head>
	 * tag of your theme, or you will break many plugins, which
	 * generally use this hook to add elements to <head> such
	 * as styles, scripts, and meta tags.
	 */
	wp_head();
?>
</head>

<body <?php body_class(); ?>>
<div id="main">
		<!-- LEFT COLUMN -->
		<div id="leftcol">
			<!-- LOGO -->
			<div id="logo">
				<h1><a href="" title="" onfocus="this.blur();">Marianne Denis - Cr&eacute;ation de bijoux</a></h1>
			</div>
		</div>
		<!-- RIGHT COLUMN -->
		<div id="rightcol">
			<!-- NAV -->
			<div id="nav">
			
			<?php $content_dir_ps = "http://www.mariannedenis.com/"; ?>
			
				<a href="<?php echo $content_dir_ps; ?>" title="" onfocus="this.blur();">Home</a>
				<a href="<?php echo $content_dir_ps; ?>29-catalogue-bijoux" title="" onfocus="this.blur();">Catalogue</a>
				<a href="<?php echo $content_dir_ps; ?>30-collections" title="" onfocus="this.blur();">Collections</a>
				<a href="<?php echo $content_dir_ps; ?>prices-drop.php" title="" onfocus="this.blur();">Promotions</a>
				<a href="<?php echo $content_dir_ps; ?>content/7-esprit-md" title="" onfocus="this.blur();">L'esprit MD</a>
				<a href="<?php echo $content_dir_ps; ?>content/6-sur-mesure" title="" onfocus="this.blur();">Sur mesure</a>
				<a href="<?php bloginfo('url'); ?>" title="" class="navitem" onfocus="this.blur();">Actualit&eacute;s</a>
			</div>
			
			<!-- QUOTE -->
			<div id="subnav-quote" style="display:none;">
				&laquo; Marianne Denis, cr&eacute;ation de bijoux pr&ecirc;t-&agrave;-porter et sur mesure, fantaisie et haute couture : harmonie des couleurs, diversit&eacute; des mati&egrave;res... &raquo;
			</div>
			
			<!-- NEWSLETTER -->
			<div id="newsletter-link">
				<a href="<?php echo $content_dir_ps; ?>content/8-newsletter" title="" onfocus="this.blur();">Newsletter&nbsp;MD&nbsp;Cr&eacute;ation</a>
			</div>
			
			<!-- COMPTE/PANIER -->
			<div id="account">
				<a href="<?php echo $content_dir_ps; ?>my-account.php" title="" onfocus="this.blur();">Mon compte</a>
				<span>|</span>
				<a href="<?php echo $content_dir_ps; ?>order.php" title="" onfocus="this.blur();">Mon panier</a>
			</div>
			<!-- SEARCH -->
			<div id="search">
				<form name="searchformblog" method="post" action="<?php echo $content_dir_ps; ?>search.php">
					<input type="text" name="search_query" class="searchinput" value="Rechercher" />
					<input type="submit" name="submit_search" class="searchsubmit" value="" />
				</form>
			</div>
			<!-- sof. CONTENT -->
			<div id="content">
			
				<div id="col1">
				