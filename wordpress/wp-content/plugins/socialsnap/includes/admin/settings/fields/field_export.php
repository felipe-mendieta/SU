<?php
/**
 * Social Snap export field.
 *
 * @package    Social Snap
 * @author     Social Snap
 * @since      1.0.0
 * @license    GPL-3.0+
 * @copyright  Copyright (c) 2019, Social Snap LLC
*/
class SocialSnap_Field_export {
	
	/**
	 * Primary class constructor.
	 *
	 * @since 1.0.0
	 */
	function __construct( $value ) {
		$this->field 		= $value['type'];
		$this->description	= $value['desc'];
		$this->name 		= $value['name'];
		$this->id 			= $value['id'];
	}

	/**
	 * HTML Output of the field
	 *
	 * @since 1.0.0
	 */
	public function render() {

		ob_start(); 
		?>
		<div id="<?php echo $this->id; ?>_wrapper" class="ss-field-wrapper ss-export-element ss-clearfix ss-field-spacing" id="<?php echo $this->id; ?>">

			<div class="ss-field-title">
				<?php echo $this->name; ?>

				<?php if ( $this->description ) { ?>
					<i class="ss-tooltip ss-question-mark" data-title="<?php echo $this->description; ?>"></i>
				<?php } ?>	
			</div>

			<div class="ss-field-element ss-clearfix">
				<a href="<?php echo admin_url( 'admin.php?page=socialsnap-settings&ss_export_settings=true' ); ?>" class="ss-button ss-small-button" id="ss-export-settings">
					<?php esc_html_e( 'Export Settings', 'socialsnap' ); ?>
				</a>
			</div>

		</div>
		<?php
		return ob_get_clean();
	}
}
