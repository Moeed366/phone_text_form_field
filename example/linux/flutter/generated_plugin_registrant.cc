//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <phone_text_form_field/phone_text_form_field_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) phone_text_form_field_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PhoneTextFormFieldPlugin");
  phone_text_form_field_plugin_register_with_registrar(phone_text_form_field_registrar);
}
