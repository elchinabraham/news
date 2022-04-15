import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  static const routeName = '/news-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (x) {},
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: const Text('Copy Text'),
                onTap: () {},
              ),
              PopupMenuItem<int>(
                value: 1,
                child: const Text('Add Favorite'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                'https://cdn.oxu.az/uploads/W1siZiIsIjIwMjIvMDQvMTMvMTIvMjUvMTMvNWYyNjExZGUtOTRlMS00MDQyLWI0YzYtZGVjYmFiYTJmMTQzL1doYXRzQXBwIEltYWdlIDIwMjItMDQtMTMgYXQgMTEuMDguMDIgKDEpLmpwZWciXSxbInAiLCJlbmNvZGUiLCJqcGciLCItcXVhbGl0eSA4MCJdLFsicCIsInRodW1iIiwiNjIweDQxMyMiXV0?sha=4b201032df2d17ea',
                fit: BoxFit.fitWidth,
              ),
            ),
            ListTile(
              title: const Text(
                """

Pakistan Azərbaycan əlaqələrinin tarixi kökləri
                """,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                """Bu gün bir pakistanlı satıcı ilə söhbətim zamanı bu sualı ünvanladım. Pakistanlılar bizi niyə sevir? Aldığım cavab mənə çoxdan oxuduğum bir məqaləni xatırlatdı. Pakistan xalqı ilə könül bağlarımızın Hacı Zeynalabdin Tağıyevlə bağlı olduğunu bilirdim amma ilk könül bağlarının yaranma tarixini açığı unutmuşdum. Əslində bu sualın bir çox cavabı var.""",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
              child: Text(
                """       Mən Pakistanlıların bizi ilk sevdiyi taixdən danışacağam. Babur Şahın dönəmindən. Qazi Zahirəddin Məhəmməd Babur Şah (14 fevral 1483 - 26 dekabr 1530) — Böyük Moğol İmperiyasının qurucusu və ilk hökmdarıdır. Baburun Çağatay türkcəsində yazdığı və həyatından xronoloji olaraq bəhs etdiyi Baburnamə əsəri Türk ədəbiyyatı tarixində önəmli yerə sahibdir. Xətti Babur deyilən yazı sistemini təkmilləşdirən Babur eyni zamanda Çağatay türkcəsində yazılmış ədəbiyyatın Əlişir Nəvaidən sonra ən böyük şairi hesab olunur.
      
      Babur ata tərəfdən Teymurilər sülaləsindən, ana tərəfdən isə Çingizlilər sülaləsindəndir. Baburun atası Əmir Teymurun nəvəsi olan Ömər Şeyx Mirzə Barlas idi. Baburun anası isə Çingizlilər nəslindən olan Yunus xanın qızı Qutluq Nigar xanım idi.
      
      Baburun ata tərəfdən mənsub olduğu Teymurilər sülaləsinin əsasını qoyan Əmir Teymur əslən Barlas boyundandır. Barlaslar Orta Asiyada yaşayan türkləşmiş monqol boyu idi.
      
      Babur 14 fevral 1483-cü ildə hal hazırda Özbəkistanda yerləşən Əndican şəhərində anadan olub. Həmin vaxtlar Teymurilər dövləti özünün keçmiş qüdrətini itirmiş, yalnız Mərkəzi Asiyanın kiçik bir bölgəsində hakimiyyətini qoruya bilmişdi. Babur 1494-cü ildə atasının ölümündən sonra 12 yaşında olarkən Fərqanəyə hakim olur. Onun Fərqanyə hakimi olmasını istəməyən Səmərqənd hakimi olan əmisi Sultan Əhməd və Daşkənd hakimi olan dayısı Məhəmməd Fərqanəyə hücum edirlər. Babur atasının sərkərdələrinin köməyi ilə bu hücumları dəf edə bilir.
      
      Babur 1497-ci ildə Səmərqəndi ələ keçirdi. Buna baxmayaraq Özbək xanı Şeybani xanla mübarizədə uğur qazanmayaraq məğlub olur.1501-ci ildə Səmərqəndi yenidən ələ keçirsə də, 1503-cü ildə özbəklər növbəti dəfə şəhəri tuturlar.
      
      Şeybani xan Teymurilər soyundan gələn şəxslərin idarə etdiyi bölgələri bir-bir ələ keçirir. Nəticədə Teymurilər önəmli şəhərləri olan Səmərqənd, Buxara və Heratdakı hakimiyyətini itirdilər. Bölgədə Teymurilər sülaləsindən yalnız Babur hakimiyyətini qoruya bilir. Buna baxmayaraq Babur da Şeybani xanla mübarizədə uğur qazanmayaraq Pamir dağları istiqamətində geri çəkilir. Ətrafına 20000 əsgər topladıqdan sonra Kabilə daxil olur və burada özünü şah elan etir. Babur ilk dəfə 1508-ci ilin sentyabr ayında Hindistana yürüş etir. Üç ay davam edən bu yürüş nəticəsində Babur xeyli qənimət əldə edib, Hindistanla yaxından tanış olmaq fürsətini qazanır.
      
      Babur, Timurilər dövlətini dirçəltmək üçün Kabildə hakimiyyət toplamaq niyyətindədir. Ancaq Şeybani xanla döyüşmək üçün lazımi gücə malik deyildir.
      
      Bu arada Şah İsmayılın dövlət ərazisi sürətlə genişlənirdi. Şeybaninin gözü isə Şah İsmayılın torpaqlarında idi. Özünü sünni müdafiəçisi hesab edən Şeybani Xan Şah İsmayıla təhdidvarı məktublar yazıb, sünniliyə dönməyə çağırır. Bunun üzərinə Şah İsmayıl qəzəblənərək, Şeybani Xanın üstündə gedir. Şah ordusu Şeybani Xanın Mervə çəkilməsinə səbəb olur. Şah İsmayılın qəzəbi soyumur və ordusunu Mervə, Şeybani xanın arxasına göndərir. Müharibə nəticəsində özbəklər böyük bir məğlubiyyətə uğrayır və Şeybani Xan bu müharibədə öldürülür. Kəlləsindən Şah İsmayıla kubok düzəldilib hədiyyə olunur.
      
      Bundan xəbər tutan Babur Şah üçün bu, qaçırılmaması bir fürsət idi. Çünki, Babur Şah öz torpaqlarını bərpa etməyi ümid edirdi. Özbəklərin üzərinə getdikdə hələ də özbəklərin böyük qüvvəsi olduğunu görür və geri çəkilməyə məcbur qalır. Babur Şah Geri döndükdə Şah İsmayıl tərəfindən ona zəngin hədiyyələrlə göndərdiyini görür. Bəzi qaynaqara görə hədiyyələrin içində çox dəyərli bir hədiyyə də vardır ki, bu da Babur Şahı çox qürurlandırır. Belə ki, Babur Şahın bacısı Xanzadə Bəyim də hədiyyələrin aralarında idi.
      
      Xanzadə Begüm Şeybani Xanın həyat yoldaşı idi. Şeybani xan Babur Şaha acıq olaraq və süiqəstdən qorxuğu üçün Babur Şahın bacısından boşanmış və Seyid Hadi adlı bir insanla evləndirmişdi. Seyid Hadi Merv döyüşündə öldürüldükdə, Xanzadə Begüm də Şah İsmayılın əlinə keçir və hörmət olaraq onu hədiyyələrlə birgə Babur Şaha göndərir. Bəzi rəvayətlərə görə Şah İsmayıl Babur Şaha yazdığı məktubda düşmanın belə namusu toxunulmazdır deyə yazdığı bildirilir.
      
      Şah İsmayıl Babur Şaha kömək etməyə hazır olduğunu bildirir.
      
      Səfəvilərin də köməyi ilə 1512-1513-cü illərdə Buxara və Səmərqənd ələ keçirildi. Belə ki, Şah İsmayıl, Baburun tələbi ilə Sufi oğlu Əhmet Bəy Ustaclu və Şahruh Bəy Afşarı 5 min Qızılbaşla Belhə göndərir. Orada Şahın sərkərdəsi Bayram Bəylə görüşüb döyüşə hazırlaşırlar. Babur Belhə gəlir və Səfəvi ordusu ilə birləşib Xorasanı fəth edirlər. Onlar Ceyhun çayını keçərək Səmərqəndə yönəlirlər. Ubeydullah Xan, Teymur Xan və Canibeg Sultan şəhər xaricində 60 min adam ilə Səmərqəndi müdafiə etmək üçün ordu qururlar. Müharibə nəticəsində Babur və Səfəvi qüvvələri Səmərqəndi ələ keçirirlər.
      
      Orta Asiyada bir o qədər də uğur qazana bilməyən Babur Qızılbaşların himayəsi ilə Kabulda hakimiyyəti ələ keçirir və sonra Qəndəhar uğrunda mübarizə aparıb, oranı da işğal etməyə nail olur. Babur Şah İsmayılın hakimiyyətdə olduğu bütün dövrlərdə onunla əlaqələrini kəsmir. Tarixi mənbələrə əsaslanaraq qətiyyətlə deyə bilərik ki, Babur şiə məzhəbini qəbul etmiş, hətta qızılbaşların paltarını geyərək Səmərqənddə on iki imamın adına xütbə də oxumuşdur.
      
      Babur şah Təhmasib şahın hakimiyyətinin ilk illərində Dehli və Akra şəhərlərini ələ keçirib özünü Hindistanın imperatoru elan edir. Bundan sonra dövlətlərarası əlaqə və nümayəndələrin gediş-gəlişləri daha da güclənir və Təhmasib şah özbəklərə qarşı mübarizəni gücləndirdikdən sonra da əlaqələr daha da yaxşılığa doğru irəliləməyə başlayır. Babur Şah 26 dekabr 1530-cu ildə Aqrada 47 yaşında olarkən öldü. Yerinə oğlu Sultan Hümayun keçir və bu dostluq qardaşlıq münasibətləri Şah İsmayılın oğlu Şah Təhmasib tərəfindən də davam etdirilir. Hətta Humayun taxtan devrilmək təhlükəsi ilə üzləşdiyi zaman onu Şah Təhmasibin dəstəyi xilas edir.
      
      Babur imperatorluğunun ərazisi indiki Hindistan, Pakistan, Banqladeş və Əfqanistanı əhatə etsə də məhz bu Pakistan respublikası özünü rəsmi olmasa da Babur imperatorluğunun davamçısı kimi görür. Pakistan xalqı isə iki xalqın könül bağlarının ilk toxumun məhz o dönəmdə atıldğını deyirlər. Onu da qeyd edim ki, Pakistanın Müdafiə sənayesi suda və quruda istifadə edilən, dağıdıcı gücə malik Babur adında raket istehsal edir.
      
      Son olaraq bir məlumatı da qeyd etmək lazımdır ki, Pakistan İslam Respublikası Azərbaycan torpaqlarını işğal etdiyi üçün Ermənistanı bir dövlət kimi tanımır və müharibə zamanı ehtiyac yaranarsa Pakistan ordusunun köməyə gəlməyə hazır olduğunu bildirirlər..
                """,
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Datetime:',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          '2022/04/15 12:30',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.source,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Author:',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          'Elchin Ibrahimli',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
