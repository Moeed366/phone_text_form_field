import 'package:flutter_test/flutter_test.dart';
import 'package:phone_text_form_field/phone_text_form_field.dart';
import 'package:phone_text_form_field/phone_text_form_field_platform_interface.dart';
import 'package:phone_text_form_field/phone_text_form_field_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPhoneTextFormFieldPlatform
    with MockPlatformInterfaceMixin
    implements PhoneTextFormFieldPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PhoneTextFormFieldPlatform initialPlatform = PhoneTextFormFieldPlatform.instance;

  test('$MethodChannelPhoneTextFormField is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPhoneTextFormField>());
  });

  test('getPlatformVersion', () async {
    PhoneTextFormField phoneTextFormFieldPlugin = PhoneTextFormField();
    MockPhoneTextFormFieldPlatform fakePlatform = MockPhoneTextFormFieldPlatform();
    PhoneTextFormFieldPlatform.instance = fakePlatform;

    expect(await phoneTextFormFieldPlugin.getPlatformVersion(), '42');
  });
}
