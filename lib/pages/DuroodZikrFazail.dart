import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:aameen/widgets/player_widget.dart';
import 'package:connectivity/connectivity.dart';
import "package:flutter/material.dart";


class Afzaliat extends StatefulWidget {
  Afzaliat({Key key}) : super(key: key);

  @override
  _AfzaliatState createState() => _AfzaliatState();
}

class _AfzaliatState extends State<Afzaliat> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Container(
                        width: size.width * 0.8,
                        child: Text(
                          'درود کی فضیلت',
                          style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 22),
                          textAlign: TextAlign.center,
                        )),
                    subtitle: Container(
                      width: size.width * 0.8,
                      child: Text(
                        'حَدَّثَنَا هَنَّادٌ، حَدَّثَنَا قَبِيصَةُ، عَنْ سُفْيَانَ، عَنْ عَبْدِ اللَّهِ بْنِ مُحَمَّدِ بْنِ عَقِيلٍ، عَنِ الطُّفَيْلِ بْنِ أُبَيِّ بْنِ كَعْبٍ، عَنْ أَبِيهِ، قَالَ:‏‏‏‏ كَانَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِذَا ذَهَبَ ثُلُثَا اللَّيْلِ قَامَ،‏‏‏‏ فَقَالَ:‏‏‏‏ يَا أَيُّهَا النَّاسُ اذْكُرُوا اللَّهَ، ‏‏‏‏‏‏اذْكُرُوا اللَّهَ جَاءَتِ الرَّاجِفَةُ تَتْبَعُهَا الرَّادِفَةُ جَاءَ الْمَوْتُ بِمَا فِيهِ جَاءَ الْمَوْتُ بِمَا فِيهِ ، ‏‏‏‏‏‏قَالَ أُبَيٌّ:‏‏‏‏ قُلْتُ:‏‏‏‏ يَا رَسُولَ اللَّهِ،‏‏‏‏ إِنِّي أُكْثِرُ الصَّلَاةَ عَلَيْكَ فَكَمْ أَجْعَلُ لَكَ مِنْ صَلَاتِي ؟ فَقَالَ:‏‏‏‏ مَا شِئْتَ ، ‏‏‏‏‏‏قَالَ:‏‏‏‏ قُلْتُ:‏‏‏‏ الرُّبُعَ ؟ قَالَ:‏‏‏‏ مَا شِئْتَ فَإِنْ زِدْتَ فَهُوَ خَيْرٌ لَكَ ،‏‏‏‏ قُلْتُ:‏‏‏‏ النِّصْفَ ؟ قَالَ:‏‏‏‏ مَا شِئْتَ فَإِنْ زِدْتَ فَهُوَ خَيْرٌ لَكَ ،‏‏‏‏ قَالَ:‏‏‏‏ قُلْتُ:‏‏‏‏ فَالثُّلُثَيْنِ ؟ قَالَ:‏‏‏‏ مَا شِئْتَ فَإِنْ زِدْتَ فَهُوَ خَيْرٌ لَكَ ،‏‏‏‏ قُلْتُ:‏‏‏‏ أَجْعَلُ لَكَ صَلَاتِي كُلَّهَا،‏‏‏‏ قَالَ:‏‏‏‏ إِذًا تُكْفَى هَمَّكَ وَيُغْفَرُ لَكَ ذَنْبُكَ ،‏‏‏‏ قَالَ أَبُو عِيسَى:‏‏‏‏ هَذَا حَدِيثٌ حَسَنٌ صَحِيحٌ.',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0.01,
                ),
                Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Container(
                        width: size.width * 0.8,
                        child: Text(
                          'درود کی فضیلت ترجمہ',
                          style: TextStyle(
                              color: AppColors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 22),
                          textAlign: TextAlign.center,
                        )),
                    subtitle: Container(
                      width: size.width * 0.8,
                      child: Text(
                        'ابی بن کعب رضی الله عنہ کہتے ہیں کہ   جب دو تہائی رات گزر جاتی تو رسول اللہ صلی اللہ علیہ وسلم اٹھتے اور فرماتے: لوگو! اللہ کو یاد کرو، اللہ کو یاد کرو، کھڑکھڑانے والی آ گئی ہے اور اس کے ساتھ ایک دوسری آ لگی ہے، موت اپنی فوج لے کر آ گئی ہے۔ موت اپنی فوج لے کر آ گئی ہے“، میں نے عرض کیا: اللہ کے رسول! میں آپ پر بہت صلاۃ ( درود ) پڑھا کرتا ہوں سو اپنے وظیفے میں آپ پر درود پڑھنے کے لیے کتنا وقت مقرر کر لوں؟ آپ نے فرمایا: ”جتنا تم چاہو“، میں نے عرض کیا چوتھائی؟ آپ نے فرمایا: ”جتنا تم چاہو اور اگر اس سے زیادہ کر لو تو تمہارے حق میں بہتر ہے“، میں نے عرض کیا: آدھا؟ آپ نے فرمایا: ”جتنا تم چاہو اور اگر اس سے زیادہ کر لو تو تمہارے حق میں بہتر ہے، میں نے عرض کیا دو تہائی؟“ آپ نے فرمایا: ”جتنا تم چاہو اور اگر اس سے زیادہ کر لو تو تمہارے حق میں بہتر ہے، میں نے عرض کیا: وظیفے میں پوری رات آپ پر درود پڑھا کروں؟ ۔ آپ نے فرمایا: ”اب یہ درود تمہارے سب غموں کے لیے کافی ہو گا اور اس سے تمہارے گناہ بخش دیئے جائیں گے“۔ امام ترمذی کہتے ہیں: یہ حدیث حسن صحیح ہے',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0.01,
                ),
                Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Text(
                      'استغفار کی فضیلت',
                      style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Container(
                      width: size.width * 0.8,
                      child: Text(
                        '[عن عبدالله بن عباس:] مَن لزِم الاستغفارَ جعَل اللهُ له من كلِّ هَمٍّ فرَجًا، ومن كلِّ ضيقٍ مَخرَجًا، ورزَقه من حيثُ لا يَحتَسِبُالبغوي (٥١٦ هـ)، شرح السنة ٣/١٠٠ • يرويه الحكم بن مصعب بإسناده، وهو ضعيف • أخرجه أبو داود (١٥١٨)، والنسائي في «السنن الكبرى» (١٠٢٩٠)، وابن ماجه (٣٨١٩) واللفظ له، وعبدالله بن أحمد في «زوائد المسند',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0.01,
                ),
                Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Text(
                      'استغفار کی فضیلت ترجمہ',
                      style: TextStyle(
                          color: AppColors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Container(
                      width: size.width * 0.8,
                      child: Text(
                        'عبداللہ بن عباس رضی اللہ عنہما کہتے ہیں کہ   رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: جو کوئی استغفار کا التزام کر لے ۱؎ تو اللہ اس کے لیے ہر تنگی سے نکلنے اور ہر رنج سے نجات پانے کی راہ ہموار کر دے گا اور اسے ایسی جگہ سے رزق عطا فرمائے گا، جس کا وہ تصور بھی نہیں کر سکتا',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0.01,
                ),
                StreamBuilder(
                  stream: Connectivity().onConnectivityChanged,
                  builder: (BuildContext ctxt,
                      AsyncSnapshot<ConnectivityResult> snapShot) {
                    if (!snapShot.hasData) return Container();
                    var result = snapShot.data;
                    print(result);
                    switch (result) {
                      case ConnectivityResult.mobile:
                      case ConnectivityResult.wifi:
                        return Column(
                          children: [
                            Container(
                              color: Colors.white70,
                              child: ListTile(
                                title: Text(
                                  'درود کی فضیلت',
                                  style: TextStyle(
                                      color: AppColors.blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: PlayerWidget(
                                    url:
                                        'https://firebasestorage.googleapis.com/v0/b/aameen-45c6f.appspot.com/o/media.io_fazilat.mp3?alt=media&token=aa6b2680-f270-4ed6-aa1b-def3a782aa81'),
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 0.01,
                            ),
                            Container(
                              color: Colors.white70,
                              child: ListTile(
                                title: Text(
                                  'استغفار کی فضیلت',
                                  style: TextStyle(
                                      color: AppColors.blue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: PlayerWidget(
                                    url:
                                        'https://firebasestorage.googleapis.com/v0/b/aameen-45c6f.appspot.com/o/media.io_zikr%20fazilat.mp3?alt=media&token=be2b4321-2731-4146-a404-63e485119b25'),
                              ),
                            ),
                          ],
                        );
                        break;
                      case ConnectivityResult.none:
                      default:
                        return Container();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
