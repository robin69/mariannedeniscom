<?php
/**
 * The Template for displaying all single posts.
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */

get_header(); ?>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

				<div id="nav-above" class="navigation">
					<div class="nav-previous"><?php previous_post_link( '%link', '<span class="meta-nav">&laquo; Page pr&eacute;c&eacute;dente</span>' ); ?></div>
					<div class="nav-next"><?php next_post_link( '%link', '<span class="meta-nav">Page suivante &raquo;</span>' ); ?></div>
				</div><!-- #nav-above -->

				<div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<h1 class="entry-title"><?php the_title(); ?></h1>

					<div class="entry-meta">
						<?php the_date(); ?>
						<br />
						Cat&eacute;gories : <?php the_category(', '); ?> &nbsp;&#8226;&nbsp; Tags : <?php the_tags('',', '); ?>
					</div><!-- .entry-meta -->

					<div class="entry-content">
						<?php the_content(); ?>
						
						<div class="clear"></div>
						
						<?php if (function_exists('sociable_html')) {
						    echo sociable_html();
						} ?>
						
					</div><!-- .entry-content -->

<?php //if ( get_the_author_meta( 'description' ) ) : // If a user has filled out their description, show a bio on their entries  ?>
					<div id="entry-author-info">
						<div id="author-avatar">
							<a href=""><img src="<?php bloginfo('url'); ?>/wp-content/themes/twentyten/images/md-avatar-main.jpg" width="80" height="80" alt="" /></a>
						</div><!-- #author-avatar -->
						<div id="author-description">
							<h2><?php printf( esc_attr__( 'About %s', 'twentyten' ), get_the_author() ); ?></h2>
							<?php the_author_meta( 'description' ); ?>
							<div id="author-link">
								<a href="http://www.mariannedenis.com/" title="">D&eacute;couvrez la boutique MD &raquo;</a>
							</div><!-- #author-link	-->
						</div><!-- #author-description -->
					</div><!-- #entry-author-info -->
					<div class="clear"></div>
					
<?php //endif; ?>

				</div><!-- #post-## -->

				<?php comments_template( '', true ); ?>

<?php endwhile; // end of the loop. ?>

<?php //get_sidebar(); ?>
<?php get_footer(); ?>
