class Ayat{
  String arabic;
  String english;
  String urdu;
  String ayatnum;
  bool englishState = false;
  bool urduState= false;
  Ayat({this.arabic, this.english, this.urdu, this.ayatnum});
}

final List<Ayat> surahMulk = [
  new Ayat(
    ayatnum: 'ayat number: 1',
    arabic: 'تَبٰرَكَ الَّذِىۡ بِيَدِهِ الۡمُلۡكُ وَهُوَ عَلٰى كُلِّ شَىۡءٍ قَدِيۡرٌ ۙ‏',
    urdu: 'وہ (خدا) جس کے ہاتھ میں بادشاہی ہے بڑی برکت والا ہے۔ اور وہ ہر چیز پر قادر ہے',
    english: 'Blessed is He in whose hand is dominion, and He is over all things competent.',
  ),
  new Ayat(
    ayatnum: 'ayat number: 2',
    arabic: 'اۨلَّذِىۡ خَلَقَ الۡمَوۡتَ وَالۡحَيٰوةَ لِيَبۡلُوَكُمۡ اَيُّكُمۡ اَحۡسَنُ عَمَلًا  ؕ وَهُوَ الۡعَزِيۡزُ الۡغَفُوۡرُۙ',
    english: '[He] who created death and life to test you [as to] which of you is best in deed - and He is the Exalted in Might, the Forgiving',
    urdu: 'اسی نے موت اور زندگی کو پیدا کیا تاکہ تمہاری آزمائش کرے کہ تم میں کون اچھے عمل کرتا ہے۔ اور وہ زبردست (اور) بخشنے والا ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 3',
    arabic: 'الَّذِىۡ خَلَقَ سَبۡعَ سَمٰوٰتٍ طِبَاقًا‌ؕ مَا تَرٰى فِىۡ خَلۡقِ الرَّحۡمٰنِ مِنۡ تَفٰوُتٍ‌ؕ فَارۡجِعِ الۡبَصَرَۙ هَلۡ تَرٰى مِنۡ فُطُوۡرٍ',
    english: '[And] who created seven heavens in layers. You do not see in the creation of the Most Merciful any inconsistency. So return [your] vision [to the sky]; do you see any breaks?',
    urdu: 'اس نے سات آسمان اوپر تلے بنائے۔ (اے دیکھنے والے) کیا تو (خدا) رحمٰن کی آفرنیش میں کچھ نقص دیکھتا ہے؟ ذرا آنکھ اٹھا کر دیکھ بھلا تجھ کو (آسمان میں) کوئی شکاف نظر آتا ہے؟',
  ),
  new Ayat(
    ayatnum: 'ayat number: 4',
    arabic: 'ثُمَّ ارۡجِعِ الۡبَصَرَ كَرَّتَيۡنِ يَنۡقَلِبۡ اِلَيۡكَ الۡبَصَرُ خَاسِئًا وَّهُوَ حَسِيۡرٌ‏ ',
    english: 'Then return [your] vision twice again. [Your] vision will return to you humbled while it is fatigued.',
    urdu: 'پھر دو بارہ (سہ بارہ) نظر کر، تو نظر (ہر بار) تیرے پاس ناکام اور تھک کر لوٹ آئے گی',
  ),
  new Ayat(
    ayatnum: 'ayat number: 5',
    arabic: 'وَلَـقَدۡ زَيَّـنَّا السَّمَآءَ الدُّنۡيَا بِمَصَابِيۡحَ وَجَعَلۡنٰهَا رُجُوۡمًا لِّلشَّيٰطِيۡنِ‌ وَاَعۡتَدۡنَا لَهُمۡ عَذَابَ السَّعِيۡرِ‏',
    english: 'And We have certainly beautified the nearest heaven with stars and have made [from] them what is thrown at the devils and have prepared for them the punishment of the Blaze.',
    urdu: 'اور ہم نے قریب کے آسمان کو (تاروں کے) چراغوں سے زینت دی۔ اور ان کو شیطان کے مارنے کا آلہ بنایا اور ان کے لئے دہکتی آگ کا عذاب تیار کر رکھا ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 6',
    arabic: 'وَلِلَّذِيۡنَ كَفَرُوۡا بِرَبِّهِمۡ عَذَابُ جَهَنَّمَ‌ؕ وَبِئۡسَ الۡمَصِيۡرُ‏ ',
    english: 'And for those who disbelieved in their Lord is the punishment of Hell, and wretched is the destination.',
    urdu: 'اور جن لوگوں نے اپنے پروردگار سے انکار کیا ان کے لئے جہنم کا عذاب ہے۔ اور وہ برا ٹھکانہ ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 7',
    arabic: 'اِذَاۤ اُلۡقُوۡا فِيۡهَا سَمِعُوۡا لَهَا شَهِيۡقًا وَّهِىَ تَفُوۡرُۙ‏ ',
    english: 'When they are thrown into it, they hear from it a [dreadful] inhaling while it boils up.',
    urdu: 'جب وہ اس میں ڈالے جائیں گے تو اس کا چیخنا چلانا سنیں گے اور وہ جوش مار رہی ہوگی',
  ),
  new Ayat(
    ayatnum: 'ayat number: 8',
    arabic: 'تَكَادُ تَمَيَّزُ مِنَ الۡغَيۡظِ‌ؕ كُلَّمَاۤ اُلۡقِىَ فِيۡهَا فَوۡجٌ سَاَلَهُمۡ خَزَنَـتُهَاۤ اَلَمۡ يَاۡتِكُمۡ نَذِيۡرٌ‏',
    english: 'It almost bursts with rage. Every time a company is thrown into it, its keepers ask them, "Did there not come to you a warner?"',
    urdu: 'گویا مارے جوش کے پھٹ پڑے گی۔ جب اس میں ان کی کوئی جماعت ڈالی جائے گی تو دوزخ کے داروغہ ان سے پوچھیں گے کہ تمہارے پاس کوئی ہدایت کرنے والا نہیں آیا تھا؟',
  ),
  new Ayat(
    ayatnum: 'ayat number: 9',
    arabic: 'قَالُوۡا بَلٰى قَدۡ جَآءَنَا نَذِيۡرٌ ۙ فَكَذَّبۡنَا وَقُلۡنَا مَا نَزَّلَ اللّٰهُ مِنۡ شَىۡءٍ  ۖۚ اِنۡ اَنۡتُمۡ اِلَّا فِىۡ ضَلٰلٍ كَبِيۡرٍ‏ ',
    english: 'They will say," Yes, a warner had come to us, but we denied and said, " Allah has not sent down anything. You are not but in great error." "',
    urdu: 'وہ کہیں گے کیوں نہیں ضرور ہدایت کرنے والا آیا تھا لیکن ہم نے اس کو جھٹلا دیا اور کہا کہ خدا نے تو کوئی چیز نازل ہی نہیں کی۔ تم تو بڑی غلطی میں (پڑے ہوئے) ہو ',
  ),
  new Ayat(
    ayatnum: 'ayat number: 10',
    arabic: 'وَقَالُوۡا لَوۡ كُنَّا نَسۡمَعُ اَوۡ نَعۡقِلُ مَا كُنَّا فِىۡۤ اَصۡحٰبِ السَّعِيۡرِ‏ ',
    english: 'And they will say, "If only we had been listening or reasoning, we would not be among the companions of the Blaze."',
    urdu: 'اور کہیں گے اگر ہم سنتے یا سمجھتے ہوتے تو دوزخیوں میں نہ ہوتے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 11',
    arabic: 'فَاعۡتَرَفُوۡا بِذَنۡۢبِهِمۡ‌ۚ فَسُحۡقًا لِّاَصۡحٰبِ السَّعِيۡرِ‏ ',
    english: 'And they will admit their sin, so [it is] alienation for the companions of the Blaze.',
    urdu: 'پس وہ اپنے گناہ کا اقرار کرلیں گے۔ سو دوزخیوں کے لئے (رحمت خدا سے) دور ہی ہے ',
  ),
  new Ayat(
    ayatnum: 'ayat number: 12',
    arabic: 'اِنَّ الَّذِيۡنَ يَخۡشَوۡنَ رَبَّهُمۡ بِالۡغَيۡبِ لَهُمۡ مَّغۡفِرَةٌ وَّاَجۡرٌ كَبِيۡرٌ',
    english: 'Indeed, those who fear their Lord unseen will have forgiveness and great reward.',
    urdu: 'اور) جو لوگ بن دیکھے اپنے پروردگار سے ڈرتے ہیں ان کے لئے بخشش اور اجر عظیم ہے)',
  ),
  new Ayat(
    ayatnum: 'ayat number: 13',
    arabic: 'وَاَسِرُّوۡا قَوۡلَـكُمۡ اَوِ اجۡهَرُوۡا بِهٖؕ اِنَّهٗ عَلِيۡمٌۢ بِذَاتِ الصُّدُوۡرِ‏ ',
    english: 'And conceal your speech or publicize it; indeed, He is Knowing of that within the breasts.',
    urdu: 'اور تم (لوگ) بات پوشیدہ کہو یا ظاہر۔ وہ دل کے بھیدوں تک سے واقف ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 14',
    arabic: 'اَلَا يَعۡلَمُ مَنۡ خَلَقَؕ وَهُوَ اللَّطِيۡفُ الۡخَبِيۡرُ',
    english: 'Does He who created not know, while He is the Subtle, the Acquainted?',
    urdu: 'بھلا جس نے پیدا کیا وہ بےخبر ہے؟ وہ تو پوشیدہ باتوں کا جاننے والا اور (ہر چیز سے) آگاہ ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 15',
    arabic: 'هُوَ الَّذِىۡ جَعَلَ لَـكُمُ الۡاَرۡضَ ذَلُوۡلاً فَامۡشُوۡا فِىۡ مَنَاكِبِهَا وَكُلُوۡا مِنۡ رِّزۡقِهٖ‌ؕ وَاِلَيۡهِ النُّشُوۡرُ‏',
    english: 'It is He who made the earth tame for you - so walk among its slopes and eat of His provision - and to Him is the resurrection.',
    urdu: 'وہی تو ہے جس نے تمہارے لئے زمین کو نرم کیا تو اس کی راہوں میں چلو پھرو اور خدا کا (دیا ہو) رزق کھاؤ اور تم کو اسی کے پاس (قبروں سے) نکل کر جانا ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 16',
    arabic: 'ءَاَمِنۡتُمۡ مَّنۡ فِىۡ السَّمَآءِ اَنۡ يَّخۡسِفَ بِكُمُ الۡاَرۡضَ فَاِذَا هِىَ تَمُوۡرُۙ‏',
    english: 'Do you feel secure that He who [holds authority] in the heaven would not cause the earth to swallow you and suddenly it would sway?',
    urdu: 'کیا تم اس سے جو آسمان میں ہے بےخوف ہو کہ تم کو زمین میں دھنسا دے اور وہ اس وقت حرکت کرنے لگے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 17',
    arabic: 'اَمۡ اَمِنۡتُمۡ مَّنۡ فِىۡ السَّمَآءِ اَنۡ يُّرۡسِلَ عَلَيۡكُمۡ حَاصِبًا‌ؕ فَسَتَعۡلَمُوۡنَ كَيۡفَ نَذِيۡرِ‏ ',
    english: 'Or do you feel secure that He who [holds authority] in the heaven would not send against you a storm of stones? Then you would know how [severe] was My warning.',
    urdu: 'کیا تم اس سے جو آسمان میں ہے نڈر ہو کہ تم پر کنکر بھری ہوا چھوڑ دے۔ سو تم عنقریب جان لو گے کہ میرا ڈرانا کیسا ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 18',
    arabic: 'وَلَـقَدۡ كَذَّبَ الَّذِيۡنَ مِنۡ قَبۡلِهِمۡ فَكَيۡفَ كَانَ نَكِيۡرِ‏',
    english: 'And already had those before them denied, and how [terrible] was My reproach.',
    urdu: 'اور جو لوگ ان سے پہلے تھے انہوں نے بھی جھٹلایا تھا سو (دیکھ لو کہ) میرا کیسا عذاب ہوا',
  ),
  new Ayat(
    ayatnum: 'ayat number: 19',
    arabic: 'اَوَلَمۡ يَرَوۡا اِلَى الطَّيۡرِ فَوۡقَهُمۡ صٰٓفّٰتٍ وَّيَقۡبِضۡنَؕؔ   ۘ مَا يُمۡسِكُهُنَّ اِلَّا الرَّحۡمٰنُ‌ؕ اِنَّهٗ بِكُلِّ شَىۡءٍۢ بَصِيۡرٌ‏ ',
    english: 'Do they not see the birds above them with wings outspread and [sometimes] folded in? None holds them [aloft] except the Most Merciful. Indeed He is, of all things, Seeing.',
    urdu: 'کیا انہوں نے اپنے سروں پر اڑتے ہوئے جانوروں کو نہیں دیکھا جو پروں کو پھیلائے رہتے ہیں اور ان کو سکیڑ بھی لیتے ہیں۔ خدا کے سوا انہیں کوئی تھام نہیں سکتا۔ بےشک وہ ہر چیز کو دیکھ رہا ہے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 20',
    arabic: 'اَمَّنۡ هٰذَا الَّذِىۡ هُوَ جُنۡدٌ لَّكُمۡ يَنۡصُرُكُمۡ مِّنۡ دُوۡنِ الرَّحۡمٰنِ‌ؕ اِنِ الۡكٰفِرُوۡنَ اِلَّا فِىۡ غُرُوۡرٍ‌ۚ‏',
    english: 'Or who is it that could be an army for you to aid you other than the Most Merciful? The disbelievers are not but in delusion.',
    urdu: 'بھلا ایسا کون ہے جو تمہاری فوج ہو کر خدا کے سوا تمہاری مدد کرسکے۔ کافر تو دھوکے میں ہیں',
  ),
  new Ayat(
    ayatnum: 'ayat number: 21',
    arabic: 'اَمَّنۡ هٰذَا الَّذِىۡ يَرۡزُقُكُمۡ اِنۡ اَمۡسَكَ رِزۡقَهٗ‌ۚ بَل لَّجُّوۡا فِىۡ عُتُوٍّ وَّنُفُوۡرٍ‏',
    english: 'Or who is it that could provide for you if He withheld His provision? But they have persisted in insolence and aversion.',
    urdu: 'بھلا اگر وہ اپنا رزق بند کرلے تو کون ہے جو تم کو رزق دے؟ لیکن یہ سرکشی اور نفرت میں پھنسے ہوئے ہیں',
  ),
  new Ayat(
    ayatnum: 'ayat number: 22',
    arabic: 'اَفَمَنۡ يَّمۡشِىۡ مُكِبًّا عَلٰى وَجۡهِهٖۤ اَهۡدٰٓى اَمَّنۡ يَّمۡشِىۡ سَوِيًّا عَلٰى صِراطٍ مُّسۡتَقِيۡمٍ‏',
    english: 'Then is one who walks fallen on his face better guided or one who walks erect on a straight path?',
    urdu: 'بھلا جو شخص چلتا ہوا منہ کے بل گر پڑتا ہے وہ سیدھے رستے پر ہے یا وہ جو سیدھے رستے پر برابر چل رہا ہو؟',
  ),
  new Ayat(
    ayatnum: 'ayat number: 23',
    arabic: 'قُلۡ هُوَ الَّذِىۡۤ اَنۡشَاَكُمۡ وَجَعَلَ لَـكُمُ السَّمۡعَ وَالۡاَبۡصَارَ وَ الۡاَفۡـِٕدَةَ ‌ ؕ قَلِيۡلاً مَّا تَشۡكُرُوۡنَ‏',
    english: 'Say, "It is He who has produced you and made for you hearing and vision and hearts; little are you grateful."',
    urdu: 'کہو وہ خدا ہی تو ہے جس نے تم کو پیدا کیا۔ اور تمہارے کان اور آنکھیں اور دل بنائے (مگر) تم کم احسان مانتے ہو',
  ),
  new Ayat(
    ayatnum: 'ayat number: 24',
    arabic: 'قُلۡ هُوَ الَّذِىۡ ذَرَاَكُمۡ فِىۡ الۡاَرۡضِ وَاِلَيۡهِ تُحۡشَرُوۡنَ‏',
    english: 'Say, " It is He who has multiplied you throughout the earth, and to Him you will be gathered."',
    urdu: 'کہہ دو کہ وہی ہے جس نے تم کو زمین میں پھیلایا اور اسی کے روبرو تم جمع کئے جاؤ گے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 25',
    arabic: 'وَيَقُوۡلُوۡنَ مَتٰى هٰذَا الۡوَعۡدُ اِنۡ كُنۡتُمۡ صٰدِقِيۡنَ‏',
    english: 'And they say, "When is this promise, if you should be truthful?"',
    urdu: 'اور کافر کہتے ہیں کہ اگر تم سچے ہو تو یہ وعید کب (پورا) ہوگا؟',
  ),
  new Ayat(
    ayatnum: 'ayat number: 26',
    arabic: 'قُلۡ اِنَّمَا الۡعِلۡمُ عِنۡدَ اللّٰهِ وَاِنَّمَاۤ اَنَا نَذِيۡرٌ مُّبِيۡنٌ‏',
    english: 'Say, "The knowledge is only with Allah, and I am only a clear warner."',
    urdu: 'کہہ دو اس کا علم خدا ہی کو ہے۔ اور میں تو کھول کھول کر ڈر سنانے دینے والا ہوں',
  ),
  new Ayat(
    ayatnum: 'ayat number: 27',
    arabic: 'فَلَمَّا رَاَوۡهُ زُلۡفَةً سِیْٓــَٔتۡ وُجُوۡهُ الَّذِيۡنَ كَفَرُوۡا وَقِيۡلَ هٰذَا الَّذِىۡ كُنۡتُمۡ بِهٖ تَدَّعُوۡنَ‏',
    english: 'But when they see it approaching, the faces of those who disbelieve will be distressed, and it will be said, "This is that for which you used to call."',
    urdu: 'سو جب وہ دیکھ لیں گے کہ وہ (وعدہ) قریب آگیا تو کافروں کے منہ برے ہوجائیں گے اور (ان سے) کہا جائے گا کہ یہ وہی ہے جس کے تم خواستگار تھے',
  ),
  new Ayat(
    ayatnum: 'ayat number: 28',
    arabic: 'قُلۡ اَرَءَيۡتُمۡ اِنۡ اَهۡلَـكَنِىَ اللّٰهُ وَمَنۡ مَّعِىَ اَوۡ رَحِمَنَا ۙ فَمَنۡ يُّجِيۡرُ الۡكٰفِرِيۡنَ مِنۡ عَذَابٍ اَلِيۡمٍ‏',
    english: 'Say, [O Muhammad], "Have you considered: whether Allah should cause my death and those with me or have mercy upon us, who can protect the disbelievers from a painful punishment?"',
    urdu: 'کہو کہ بھلا دیکھو تو اگر خدا مجھ کو اور میرے ساتھیوں کو ہلاک کردے یا ہم پر مہربانی کرے۔ تو کون ہے کافروں کو دکھ دینے والے عذاب سے پناہ دے؟ ',
  ),
  new Ayat(
    ayatnum: 'ayat number: 29',
    arabic: 'قُلۡ هُوَ الرَّحۡمٰنُ اٰمَنَّا بِهٖ وَعَلَيۡهِ تَوَكَّلۡنَا‌ۚ فَسَتَعۡلَمُوۡنَ مَنۡ هُوَ فِىۡ ضَلٰلٍ مُّبِيۡنٍ‏',
    english: 'Say, "He is the Most Merciful; we have believed in Him, and upon Him we have relied. And you will [come to] know who it is that is in clear error."',
    urdu: 'کہہ دو کہ وہ جو (خدائے) رحمٰن (ہے) ہم اسی پر ایمان لائے اور اسی پر بھروسا رکھتے ہیں۔ تم کو جلد معلوم ہوجائے گا کہ صریح گمراہی میں کون پڑ رہا تھا',
  ),
  new Ayat(
    ayatnum: 'ayat number: 30',
    arabic: 'قُلۡ اَرَءَيۡتُمۡ اِنۡ اَصۡبَحَ مَآؤُكُمۡ غَوۡرًا فَمَنۡ يَّاۡتِيۡكُمۡ بِمَآءٍ مَّعِيۡنٍ',
    english: 'Say, "Have you considered: if your water was to become sunken [into the earth], then who could bring you flowing water?"',
    urdu: 'کہو کہ بھلا دیکھو تو اگر تمہارا پانی (جو تم پیتے ہو اور برتے ہو) خشک ہوجائے تو (خدا کے) سوا کون ہے جو تمہارے لئے شیریں پانی کا چشمہ بہا لائے',
  ),
];
