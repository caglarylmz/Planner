import 'package:get/get.dart';
import 'package:planner/core/managers/lang_manager/lang_string_keys.dart';

class LangString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          ///App
          LangStringKeys.loading.name: "Loading...",
          LangStringKeys.darkMode.name: "Dark Mode",
          LangStringKeys.language.name: "Language",
          LangStringKeys.error.name: "Error",

          ///auth

          LangStringKeys.forgotPassword.name: "Forgot Password",
          LangStringKeys.signOut.name: "Sign Out",
          LangStringKeys.signIn.name: 'Sing In',
          LangStringKeys.register.name: 'Register',

          //login form
          LangStringKeys.passwordLabel.name: "Password",
          LangStringKeys.passwordHint.name: "Please enter the your password",
          LangStringKeys.valPasswordEmpty.name: "Password cant be empty",

          LangStringKeys.confirmPasswordLabel.name: "Confirm Password",
          LangStringKeys.confirmPasswordHint.name:
              "Please confirm the password",
          LangStringKeys.valConfirmPasswordEmpty.name:
              "Confirm Password cant be empty",
          LangStringKeys.valNotEqualsPasswords.name: "Passwords doesn't match",

          //register form
          LangStringKeys.nameLabel.name: "Full Name",
          LangStringKeys.nameHint.name: "Please enter your full name",
          LangStringKeys.valNameEmpty.name: "Your name can't be empty",

          LangStringKeys.emailLabel.name: "Email",
          LangStringKeys.emailHint.name: "Please enter your email address",

          LangStringKeys.valEmailValid.name:
              "Please provide a valid email address",
          LangStringKeys.valEmailEmpty.name: "Email address can't be empty",

          LangStringKeys.phoneLabel.name: "Phone Number",
          LangStringKeys.phoneHint.name: "Please enter your phone number",
          LangStringKeys.valPhoneEmpty.name: "Phone Number can't be empty",

          LangStringKeys.phoneCodeLabel.name: "Phone Area Code",
          LangStringKeys.valPhoneCodeNotSelected.name:
              "Please select your area code",

          ///DAHSBOARD

          //tabs
          LangStringKeys.tasks.name: "Tasks",
          LangStringKeys.notes.name: "Notes",
          LangStringKeys.archive.name: "Archive",
          LangStringKeys.settings.name: "Settings",
        },
        "tr_TR": {
          ///App
          LangStringKeys.loading.name: "Y??kleniyor...",
          LangStringKeys.darkMode.name: "Karanl??k Mode",
          LangStringKeys.language.name: "Dil",
          LangStringKeys.error.name: "Hata",

          ///auth

          LangStringKeys.forgotPassword.name: "??ifremi unuttum",
          LangStringKeys.signOut.name: "????k???? Yap",
          LangStringKeys.signIn.name: 'Giri?? Yap',
          LangStringKeys.register.name: 'Kay??t Ol',

          //login form
          LangStringKeys.passwordLabel.name: "??ifre",
          LangStringKeys.passwordHint.name: "??ifre",
          LangStringKeys.valPasswordEmpty.name: "??ife girmelisiniz",

          LangStringKeys.confirmPasswordLabel.name: "??ifre Onay??",
          LangStringKeys.confirmPasswordHint.name:
          "??ifrenizi Onay??",
          LangStringKeys.valConfirmPasswordEmpty.name:
          "??ifre onay?? yapmal??s??n??z",
          LangStringKeys.valNotEqualsPasswords.name: "??ifreler uyu??muyor",

          //register form
          LangStringKeys.nameLabel.name: "??sim-Soyisim",
          LangStringKeys.nameHint.name: "??sim-Soyisim",
          LangStringKeys.valNameEmpty.name: "Bu alan bo?? b??rak??lamaz",

          LangStringKeys.emailLabel.name: "Email",
          LangStringKeys.emailHint.name: "Email",

          LangStringKeys.valEmailValid.name:
          "L??tfen ge??erli bir email giriniz",
          LangStringKeys.valEmailEmpty.name: "Bu alan bo?? olamaz",

          LangStringKeys.phoneLabel.name: "Telefon",
          LangStringKeys.phoneHint.name: "Telefon",
          LangStringKeys.valPhoneEmpty.name: "Bu?? alan bo?? olamaz",

          LangStringKeys.phoneCodeLabel.name: "??lke kodu",
          LangStringKeys.valPhoneCodeNotSelected.name:
          "L??tfen bir ??lke kodu se??iniz",

          ///DAHSBOARD

          //tabs
          LangStringKeys.tasks.name: "Yap??lacaklar",
          LangStringKeys.notes.name: "Notlar",
          LangStringKeys.archive.name: "Ar??iv",
          LangStringKeys.settings.name: "Ayarlar",
        }
      };
}
