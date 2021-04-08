import 'package:riwayat/models/category.dart';
import 'package:riwayat/models/imam.dart';
import 'package:riwayat/models/img_book.dart';
import 'package:riwayat/models/questions.dart';
import 'package:riwayat/models/subcategory.dart';
import 'appcolors.dart';

class Utils {
  static List<Imam> getMockedImam() {
    return [
      //cat1
      Imam(
        name: "الإمام قالون",
        imgName: "imam1",
        color: AppColors.CAT1,
      ),
      Imam(
        name: "الإمام ورش",
        imgName: "imam2",
        color: AppColors.CAT2,
      ),
      Imam(
        name: "الإمام إبن كثير",
        imgName: "imam3",
        color: AppColors.CAT3,
      ),
      Imam(
        name: "الإمام أبي عمرو البصري",
        imgName: "imam4",
        color: AppColors.CAT4,
      ),
      Imam(
        name: "الإمام شعبة ",
        color: AppColors.CAT5,
        imgName: "imam5",
      ),
      Imam(
        name: "الإمام حفص",
        imgName: "imam6-7",
        color: AppColors.CAT7,
      ),
    ];
  }

  static List<Category> getMockedCategories() {
    return [
      //cat1
      Category(
        color: AppColors.CAT1,
        name: "أصول رواية الإمام قالون عن نافع من طريق الشاطبية",
        imgName1: "cat1",
        imgName2: "cat1_1",
        imgName3: "cat1_1_1",
        imgBook:[
          ImgBook("im1_001"),
          ImgBook("im1_002"),
          ImgBook("im1_003"),
          ImgBook("im1_004"),        ImgBook("im1_005"),
        ],
        questions: [
          Questions(
              "amjad0",
              "dsfhdsjfkj",
              "kjdsfkdsjf",
              "kjdsfsdkj",
              "kjsdf",
              "jdksfhsdjk"),
          Questions(
              "amjad1",
              "dsfhdsjfkj",
              "kjdsfkdsjf",
              "kjdsfsdkj",
              "kjsdf",
              "jdksfhsdjk"),
          Questions(
              "amjad2",
              "dsfhdsjfkj",
              "kjdsfkdsjf",
              "kjdsfsdkj",
              "kjsdf",
              "jdksfhsdjk"),
        ],
        subCategories: [
          SubCategory(
            numberOFPart: 1,
            name: "الأول: الاستعاذة والبسملة",
          ),
          SubCategory(
            numberOFPart: 2,
            name: "الباب الثاني: المد والقصر",
          ),
          SubCategory(
            numberOFPart: 3,
            name: "الباب الثالث: ميم الجمع",
          ),
          SubCategory(
            numberOFPart: 4,
            name: "الباب الرابع: التقاء الساكنين",
          ),
          SubCategory(
            numberOFPart: 5,
            name: "الباب الخامس: السكت والإدراج",
          ),
          SubCategory(
            numberOFPart: 6,
            name: "الباب السادس: لفظ هو وهي",
          ),
          SubCategory(
            numberOFPart: 7,
            name: "الباب السابع: لفظ النبي",
          ),
          SubCategory(
            numberOFPart: 8,
            name: "الباب الثامن: الألفات السبعة",
          ),
          SubCategory(
            numberOFPart: 9,
            name: "الباب التاسع: حكم لفظ أنا",
          ),
          SubCategory(
            numberOFPart: 10,
            name: "الباب العاشر: الهمزتين من كلمة",
          ),
          SubCategory(
            numberOFPart: 11,
            name: "الباب الحادي عشر: الهمزتين من كلمتين",
          ),
          SubCategory(
            numberOFPart: 12,
            name: "الباب الثاني عشر: نقل حركة الهمزة للساكن قبلها",
          ),
          SubCategory(
            numberOFPart: 13,
            name: "الباب الثالث عشر: الإظهار والإدغام",
          ),
          SubCategory(
            numberOFPart: 14,
            name: "الباب الرابع عشر: الفتح والإمالة",
          ),
          SubCategory(
            numberOFPart: 15,
            name: "الباب الخامس عشر: هاء الكناية",
          ),
          SubCategory(
            numberOFPart: 16,
            name: "الباب السادس عشر: الهمز المفرد",
          ),
          SubCategory(
            numberOFPart: 17,
            name: "الباب السابع عشر: ياءات الإضافة",
          ),
          SubCategory(
            numberOFPart: 18,
            name: "الباب الثامن عشر: ياءات الزوائد",
          ),
          SubCategory(
            numberOFPart: 19,
            name:
                "الباب التاسع عشر: كلمات مطردة خالف فيها الإمام قالون الإمام حفص",
          ),
        ],
      ),
      //cat2
      Category(
          color: AppColors.CAT2,
          name: "أصول رواية الإمام ورش عن نافع من طريق الشاطبية",
          imgName1: "cat2",
          imgName2: "cat2_1",
          imgName3: "cat2_1_1",
          imgBook:[
            ImgBook("cat2"),
            ImgBook("cat2"),
            ImgBook("cat2"),
          ],
        questions: [
          Questions(
              "ahmed0",
              "dsfhdsjfkj",
              "kjdsfkdsjf",
              "kjdsfsdkj",
              "kjsdf",
              "jdksfhsdjk"),
          Questions(
              "ahmed1",
              "dsfhdsjfkj",
              "kjdsfkdsjf",
              "kjdsfsdkj",
              "kjsdf",
              "jdksfhsdjk"),
          Questions(
              "ahmed2",
              "dsfhdsjfkj",
              "kjdsfkdsjf",
              "kjdsfsdkj",
              "kjsdf",
              "jdksfhsdjk"),
        ],
          subCategories: [
            SubCategory(
              numberOFPart: 1,
              name: "الباب الأول: الاستعاذة والبسملة",
            ),
            SubCategory(
              numberOFPart: 2,
              name: "الباب الثاني: المد والقصر",
            ),
            SubCategory(
              numberOFPart: 3,
              name: "الباب الثالث: ميم الجمع",
            ),
            SubCategory(
              numberOFPart: 4,
              name: "الباب الرابع: التقاء الساكنين",
            ),
            SubCategory(
              numberOFPart: 5,
              name: "الباب الخامس: السكت والإدراج",
            ),
            SubCategory(
              numberOFPart: 6,
              name: "الباب السادس: لفظ النبي",
            ),
            SubCategory(
              numberOFPart: 7,
              name: "الباب السابع: نقل حركة الهمزة للساكن قبلها",
            ),
            SubCategory(
              numberOFPart: 8,
              name: "الباب الثامن: حكم لفظ ءالآن",
            ),
            SubCategory(
              numberOFPart: 9,
              name: "الباب التاسع: الهمز المفرد",
            ),
            SubCategory(
              numberOFPart: 10,
              name: "الباب العاشر: الهمزتين من كلمة",
            ),
            SubCategory(
              numberOFPart: 11,
              name: "الباب الحادي عشر: الاستفهام المكرر في القرآن الكريم",
            ),
            SubCategory(
              numberOFPart: 12,
              name: "الباب الثاني عشر: الهمزتين من كلمتين",
            ),
            SubCategory(
              numberOFPart: 13,
              name: "الباب الثالث عشر: الراءات",
            ),
            SubCategory(
              numberOFPart: 14,
              name: "الباب الرابع عشر: اللامات",
            ),
            SubCategory(
              numberOFPart: 15,
              name: "الباب الخامس عشر: الفتح والإمالة",
            ),
            SubCategory(
              numberOFPart: 16,
              name: "الباب السادس عشر: الإظهار والإدغام",
            ),
            SubCategory(
              numberOFPart: 17,
              name: "الباب السابع عشر: حكم لفظ أنا",
            ),
            SubCategory(
              numberOFPart: 18,
              name: "الباب الثامن عشر: الألفات السبعة",
            ),
            SubCategory(
              numberOFPart: 19,
              name: "الباب التاسع عشر: هاء الكناية",
            ),
            SubCategory(
              numberOFPart: 20,
              name: "الباب العشرين: ياءات الإضافة",
            ),
            SubCategory(
              numberOFPart: 21,
              name: "الباب الحادي والعشرين: ياءات الزوائد",
            ),
            SubCategory(
              numberOFPart: 22,
              name:
                  "الباب الثاني والعشرين: كلمات مطردة خالف فيها الإمام ورش الإمام حفص",
            ),
          ]),
      //cat3
      Category(
          color: AppColors.CAT3,
          name: "أصول رواية الإمام ابن كثير من طريق الشاطبية",
          imgName1: "cat3",
          imgName2: "cat3_1",
          imgName3: "cat3_1_1",
          imgBook:[
            ImgBook("cat3"),
            ImgBook("cat3"),
            ImgBook("cat3"),
          ],
          questions: [
            Questions(
               "ali0",
                "dsfhdsjfkj",
                "kjdsfkdsjf",
                "kjdsfsdkj",
                 "kjsdf",
              "jdksfhsdjk"),
            Questions(
                "ali1",
                "dsfhdsjfkj",
                "kjdsfkdsjf",
                "kjdsfsdkj",
                "kjsdf",
                "jdksfhsdjk"),
            Questions(
                "ali2",
                "dsfhdsjfkj",
                "kjdsfkdsjf",
                "kjdsfsdkj",
                "kjsdf",
                "jdksfhsdjk"),
          ],
          subCategories: [
            SubCategory(
              numberOFPart: 1,
              name: "الباب الأول: الاستعاذة والبسملة",
            ),
            SubCategory(
              numberOFPart: 2,
              name: "الباب الثاني: المد والقصر",
            ),
            SubCategory(
              numberOFPart: 3,
              name: "الباب الثالث: ميم الجمع",
            ),
            SubCategory(
              numberOFPart: 4,
              name: "الباب الرابع: التقاء الساكنين",
            ),
            SubCategory(
              numberOFPart: 5,
              name: "الباب الخامس: السكت والإدراج",
            ),
            SubCategory(
              numberOFPart: 6,
              name: "الباب السادس: الألفات السبعة",
            ),
            SubCategory(
              numberOFPart: 7,
              name: "الباب السابع: الهمزتين من كلمة",
            ),
            SubCategory(
              numberOFPart: 8,
              name: "الباب الثامن: الاستفهام المكرر في القرآن الكريم",
            ),
            SubCategory(
              numberOFPart: 9,
              name: "الباب التاسع: الهمزتين من كلمتين",
            ),
            SubCategory(
              numberOFPart: 10,
              name: "الباب العاشر: نقل حركة الهمزة للساكن قبلها",
            ),
            SubCategory(
              numberOFPart: 11,
              name: "الباب الحادي عشر: الإظهار والإدغام",
            ),
            SubCategory(
              numberOFPart: 12,
              name: "لباب الثاني عشر: الهمز المفرد",
            ),
            SubCategory(
              numberOFPart: 13,
              name: "الباب الثالث عشر: هاء الكناية",
            ),
            SubCategory(
              numberOFPart: 14,
              name: "الباب الرابع عشر: الفتح والإمالة",
            ),
            SubCategory(
              numberOFPart: 15,
              name: "الباب الخامس عشر: الوقف على مرسوم الخط",
            ),
            SubCategory(
              numberOFPart: 16,
              name: "الباب السادس عشر: تاءات الإمام البزي",
            ),
            SubCategory(
              numberOFPart: 17,
              name: "الباب السابع عشر: تشديد النون",
            ),
            SubCategory(
              numberOFPart: 18,
              name: "الباب الثامن عشر: ياءات الإضافة",
            ),
            SubCategory(
              numberOFPart: 19,
              name: "الباب التاسع عشر: ياءات الزوائد",
            ),
            SubCategory(
              numberOFPart: 20,
              name:
                  "الباب العشرين: كلمات مطردة خالف فيها الإمام ابن كثير الإمام حفص",
            ),
            SubCategory(
              numberOFPart: 21,
              name: "الباب الحادي والعشرين: التكبير لابن كثير",
            ),
          ]),
      //cat4
      Category(
          color: AppColors.CAT4,
          name: "أصول رواية الإمام أبي عمرو البصري من طريق الشاطبية",
          imgName1: "cat4",
          imgName2: "cat4_1",
          imgName3: "cat4_1_1",

          subCategories: [
            SubCategory(
              numberOFPart: 1,
              name: "الباب الأول: الاستعاذة والبسملة",
            ),
            SubCategory(
              numberOFPart: 2,
              name: "الباب الثاني: المد والقصر",
            ),
            SubCategory(
              numberOFPart: 3,
              name: "الباب الثالث: ميم الجمع",
            ),
            SubCategory(
              numberOFPart: 4,
              name: "الباب الرابع: التقاء الساكنين",
            ),
            SubCategory(
              numberOFPart: 5,
              name: "الباب الخامس: السكت والإدراج",
            ),
            SubCategory(
              numberOFPart: 6,
              name: "الباب السادس: لفظ هو وهي",
            ),
            SubCategory(
              numberOFPart: 7,
              name: "الباب السابع: الألفات السبعة",
            ),
            SubCategory(
              numberOFPart: 8,
              name: "الباب الثامن: الهمزتين من كلمة",
            ),
            SubCategory(
              numberOFPart: 9,
              name: "الباب التاسع: الاستفهام المكرر في القرآن الكريم",
            ),
            SubCategory(
              numberOFPart: 10,
              name: "الباب العاشر: الهمزتين من كلمتين",
            ),
            SubCategory(
              numberOFPart: 11,
              name: "الباب الحادي عشر: نقل حركة الهمزة للساكن قبلها",
            ),
            SubCategory(
              numberOFPart: 12,
              name: "الباب الثاني عشر: الهمز المفرد",
            ),
            SubCategory(
              numberOFPart: 13,
              name: "الباب الثالث عشر: هاء الكناية",
            ),
            SubCategory(
              numberOFPart: 14,
              name: "الباب الرابع عشر: الفتح والإمالة",
            ),
            SubCategory(
              numberOFPart: 15,
              name: "الباب الخامس عشر: الإظهار والإدغام",
            ),
            SubCategory(
              numberOFPart: 16,
              name: "الباب السادس عشر: الوقف على مرسوم الخط",
            ),
            SubCategory(
              numberOFPart: 17,
              name: "الباب السابع عشر: ياءات الإضافة",
            ),
            SubCategory(
              numberOFPart: 18,
              name: "الباب الثامن عشر: ياءات الزوائد",
            ),
            SubCategory(
              numberOFPart: 19,
              name:
                  "الباب التاسع عشر: كلمات مطردة خالف فيها الإمام أبو عمرو البصري الإمام حفص",
            ),
          ]),
      //cat5
      Category(
          color: AppColors.CAT5,
          name: "أصول رواية الإمام شعبة عن عاصم من طريق الشاطبية",
          imgName1: "cat5",
          imgName2: "cat5_1",
          imgName3: "cat5_1_1",
          subCategories: [
            SubCategory(
              numberOFPart: 1,
              name: "الباب الأول: الاستعاذة والبسملة",
            ),
            SubCategory(
              numberOFPart: 2,
              name: "الباب الثاني: المد والقصر",
            ),
            SubCategory(
              numberOFPart: 3,
              name: "الباب الثالث: ميم الجمع",
            ),
            SubCategory(
              numberOFPart: 4,
              name: "الباب الرابع: السكت والإدراج",
            ),
            SubCategory(
              numberOFPart: 5,
              name: "الباب الخامس: الإدغام",
            ),
            SubCategory(
              numberOFPart: 6,
              name: "الباب السادس: هاء الكناية",
            ),
            SubCategory(
              numberOFPart: 7,
              name: "الباب السابع: الفتح والإمالة",
            ),
            SubCategory(
              numberOFPart: 8,
              name: "الباب الثامن: الهمز المفرد",
            ),
            SubCategory(
              numberOFPart: 9,
              name: "الباب التاسع: الهمزتين من كلمة",
            ),
            SubCategory(
              numberOFPart: 10,
              name: "الباب العاشر: الألفات السبعة",
            ),
            SubCategory(
              numberOFPart: 11,
              name: "الباب الحادي عشر: ياءات الإضافة",
            ),
            SubCategory(
              numberOFPart: 12,
              name: "الباب الثاني عشر: ياءات الزوائد",
            ),
            SubCategory(
              numberOFPart: 13,
              name: "الباب الثالث عشر: كلمات مطردة خالف فيها الإمام شعبة الإمام حفص",
            ),
          ]),
      //cat6
      Category(
          color: AppColors.CAT6,
          name:
              "أصول رواية الإمام حفص عن عاصم من طريق الشاطبية للدورات المبتدئة",
          imgName1: "cat6",
          imgName2: "cat6_1",
          imgName3: "cat6_1_1",
          subCategories: [
            SubCategory(
              numberOFPart: 1,
              name: "الباب الأول: فضل تلاوة القرآن الكريم",
            ),
            SubCategory(
              numberOFPart: 2,
              name: "الباب الثاني: آداب تلاوة القرآن الكريم",
            ),
          ]),
      //cat7
      Category(
          color: AppColors.CAT7,
          name: "أصول رواية الإمام حفص عن عاصم من طريق الشاطبية للدورات العليا",
          imgName1: "cat7",
          imgName2: "cat7_1",
          imgName3: "cat7_1_1",
          subCategories: [
            SubCategory(
              numberOFPart: 1,
              name: "الباب الأول: فضل تلاوة القرآن الكريم",
            ),
            SubCategory(
              numberOFPart: 2,
              name: "الباب الثاني: آداب تلاوة القرآن الكريم",
            ),
          ]),
    ];
  }
}
