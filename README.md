
# phone_text_form_field

<div style="height:6px;"></div>

<div style="height:32px;"></div>

![](https://github.com/Moeed366/images/assets/101408316/d39904f4-9417-4c8b-919c-bc8c31c9079d)


## Demo

<img src="https://github.com/user-attachments/assets/98215c69-5a81-4455-b878-139f9d14077c.gif" >

# Usage
InternationalPhoneNumberInput

## Available Parameters

```dart
InternationalPhoneFormField(
// height: 60,
controller: controller,
inputFormatters: const [],
formatter: MaskedInputFormatter('### ### ## ##'),
initCountry: CountryCodeModel(
name: "United States", dial_code: "+1", code: "US"),
onInputChanged: (phone) {
print(phone.code);
print(
'complete phone number' + phone.dial_code + phone.number);
print(phone.number);
print(phone.rawFullNumber);
print(phone.rawNumber);
print(phone.rawDialCode);
},
/*       dialogConfig: DialogConfig(
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
                        fontWeight: FontWeight.w600)),*/
/*  validator: (number) {
                  if (number.number.isEmpty) {
                    return "The phone number cannot be left emptyssss";
                  }
                  return null;
                },*/
/*   phoneConfig: PhoneConfig(
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
                ),*/
),
```

| Parameter                           | Datatype                                 |             Initial Value             |
|---------------------------------    |----------------------------------        |---------------------------------------|
| controller                          | TextEditingController                    |        TextEditingController()        |
| height                              | double                                   |                  60                   |
| inputFormatters                     | List<TextInputFormatter>                 |                  []                   |
| formatter                           | MaskedInputFormatter                     | MaskedInputFormatter('### ### ## ##') |
| initCountry                         | CountryCodeModel                         | CountryCodeModel(name: "United States", dial_code: "+1", code: "US") |
| betweenPadding                      | double                                   |                  23                   |
| onInputChanged                      | Function(IntPhoneNumber number)          |                 null                  |
| loadFromJson                        | Future<String?> Function()               |                 null                  |
| dialogConfig                        | DialogConfig                             |            DialogConfig()             |
| countryConfig                       | CountryConfig                            |            CountryConfig()            |
| phoneConfig                         | PhoneConfig                              |            PhoneConfig()              |
| validator                           | String? Function(IntPhoneNumber number)? |                 null                  |




## IntPhoneNumber
Function "onInputChanged" will return an object with IntPhoneNumber type to you. <br></br>
IntPhoneNumber:
```dart
print(phone.code);          //US
print(phone.dial_code);     //+1
print(phone.number);        //553 142 88 74
print(phone.rawFullNumber); //15531428874
print(phone.rawNumber);     //5531428874
print(phone.rawDialCode);   //1
```



See the `example` file for a more detailed example

