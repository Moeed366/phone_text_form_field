import 'package:flutter/material.dart';
import 'package:phone_text_form_field/phone_number_field.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text('LoginScreen')),
      ],
    );
  }
}

class LoginScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String? data;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              InternationalPhoneNumberTextField(
                height: 60,
                controller: controller,
                inputFormatters: const [],
                formatter: MaskedInputFormatter('### ### ## ##'),
                initCountry: CountryCodeModel(
                    name: "United States", dial_code: "+1", code: "US"),
                betweenPadding: 23,
                onInputChanged: (phone) {
                  print(phone.code);
                  print(phone.dial_code);
                  print(phone.number);
                  print(phone.rawFullNumber);
                  print(phone.rawNumber);
                  print(phone.rawDialCode);
                },
                dialogConfig: DialogConfig(
                  backgroundColor: const Color(0xFF444448),
                  searchBoxBackgroundColor: const Color(0xFF56565a),
                  searchBoxIconColor: const Color(0xFFFAFAFA),
                  countryItemHeight: 55,
                  flatFlag: true,
                  topBarColor: const Color(0xFF1B1C24),
                  selectedItemColor: const Color(0xFF56565a),
                  selectedIcon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      "assets/check.png",
                      width: 20,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  textStyle: TextStyle(
                      color: const Color(0xFFFAFAFA).withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                  searchBoxTextStyle: TextStyle(
                      color: const Color(0xFFFAFAFA).withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                  titleStyle: const TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  searchBoxHintStyle: TextStyle(
                      color: const Color(0xFFFAFAFA).withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                countryConfig: CountryConfig(
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: const Color(0xFF3f4046)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    flatFlag: true,
                    noFlag: false,
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                validator: (number) {
                  if (number.number.isEmpty) {
                    return "The phone number cannot be left emptyssss";
                  }
                  return null;
                },
                phoneConfig: PhoneConfig(
                  focusedColor: const Color(0xFF6D59BD),
                  enabledColor: const Color(0xFF6D59BD),
                  errorColor: const Color(0xFFFF5494),
                  labelStyle: null,
                  labelText: null,
                  floatingLabelStyle: null,
                  focusNode: null,
                  radius: 8,
                  hintText: "Phone Number",
                  borderWidth: 2,
                  backgroundColor: Colors.transparent,
                  decoration: null,
                  popUpErrorText: true,
                  autoFocus: false,
                  showCursor: false,
                  textInputAction: TextInputAction.done,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  errorTextMaxLength: 2,
                  errorPadding: const EdgeInsets.only(top: 14),
                  errorStyle: const TextStyle(
                      color: Color(0xFFFF5494), fontSize: 12, height: 1),
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
