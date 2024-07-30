#ifndef FLUTTER_PLUGIN_PHONE_TEXT_FORM_FIELD_PLUGIN_H_
#define FLUTTER_PLUGIN_PHONE_TEXT_FORM_FIELD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace phone_text_form_field {

class PhoneTextFormFieldPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PhoneTextFormFieldPlugin();

  virtual ~PhoneTextFormFieldPlugin();

  // Disallow copy and assign.
  PhoneTextFormFieldPlugin(const PhoneTextFormFieldPlugin&) = delete;
  PhoneTextFormFieldPlugin& operator=(const PhoneTextFormFieldPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace phone_text_form_field

#endif  // FLUTTER_PLUGIN_PHONE_TEXT_FORM_FIELD_PLUGIN_H_
