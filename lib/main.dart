import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(anaSayfa());
}

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(221, 198, 53, 174),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 27, 25, 25),
          title: Text(
            "GÜNÜN FALI",
            style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
          ),
          centerTitle: true,
        ),
        body: govde(),
      ),
    );
  }
}

int sayi = 0;
List<String> yanitlar = [
  'NE VARSA HALINDA ÇIKSIN FALINDA',
  'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
  'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
  'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
  'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
  'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
  'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
  'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
  'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
  'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
  'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
  'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
  'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
  'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
  'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
  'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
];

class govde extends StatefulWidget {
  const govde({super.key});

  @override
  State<govde> createState() => _govdeState();
}

class _govdeState extends State<govde> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Image.asset("assets/images/falci.png",
              fit: BoxFit.contain, height: 150, width: 150),
        )),
        SizedBox(
          height: 30,
        ),
        Center(
            child: Column(
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  setState(() {
                    sayi = Random().nextInt(5) + 1;
                    print("Sayinin degeri : $sayi");
                  });
                },
                child: Card(
                  shadowColor: Colors.red,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite, color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Hemen, Aşk Falına Bak",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Card(
              child: InkWell(
                onTap: () {
                  setState(() {
                    sayi = Random().nextInt(5) + 6;
                    print("Sayinin degeri : $sayi");
                  });
                },
                child: Card(
                  shadowColor: Colors.red,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.attach_money, color: Colors.green),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Hemen, Para Falına Bak",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
              child: InkWell(
                onTap: () {
                  setState(() {
                    sayi = Random().nextInt(5) + 11;
                    print("Sayinin degeri : $sayi");
                  });
                },
                child: Card(
                  shadowColor: Colors.red,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.panorama_photosphere_select,
                              color: Color.fromARGB(255, 31, 237, 65)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Günlük Tavsiye",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: InkWell(
                onTap: () {
                  setState(() {
                    sayi = 0;
                    print("Sayinin degeri : $sayi");
                  });
                },
                child: Card(
                  shadowColor: Colors.red,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.charging_station_sharp,
                              color: Color.fromARGB(255, 1, 1, 1)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Sıfırla",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(yanitlar[sayi],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat")),
            )
          ],
        )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
