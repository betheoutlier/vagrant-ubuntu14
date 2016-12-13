<?php

namespace Drupal\webform\Plugin\WebformElement;

use Drupal\Core\Form\FormStateInterface;

/**
 * Provides a 'webform_message' element.
 *
 * @WebformElement(
 *   id = "webform_message",
 *   label = @Translation("Message"),
 *   category = @Translation("Markup elements"),
 *   states_wrapper = TRUE,
 * )
 */
class WebformMessage extends WebformMarkupBase {

  /**
   * {@inheritdoc}
   */
  public function getDefaultProperties() {
    return parent::getDefaultProperties() + [
      // Attributes.
      'attributes' => [],
      // Message settings.
      'message_type' => 'status',
      'message_message' => '',
    ];
  }

  /**
   * {@inheritdoc}
   */
  public function getTranslatableProperties() {
    return array_merge(parent::getTranslatableProperties(), ['message_message']);
  }

  /**
   * {@inheritdoc}
   */
  public function form(array $form, FormStateInterface $form_state) {
    $form = parent::form($form, $form_state);
    $form['markup']['#title'] = $this->t('Message settings');
    $form['markup']['message_type'] = [
      '#type' => 'select',
      '#title' => $this->t('Message type'),
      '#options' => [
        'status' => t('Status'),
        'error' => t('Error'),
        'warning' => t('Warning'),
        'info' => t('Info'),
      ],
    ];
    $form['markup']['message_message'] = [
      '#type' => 'webform_html_editor',
      '#title' => $this->t('Message content'),
    ];
    return $form;
  }

}
