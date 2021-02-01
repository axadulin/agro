import 'package:agro/models/album_model.dart';
import 'package:agro/models/CategoryModel.dart';
import 'package:agro/models/resident_model.dart';
import 'package:flutter/material.dart';


final Color primaryColor = Color(0xff00A85A);
final Color greyColor = Color(0xff6E6F74);
final String rtmText = "   Viloyatda Marg‘ilon “Raqamli texnologiyalar markazi” texnoparkining yer maydoni 0.6 gektarni hamda 2 qavatli binosi 1,5 ming kv.m.ni tashkil etadi.\n   Loyiha qiymati 14.3 mlrd.\n   Markaz maqsadi – Yoshlarni IT sohasiga bo‘lgan qiziqishlarini yanada oshirish xamdv ularga ushbu yo‘nalishda chuqurroq bilim va ko‘nikmalar berish.\n   Bir million o'zbek dasturchilari loyihasi doirasida ushbu markaz orqali mutaxassislar chiqarish. Soxa vakillarini qo‘shimcha ish o‘rinlari bilan taʼminlash. Respublika va xalqaro miqiyosga IT maxsulotlari eksporti orqali iqtisodiyotni ko‘tarish. Xududiy muammolarga aynan ushbu markaz orqali foydali va samarali yechimlar taklif etish va amalga oshirish.\n   Texnopark binosi 120 dan ortiq ish o‘ringa mo‘ljallangan bo‘lib, 50 dan ortiq yangi axborot texnologiyalari sohasida xizmat ko‘rsatadigan korxonalarni joylashtirish uchun mo‘ljallangan. Mazkur Texnoparkda korxonalarga o‘z faoliyatini amalga oshirish uchun zarur infratuzilma, shu jumladan, zamonaviy laboratoriyalar, kovorking markaz hamda ofis maydonlari taqdim etilib, ularga raqamli texnologiyalar, marketing, yuridik va boshqa konsalting xizmatlari ko‘rsatiladi. Texnopark rezidentlari va oliy taʼlim muassasalari o‘rtasida o‘zaro kooperatsiya aloqalari yo‘lga qo‘yiladi. Texnopark rezidentlari tomonidan viloyatdagi Toshkent axborot texnologiyalari universiteti Farg‘ona filiali talabalari uchun turli xil amaliy mashg‘ulotlar, laboratoriya darslari o‘tkaziladi.";

int selectIndex = 0;

kTextStyle(
    {Color color = Colors.white,
      double size = 14,
      FontWeight fontWeight = FontWeight.normal,
      double letter = 0,
      double height = 1,
    }) {
  return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: letter,
      height: height
  );
}

List<String> homePhotos = [
  'images/rtm_1.jpg',
  'images/rtm_2.jpg',
  'images/rtm_3.jpg',
  'images/rtm_4.jpg',
  'images/rtm_5.jpg',
  'images/rtm_6.jpg',
  'images/rtm_7.jpg',
  'images/rtm_8.jpg',
];

List<CategoryModel> categoryModel = [
  CategoryModel(
      'assets/images/categories/agronomy.png',
      'Dexqonchilik'
  ),

  CategoryModel(
      'assets/images/categories/animalFarm.png',
      'Chorvachilik'
  ),
  CategoryModel(
      'assets/images/categories/chickenFarm.png',
      'Parrandachilik'
  ),
  CategoryModel(
      'assets/images/categories/fishFarm.png',
      'Baliqchilik'
  ),
  CategoryModel(
      'assets/images/categories/beeFarm.png',
      'Asalarichilik'
  ),
  CategoryModel(
      'assets/images/categories/rabbitFarm.png',
      'Quyonchilik'
  ),
  // CategoryModel(
  //     'images/start_up.png',
  //     'Start Up'
  // ),
  // CategoryModel(
  //     'images/imsoft.png',
  //     'imsoft'
  // ),
  // CategoryModel(
  //     'images/smm.jpg',
  //     'Video studiya'
  // )
];

// List<AlbumModel> albumModel = [
//   AlbumModel(
//       'Oshxona',
//       'images/album_24.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Sanoatni avtomatlashtirish',
//       'images/album_22.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Reception',
//       'images/album_4.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Laboratoriya xonasi',
//       'images/album_21.jpg',
//       ''
//   ),
//   AlbumModel(
//       '3D Modellashtirish',
//       'images/album_20.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Laboratoriya xonasi',
//       'images/album_19.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Muzokaralar xonasi',
//       'images/album_18.jpg',
//       ''
//   ),
//   AlbumModel(
//       'ART Studio',
//       'images/album_17.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Video Studio',
//       'images/album_16.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Call Center',
//       'images/album_15.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Cybersport xonasi',
//       'images/album_14.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Robototexnika xonasi',
//       'images/album_13.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Masofaviy ta\'lim xonasi',
//       'images/album_12.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Cybersport xonasi',
//       'images/album_11.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Infokiosk',
//       'images/album_10.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Suhbat uchun joylar',
//       'images/album_9.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Majlislar zali',
//       'images/album_8.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Muzokaralar xonasi',
//       'images/album_6.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Kutubxona',
//       'images/album_7.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Mobil dasturchilar bo`limi',
//       'images/album_1.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Web dasturchilar bo`limi',
//       'images/album_2.jpg',
//       ''
//   ),
//   AlbumModel(
//       'Kirish',
//       'images/album_23.jpg',
//       ''
//   ),
// ];

// List<ResidentModel> rahbariyat = [
//   ResidentModel(
//       image: 'images/res_30.png',
//       direction: 'Markaz direktori',
//       name: 'Djalilov Bahromjon Odiljonovich',
//       telNum: '99-367-64-14'
//   ),
//   ResidentModel(
//       image: 'images/res_31.png',
//       direction: 'Direktor o`rinbosari',
//       name: 'Maxsudov Islombek Axatjon o`g`li',
//       telNum: '97-210-35-25'
//   ),
//   ResidentModel(
//       image: 'images/res_32.png',
//       direction: 'Ish yurituvchi',
//       name: 'Turg`unov Salohiddin Jamol o`g`li',
//       telNum: '90-040-01-03'
//   ),
//   ResidentModel(
//       image: 'images/res_34.png',
//       direction: 'Hisobchi',
//       name: 'Usmonaliyev Ilhomjon Ikromjon o`g`li',
//       telNum: '99-030-56-98'
//   )
// ];

// List<ResidentModel> mobile = [
//   ResidentModel(
//       image: 'images/res_1.jpg',
//       direction: 'Android dasturchi',
//       name: 'Naziraliev Muhammadamin Shukurullo o`g`li',
//       telNum: '91-657-44-32'
//   ),
//   ResidentModel(
//       image: 'images/res_4.jpg',
//       direction: 'Android dasturchi',
//       name: 'Ergashev Javohir Inomjon o‘g‘li',
//       telNum: '99-362-29-10'
//   ),
//   ResidentModel(
//       image: 'images/res_2.jpg',
//       direction: 'IOS dasturchi',
//       name: 'Tursunov Muxammadyunus Muxammadrasul o‘g‘li',
//       telNum: '90-631-51-34'
//   ),
//   ResidentModel(
//       image: 'images/res_7.jpg',
//       direction: 'IOS dasturchi',
//       name: 'Topiboldiyev Raxmatillo Dilshodjon o‘g‘li',
//       telNum: '98-140-24-44'
//   ),
//   ResidentModel(
//       image: 'images/res_5.jpg',
//       direction: 'IOS dasturchi',
//       name: 'Azizov Shaxzodbek Shuxratjon o‘g‘li',
//       telNum: '97-446-59-66'
//   ),
// ];
//
// List<ResidentModel> web = [
//   ResidentModel(
//       image: 'images/res_6.jpg',
//       direction: 'Web dasturchi',
//       name: 'Yusufjonov Abdurahmon Yunusjon o‘g‘li',
//       telNum: '97-209-13 09'
//   ),
//   ResidentModel(
//       image: 'images/res_10.jpg',
//       direction: 'Web dasturchi',
//       name: 'Inomjonov Javohir Zokirjon o’g’li',
//       telNum: '97-210-55-25'
//   ),
//   ResidentModel(
//       image: 'images/res_36.jpg',
//       direction: 'Web & Desktop dasturchi',
//       name: 'G\'aniyev Sirojjon G\'ayratjon o\'g\'li',
//       telNum: '99-896-74-40'
//   )
// ];
//
// List<ResidentModel> designer = [
//   ResidentModel(
//       image: 'images/res_3.jpg',
//       direction: 'Web dizayner',
//       name: 'Matboboyev Kamron Samandarovich',
//       telNum: '99-997-12-10'
//   ),
//   ResidentModel(
//       image: 'images/res_18.jpg',
//       direction: 'Grafik dizayner',
//       name: 'Jakhongir Sagatov',
//       telNum: '90-160-80-90'
//   ),
//   ResidentModel(
//       image: 'images/res_15.jpg',
//       direction: 'UI/UX dizayner',
//       name: 'Abdulaziziov Fayzullo Hakimjon o’g’li',
//       telNum: '99-996-16-96'
//   ),
//   ResidentModel(
//       image: 'images/res_13.jpg',
//       direction: 'Grafik dizayner',
//       name: 'Mo’minov Abdusamad Bannobjon o’g’li',
//       telNum: '90-357-85-73'
//   ),
//   ResidentModel(
//       image: 'images/res_8.jpg',
//       direction: 'Web dizayner',
//       name: 'O‘rinboyev Elshodjon Ravshanjon o‘g‘li',
//       telNum: '90-272-95-92'
//   ),
// ];
//
// List<ResidentModel> oneCoder = [
//   ResidentModel(
//       image: 'images/res_9.jpg',
//       direction: 'OMUC IT Trener',
//       name: 'Boltaboyev Ilhomjon Dadajon o‘g‘li',
//       telNum: '90-163-41-22'
//   )
// ];
//
// List<ResidentModel> startUp = [
//   ResidentModel(
//       image: 'images/res_16.jpg',
//       direction: 'Start up',
//       name: 'Madg’oziyev Temurmalik Sherzod o’g’li',
//       telNum: '94-445-65-05'
//   ),
//   ResidentModel(
//       image: 'images/res_14.jpg',
//       direction: 'Start up',
//       name: 'Yuldashev Saidazimxon Abdua’zamxon o’g’li',
//       telNum: '91-658-87-76'
//   )
// ];
//
// List<ResidentModel> robotech = [
//   ResidentModel(
//       image: 'images/res_11.jpg',
//       direction: 'Robototexnik',
//       name: 'Tursunaliyev Murodiljon Adaxamjon o’g’li',
//       telNum: '91-655-77-05'
//   )
// ];
//
// List<ResidentModel> imsoft = [
//   ResidentModel(
//       image: 'images/res_17.jpg',
//       direction: 'C# Dasturchi',
//       name: 'Ahmadjonov Ibrohimjon Ilhomjon o’g’li',
//       telNum: '93-974-05-50'
//   ),
//   ResidentModel(
//       image: 'images/res_18.jpg',
//       direction: 'Grafik dizayner',
//       name: 'Jakhongir Sagatov',
//       telNum: '90-160-80-90'
//   ),
//   ResidentModel(
//       image: 'images/res_19.jpg',
//       direction: 'Android dasturchi',
//       name: 'Asraqulov Ilxomjon',
//       telNum: '90-111-88-28'
//   ),
//   ResidentModel(
//       image: 'images/res_4.jpg',
//       direction: 'Android dasturchi',
//       name: 'Ergashev Javohir Inomjon o‘g‘li',
//       telNum: '99-362-29-10'
//   ),
// ];
//
// List<ResidentModel> smm = [
//   ResidentModel(
//       image: 'images/res_33.png',
//       direction: 'Bosh video operator',
//       name: 'Xayitov Suxrobjon Farxodjon o`g`li',
//       telNum: '91-656-11-05'
//   ),
//   ResidentModel(
//       image: 'images/res_35.png',
//       direction: 'Montaj ustasi',
//       name: 'Akramov Ulug`bek Jahongir o`g`li',
//       telNum: '97-337-25-13'
//   )
// ];

// Map<int, List<ResidentModel>> resident = {
//   0: rahbariyat,
//   1: mobile,
//   2: web,
//   3: designer,
//   4: robotech,
//   5: oneCoder,
//   6: startUp,
//   7: imsoft,
//   8: smm
// };