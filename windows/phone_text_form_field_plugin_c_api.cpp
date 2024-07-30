#include "include/phone_text_form_field/phone_text_form_field_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "phone_text_form_field_plugin.h"

void PhoneTextFormFieldPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  phone_text_form_field::PhoneTextFormFieldPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
