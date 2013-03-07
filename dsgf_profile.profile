<?php
/**
 * @file
 * Enables modules and site configuration for a clone of `drupalsgf.org`
 */

/**
 * Implements hook_form_alter().
 */
function dsgf_profile_form_alter(&$form, $form_state) {
  switch ($form) {
    case 'install_configure_form':
      // Default settings
      $form['site_information']['site_name']['#default_value'] = 'Drupal SGF';
      $form['admin_account']['account']['name']['#default_value'] = 'admin';
      $form['admin_account']['account']['mail']['#default_value'] = 'info@drupalsgf.org';
      $form['server_settings']['site_default_country']['#default_value'] = 'US';
  }
}

/**
 *  Implements hook_image_default_styles().
 */
function dsgf_profile_image_default_styles() {
  $styles = array();
  // Event Snapshot
  $styles['event_snapshot'] = array(
    'name' => 'event_snapshot',
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

