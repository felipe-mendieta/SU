<main class="main" role="main">
	<?php
	while ( have_posts() ) {
		the_post();
		get_template_part( 'template-parts/content/post' );

		the_post_navigation();

		do_action( 'estar_comments_before' );
		if ( comments_open() || get_comments_number() ) {
			comments_template();
		}
		do_action( 'estar_ccomments_after' );
	}
	?>
</main>

<?php get_sidebar(); ?>