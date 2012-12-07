<?php
/**
 * @file
 * Enables modules and site configuration for a clone of `drupalsgf.org`
 */

/**
 * Implements hook_install().
 */
function sgf_profile_install() {
  // Turn off comments for basic pages
  variable_set('comment_page', COMMENT_NODE_HIDDEN);

  // Theme stuff!
  variable_set('theme_default', 'omega');
  variable_set('admin_theme', 'ember');
  variable_set('node_admin_theme', '1');
}

/**
 * Implements hook_form_alter().
 */
function sgf_profile_form_alter(&$form, $form_state) {
  switch ($form_id) {
    case 'install_configure_form':
      // Default settings
      $form['site_information']['site_name']['#default_value'] = 'Drupal SGF';
      $form['admin_account']['account']['name']['#default_value'] = 'admin';
      $form['admin_account']['account']['mail']['#default_value'] = 'site@drupalsgf.org';
      $form['server_settings']['site_default_country']['#default_value'] = 'US';
  }
}

/**
 *  Implements hook_image_default_styles().
 */
function sgf_profile_image_default_styles() {
  $styles = array();
  // Blog Header
  $styles['blog_header'] = array(
    'name' => 'blog_header',
    'effects' => array(
      1 => array(
        'label' => t('Scale and crop'),
        'help' => t('Scale and crop will maintain the aspect ratio of the original image.'),
        'effect callback' => 'image_scale_and_crop_effect',
        'dimensions callback' => 'image_resize_dimensions',
        'form callback' => 'image_resize_form',
        'summary theme' => 'image_resize_summary',
        'module' => 'image',
        'name' => 'image_scale_and_crop',
        'data' => array(
          'width' => '450',
          'height' => '285',
        ),
        'weight' => 1,
      ),
    ),
  );

  return $styles;

}
