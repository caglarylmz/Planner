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
          LangStringKeys.loading.name: "Yükleniyor...",
          LangStringKeys.darkMode.name: "Karanlık Mode",
          LangStringKeys.language.name: "Dil",
          LangStringKeys.error.name: "Hata",

          ///auth

          LangStringKeys.forgotPassword.name: "Şifremi unuttum",
          LangStringKeys.signOut.name: "Çıkış Yap",
          LangStringKeys.signIn.name: 'Giriş Yap',
          LangStringKeys.register.name: 'Kayıt Ol',

          //login form
          LangStringKeys.passwordLabel.name: "Şifre",
          LangStringKeys.passwordHint.name: "Şifre",
          LangStringKeys.valPasswordEmpty.name: "Şife girmelisiniz",

          LangStringKeys.confirmPasswordLabel.name: "Şifre Onayı",
          LangStringKeys.confirmPasswordHint.name:
          "Şifrenizi Onayı",
          LangStringKeys.valConfirmPasswordEmpty.name:
          "Şifre onayı yapmalısınız",
          LangStringKeys.valNotEqualsPasswords.name: "Şifreler uyuşmuyor",

          //register form
          LangStringKeys.nameLabel.name: "İsim-Soyisim",
          LangStringKeys.nameHint.name: "İsim-Soyisim",
          LangStringKeys.valNameEmpty.name: "Bu alan boş bırakılamaz",

          LangStringKeys.emailLabel.name: "Email",
          LangStringKeys.emailHint.name: "Email",

          LangStringKeys.valEmailValid.name:
          "Lütfen geçerli bir email giriniz",
          LangStringKeys.valEmailEmpty.name: "Bu alan boş olamaz",

          LangStringKeys.phoneLabel.name: "Telefon",
          LangStringKeys.phoneHint.name: "Telefon",
          LangStringKeys.valPhoneEmpty.name: "Buı alan boş olamaz",

          LangStringKeys.phoneCodeLabel.name: "Ülke kodu",
          LangStringKeys.valPhoneCodeNotSelected.name:
          "Lütfen bir ülke kodu seçiniz",

          ///DAHSBOARD

          //tabs
          LangStringKeys.tasks.name: "Yapılacaklar",
          LangStringKeys.notes.name: "Notlar",
          LangStringKeys.archive.name: "Arşiv",
          LangStringKeys.settings.name: "Ayarlar",
        }
      };
}
