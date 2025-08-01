import 'keys.dart';

/// 로그인 유형
enum LoginType {
  apple,
  kakao,
  naver,
  google,
  email,
}

/// 유저 유형
enum UserType {
  user,
  admin,
}

/// 취미 유형 (펜팔 매칭용)
enum HobbyType {
  Reading,
  Traveling,
  Cooking,
  Hiking,
  Gaming,
  Photography,
  Drawing,
  Dancing,
  Singing,
  Writing,
  Swimming,
  Yoga,
  Cycling,
  Fishing,
  Gardening,
  Knitting,
  Baking,
  WatchingMovies,
  PlayingMusic,
  Meditation,
  Calligraphy,
  Blogging,
  Crafting,
  Painting,
  Running,
  Climbing,
  BoardGames,
  Anime,
  Languages,
  Birdwatching,
  Coding,
  Collecting,
  Acting,
  Archery,
  Astronomy,
  Volunteering,
  Puppetry,
  ScubaDiving,
  Surfing,
  Skateboarding,
}

/// 사용 가능 언어
enum LanguageType {
  English,
  Korean,
  Spanish,
  French,
  German,
  Chinese,
  Japanese,
  Russian,
  Arabic,
  Portuguese,
  Hindi,
  Italian,
  Dutch,
  Turkish,
  Vietnamese,
  Polish,
  Thai,
  Swedish,
  Indonesian,
  Greek,
  Czech,
  Hungarian,
  Romanian,
  Hebrew,
  Malay,
  Ukrainian,
  Bengali,
  Finnish,
  Danish,
  Norwegian,
}

/// ISO2 국가 코드 전체 (영어/자국어 병기 라벨은 아래 extension 참조)
enum Country {
  AF, // Afghanistan (افغانستان)
  AL, // Albania (Shqipëria)
  DZ, // Algeria (الجزائر)
  AS, // American Samoa
  AD, // Andorra
  AO, // Angola
  AG, // Antigua and Barbuda
  AR, // Argentina
  AM, // Armenia (Հայաստան)
  AU, // Australia
  AT, // Austria (Österreich)
  AZ, // Azerbaijan (Azərbaycan)
  BS, // Bahamas
  BH, // Bahrain (البحرين)
  BD, // Bangladesh (বাংলাদেশ)
  BB, // Barbados
  BY, // Belarus (Беларусь)
  BE, // Belgium (België)
  BZ, // Belize
  BJ, // Benin (Bénin)
  BM, // Bermuda
  BT, // Bhutan (འབྲུག)
  BO, // Bolivia
  BA, // Bosnia and Herzegovina (Bosna i Hercegovina)
  BW, // Botswana
  BR, // Brazil (Brasil)
  BN, // Brunei Darussalam
  BG, // Bulgaria (България)
  BF, // Burkina Faso
  BI, // Burundi
  KH, // Cambodia (កម្ពុជា)
  CM, // Cameroon (Cameroun)
  CA, // Canada
  CV, // Cape Verde (Cabo Verde)
  KY, // Cayman Islands
  CF, // Central African Republic (République centrafricaine)
  TD, // Chad (Tchad)
  CL, // Chile
  CN, // China (中国)
  CO, // Colombia
  KM, // Comoros (جزر القمر)
  CG, // Congo
  CD, // Congo, Democratic Republic of the
  CR, // Costa Rica
  CI, // Côte d'Ivoire
  HR, // Croatia (Hrvatska)
  CU, // Cuba
  CY, // Cyprus (Κύπρος)
  CZ, // Czech Republic (Česká republika)
  DK, // Denmark (Danmark)
  DJ, // Djibouti (جيبوتي)
  DM, // Dominica
  DO, // Dominican Republic (República Dominicana)
  EC, // Ecuador
  EG, // Egypt (مصر)
  SV, // El Salvador
  GQ, // Equatorial Guinea (Guinea Ecuatorial)
  ER, // Eritrea (ኤርትራ)
  EE, // Estonia (Eesti)
  SZ, // Eswatini
  ET, // Ethiopia (ኢትዮጵያ)
  FJ, // Fiji
  FI, // Finland (Suomi)
  FR, // France
  GA, // Gabon
  GM, // Gambia
  GE, // Georgia (საქართველო)
  DE, // Germany (Deutschland)
  GH, // Ghana
  GR, // Greece (Ελλάδα)
  GD, // Grenada
  GT, // Guatemala
  GN, // Guinea (Guinée)
  GW, // Guinea-Bissau (Guiné-Bissau)
  GY, // Guyana
  HT, // Haiti (Haïti)
  HN, // Honduras
  HU, // Hungary (Magyarország)
  IS, // Iceland (Ísland)
  IN, // India (भारत)
  ID, // Indonesia (Indonesia)
  IR, // Iran (ایران)
  IQ, // Iraq (العراق)
  IE, // Ireland
  IL, // Israel (ישראל)
  IT, // Italy (Italia)
  JM, // Jamaica
  JP, // Japan (日本)
  JO, // Jordan (الأردن)
  KZ, // Kazakhstan (Қазақстан)
  KE, // Kenya
  KI, // Kiribati
  KP, // Korea (North) (조선민주주의인민공화국)
  KR, // Korea (South) (대한민국)
  KW, // Kuwait (الكويت)
  KG, // Kyrgyzstan (Кыргызстан)
  LA, // Laos (ລາວ)
  LV, // Latvia (Latvija)
  LB, // Lebanon (لبنان)
  LS, // Lesotho
  LR, // Liberia
  LY, // Libya (ليبيا)
  LI, // Liechtenstein
  LT, // Lithuania (Lietuva)
  LU, // Luxembourg (Luxembourg)
  MG, // Madagascar (Madagasikara)
  MW, // Malawi
  MY, // Malaysia (Malaysia)
  MV, // Maldives (Maldives)
  ML, // Mali (Mali)
  MT, // Malta
  MH, // Marshall Islands
  MR, // Mauritania (موريتانيا)
  MU, // Mauritius (Moris)
  MX, // Mexico (México)
  FM, // Micronesia
  MD, // Moldova (Republica Moldova)
  MC, // Monaco (Monaco)
  MN, // Mongolia (Монгол улс)
  ME, // Montenegro (Crna Gora)
  MA, // Morocco (المغرب)
  MZ, // Mozambique (Moçambique)
  MM, // Myanmar (Burma) (မြန်မာ)
  NA, // Namibia
  NR, // Nauru
  NP, // Nepal (नेपाल)
  NL, // Netherlands (Nederland)
  NZ, // New Zealand
  NI, // Nicaragua
  NE, // Niger (Niger)
  NG, // Nigeria (Nigeria)
  MK, // North Macedonia (Северна Македонија)
  NO, // Norway (Norge)
  OM, // Oman (عمان)
  PK, // Pakistan (پاکستان)
  PW, // Palau
  PS, // Palestine (فلسطين)
  PA, // Panama
  PG, // Papua New Guinea
  PY, // Paraguay
  PE, // Peru (Perú)
  PH, // Philippines (Pilipinas)
  PL, // Poland (Polska)
  PT, // Portugal (Portugal)
  QA, // Qatar (قطر)
  RO, // Romania (România)
  RU, // Russia (Россия)
  RW, // Rwanda
  KN, // Saint Kitts and Nevis
  LC, // Saint Lucia
  VC, // Saint Vincent and the Grenadines
  WS, // Samoa
  SM, // San Marino
  ST, // Sao Tome and Principe
  SA, // Saudi Arabia (السعودية)
  SN, // Senegal (Sénégal)
  RS, // Serbia (Србија)
  SC, // Seychelles
  SL, // Sierra Leone
  SG, // Singapore (Singapore)
  SK, // Slovakia (Slovensko)
  SI, // Slovenia (Slovenija)
  SB, // Solomon Islands
  SO, // Somalia (Soomaaliya)
  ZA, // South Africa (South Africa)
  SS, // South Sudan
  ES, // Spain (España)
  LK, // Sri Lanka (ශ්‍රී ලංකාව)
  SD, // Sudan (السودان)
  SR, // Suriname
  SE, // Sweden (Sverige)
  CH, // Switzerland (Schweiz)
  SY, // Syria (سوريا)
  TW, // Taiwan (台灣)
  TJ, // Tajikistan (Тоҷикистон)
  TZ, // Tanzania (Tanzania)
  TH, // Thailand (ประเทศไทย)
  TL, // Timor-Leste
  TG, // Togo
  TO, // Tonga
  TT, // Trinidad and Tobago
  TN, // Tunisia (تونس)
  TR, // Turkey (Türkiye)
  TM, // Turkmenistan (Türkmenistan)
  TV, // Tuvalu
  UG, // Uganda
  UA, // Ukraine (Україна)
  AE, // United Arab Emirates (الإمارات)
  GB, // United Kingdom
  US, // United States
  UY, // Uruguay
  UZ, // Uzbekistan (O‘zbekiston)
  VU, // Vanuatu
  VA, // Vatican City (Città del Vaticano)
  VE, // Venezuela
  VN, // Vietnam (Việt Nam)
  YE, // Yemen (اليمن)
  ZM, // Zambia
  ZW, // Zimbabwe
}

