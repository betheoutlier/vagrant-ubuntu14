# Nexus 8.3.0.0.0 Make File

# DRUSH API
# --------
api: 2

# Core
# --------
core: 8.3

projects:

  # Get the latest version of Drupal.
  drupal:
    version: 8.3.0
    
  # Themes
  adminimal_theme:
    type: "theme"
    version: 1.3
  omega:
    type: "theme"
    version: 5.0-alpha7
  zen:
    type: "theme"
    version: 7.0-alpha14
    
  # Contrib Modules
  advagg:
    version: 2.3
    type: "module"
  better_exposed_filters:
    version: 3.0-alpha2
    type: "module"
  captcha:
    version: 1.0-beta1
    type: "module"    
  config_update:
    version: 1.3
    type: "module"
  devel:
    version: 1.0-rc1
    type: "module"
  embed:
    version: 1.0
    type: "module"
  entity_reference_revisions:
    version: 1.2
    type: "module"
  features:
    version: 3.5
    type: "module"
  field_collection:
    version: 1.0-alpha1
    type: "module"
  flexslider:
    version: 2.0-beta1
    type: "module"
  google_analytics:
    version: 2.1
    type: "module"
  imce:
    version: 1.5
    type: "module"
  mailsystem:
    version: 4.1
    type: "module"
  menu_block:
    version: 1.4
    type: "module"
  metatag:
    version: 1.0
    type: "module"
  mimemail:
    version: 1.0-alpha1
    type: "module"
  module_filter:
    version: 3.0
    type: "module"
  paragraphs:
    version: 1.1
    type: "module"
  pathauto:
    version: 1.0-rc1
    type: "module"
  recaptcha:
    version: 2.2
    type: "module"
  redirect:
    version: 1.0-alpha5
    type: "module"
  reroute_email:
    version: 1.0-beta1
    type: "module"
  robotstxt:
    version: 1.1
    type: "module"
  seckit:
    version: 1.0-alpha2
    type: "module"
  smtp:
    version: 1.0-beta2
    type: "module"
  token:
    version: 1.0-rc1
    type: "module"
  twig_tweak:
    version: 1.6
    type: "module"
  webform:
    version: 5.0-beta11
    type: "module"
  xmlsitemap:
    version: 1.0-alpha2
    type: "module"
    
#Libraries
libraries:
  flexslider:
    download:
      type: git
      url: git@github.com:woocommerce/FlexSlider.git  