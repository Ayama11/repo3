import 'package:get/get.dart';

class LocaleTra implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "0": "ابدأ",
          "1": "تسجيل الدخول",
          "2": "رقم الهاتف",
          "3": "كلمة المرور",
          "4": " ليس لديك حساب ؟",
          "5": "سجل الآن ",
          "6": "تسجيل الدخول",

          //register
          "7": "إنشاء حساب",
          "8": "اسم المستخدم",
          "9": "العنوان",
          "10": "تسجيل",
          "11": " لديك حساب بالفعل ؟ ",
          "12": "أهلاً بعودتك",
          "13": "التصنيفات",
          "14": "الصفحة الرئيسة",
          "15": "السلة",
          "16": "المفضلة",
          "17": "حسابي",
          "18": "الأدوية",
          "19": "إضافة إلى السلة",
          "20": "الكمية",
          "21": "إرسال الطلبية",
          "22": "السعر الكلي",
          "23": "الكمية الكلية",
          "24": "الحساب",
          'Change Language': "تغير اللغة",
          "26": "الوضع الداكن",
          "27": "حول التطبيق",
          "28": "تسجيل الخروج",
          "29": "هل أنت متأكد من تسجيل الخروج ؟",
          "30": "إلغاء",
          "31": "تأكيد",
          "32": "طلباتي",
          "33": "تفاصيل الطلب",
          // delog
          "34": "تم",
          'Erorr': "خطأ",
          "36": "تم إرسال الطلبية بنجاح",
          "37": "السلة فارغة، يرجى إضافة منتجات إليها",
          "38": "تم إضافة العنصر إلى السلة بنجاح",
          "39": "تم إزالة العنصر من السلة بنجاح",

          //val
          "Please enter your name": "يرجى ادخال الاسم",
          'Please enter a valid phone number': "يرجى ادخال رقم صالح",
          'phone number must be 10 char':
              "الرقم يجب أن يكون مؤلف من 10 أرقام فقط",
          'Please enter your address': "يرجى ادخال العنوان",
          'address must be 30 char': 'العنوان يجب ألا يزيد عن 30 محرف',
          'Please enter your password': "يرجى ادخال كلمة المرور",
          'password must be at least 8 char':
              'كلمة المرور يجب ألا تقل عن 8 محارف',
          'password must be more than 12 char':
              'كلمة المرور يجب ألا تزيد عن 12 محرف',

          //search

          'Search': "البحث",
          'Search in medicen': "ابحث في الأدوية",
          'enter medicen name': 'يرجى ادخال اسم الدواء',
          'Results': "النتائج",
          'Not Found': "غير موجود",

          //lan

          'Arabic': "عربي",
          'English': "انكليزي",
        },
        "en": {
          "0": "Start",
          "1": "Login",
          "2": "Phone",
          "3": "Password",
          "4": "Dont have an account ?",
          "5": "Register now",
          "6": "Sign in",

          //register
          "7": "Create acount",
          "8": "Name",
          "9": "Address",
          "10": "Sign up",
          "11": "Already have an account ? ",
          "12": "Welcome back",
          "13": "Category",

          // bottom nav bar
          "14": "Home",
          "15": "Cart",
          "16": "Favorite",
          "17": "Profile",

          //med
          "18": "Medicine",
          "19": "add to cart",
          "20": "Quantity",
          "21": "Send order",
          "22": "Total Price",
          "23": "Total Quantity",
          //profile
          "24": "My Account",
          'Change Language': "Change Language",
          "26": "Dark Mode",
          "27": "About App",
          "28": "Log Out",
          "29": "Are you sure to log out ?",
          "30": "Cancel",
          "31": "Continue",

          //order
          "32": "My Orders",
          "33": "Order Details",

          //delog
          "34": "Done",
          'Erorr': "Error",
          "36": "The order has been sent successfully",
          "37": "The cart is empty, please add items to it",
          "38": "The item add to cart successfully",
          "39": "The item remove from the cart",

          //validetion
          "Please enter your name": "Please enter your name",
          'Please enter a valid phone number':
              "Please enter a valid phone number",
          'phone number must be 10 char': 'phone number must be 10 char',
          'Please enter your address': 'Please enter your address',
          'address must be 30 char': 'address must be 30 char',
          'Please enter your password': 'Please enter your password',
          'password must be at least 8 char':
              'password must be at least 8 char',
          'password must be more than 12 char':
              'password must be more than 12 char',

          //search
          'Search': 'Search',
          'enter medicen name': 'enter medicen name',
          'Search in medicen': 'Search in medicen',
          'Results': 'Results',
          'Not Found': 'Not Found',

          //lan
          'Arabic': 'Arabic',
          'English': 'English',
        },
      };
}
