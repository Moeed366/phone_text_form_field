#ifndef FLUTTER_PLUGIN_PHONE_TEXT_FORM_FIELD_PLUGIN_H_
#define FLUTTER_PLUGIN_PHONE_TEXT_FORM_FIELD_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _PhoneTextFormFieldPlugin PhoneTextFormFieldPlugin;
typedef struct {
  GObjectClass parent_class;
} PhoneTextFormFieldPluginClass;

FLUTTER_PLUGIN_EXPORT GType phone_text_form_field_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void phone_text_form_field_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_PHONE_TEXT_FORM_FIELD_PLUGIN_H_
