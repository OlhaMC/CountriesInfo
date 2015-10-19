//
//  OFInfoForCountries.m
//  CountriesInfo
//
//  Created by Admin on 18.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import "OFInfoForCountries.h"

@implementation OFInfoForCountries
@synthesize continentsArray = _continentsArray;
@synthesize countriesList = _countriesList;
@synthesize numberOfCountriesAtContinent = _numberOfCountriesAtContinent;
@synthesize capitalsList = _capitalsList;
@synthesize nativeNamesList = _nativeNamesList;
@synthesize detailedInfo = _detailedInfo;

- (id) init
{
    self = [super init];
    if (self)
    {
        _continentsArray =
        [NSMutableArray arrayWithObjects: @"Europe",@"Asia", @"Africa", @"NorthAmerica", @"SouthAmerica", nil];
        
        _countriesList = [NSMutableArray arrayWithObjects:
                          @"Austria",@"Georgia",@"Hungary",@"Spain",@"Sweden",@"Ukraine",
                          @"China", @"Laos", @"Singapore",@"Sri Lanka",
                          @"Egypt",@"Madagascar",@"Morocco",
                          @"Canada",@"Mexico",@"Haiti",@"United States",
                          @"Argentina",@"Brazil",@"Peru", nil];
        
        _numberOfCountriesAtContinent =@{
            @"Europe":[NSNumber numberWithInteger:6],
            @"Asia":[NSNumber numberWithInteger:4],
            @"Africa":[NSNumber numberWithInteger:3],
            @"NorthAmerica":[NSNumber numberWithInteger:4],
            @"SouthAmerica":[NSNumber numberWithInteger:3]};
        
         _capitalsList = @{
          @"Austria" : @"Vienna",@"Georgia" : @"Tbilisi",@"Hungary" : @"Budapest",
          @"Spain" : @"Madrid",@"Sweden" : @"Stockholm",@"Ukraine" : @"Kyiv",
          @"China" : @"Beijing",@"Laos" : @"Vientiane",@"Singapore" : @"Singapore City",
          @"Sri Lanka" : @"Sri Jayawardenapura Kotte",
          @"Egypt" : @"Cairo",@"Madagascar" : @"Antananarivo",@"Morocco" : @"Rabat",
          @"Canada" : @"Ottawa",@"Mexico" : @"Mexico City",@"Haiti" : @"Port-au-Prince",
          @"United States" : @"Washington",
          @"Argentina" : @"Buenos Aires",@"Brazil" : @"Brasília",@"Peru" : @"Lima"};
        
         _nativeNamesList = @{
          @"Austria" : @"Österreich",@"Georgia" : @"საქართველო",@"Hungary" : @"Magyarország",
          @"Spain" : @"España",@"Sweden" : @"Sverige",@"Ukraine" : @"Україна",
          @"China" : @"中國",@"Laos" : @"ປະເທດລາວ",@"Singapore" : @"சிங்கப்பூர்",
          @"Sri Lanka" : @"இலங்கை",
          @"Egypt" : @"Misr",@"Madagascar" : @"Madagasikara",@"Morocco" : @"Elmeɣrib",
          @"Canada" : @"Canada",@"Mexico" : @"Mēxihco",@"Haiti" : @"Ayiti",
          @"United States" : @"Amelika-hui-pu-'ia",
          @"Argentina" : @"Argentina",@"Brazil" : @"Brasil",@"Peru" : @"Perú"};
        
        _detailedInfo=
        @{
          @"Austria" : @"Austria (ôˈstrēə), Ger. Österreich [eastern march], officially Republic of Austria, federal republic (2005 est. pop. 8,185,000), 32,374 sq mi (83,849 sq km), central Europe. It is bounded by Slovenia and Italy (S), Switzerland and Liechtenstein (W), Germany and the Czech Republic (N), and Slovakia and Hungary (E). Its capital and by far its largest city is Vienna.",
          @"Georgia" : @"Georgia is a country in the Caucasus region of Eurasia. Located at the crossroads of Western Asia and Eastern Europe, it is bounded to the west by the Black Sea, to the north by Russia, to the south by Turkey and Armenia, and to the southeast by Azerbaijan. The capital and largest city is Tbilisi. Georgia covers a territory of 69,700 square kilometres (26,911 sq mi), and its 2015 population is about 3.75 million. Georgia is a unitary, semi-presidential republic, with the government elected through a representative democracy.",
          @"Hungary" : @"Hungary is a landlocked country in Central Europe. It is situated in the Carpathian Basin and is bordered by Slovakia to the north, Romania to the east, Serbia to the south, Croatia to the southwest, Slovenia to the west, Austria to the northwest, and Ukraine to the northeast. The country's capital and largest city is Budapest. Hungary is a member of the European Union, NATO, the OECD, the Visegrád Group, and the Schengen Area. The official language is Hungarian, which is the most widely spoken non-Indo-European language in Europe.",
          @"Spain" : @"Spain, Span. España āspäˈnyä, officially Kingdom of Spain, constitutional monarchy (2005 est. pop. 40,341,000), 194,884 sq mi (504,750 sq km), including the Balearic and Canary islands, SW Europe. It consists of the Spanish mainland (190,190 sq mi/492,592 sq km), which occupies the major part of the Iberian Peninsula; of the Balearic Islands in the Mediterranean Sea; and of the Canary Islands in the Atlantic Ocean.",
          @"Sweden" : @"Sweden, Swed. Sverige, officially Kingdom of Sweden, constitutional monarchy (2005 est. pop. 9,002,000), 173,648 sq mi (449,750 sq km), N Europe, occupying the eastern part of the Scandinavian peninsula. It borders on Norway in the west, on Finland in the northeast, on the Gulf of Bothnia in the east, on the Baltic Sea in the south, and on the Øresund (The Sound), the Kattegat, and the Skagerrak in the southwest. The country includes several islands, notably Gotland and Öland, in the Baltic. Stockholm is Sweden's capital and largest city.",
          @"Ukraine" : @"Ukraine is a country in Eastern Europe, bordered by Russia to the east and northeast, Belarus to the northwest, Poland and Slovakia to the west, Hungary, Romania, and Moldova to the southwest, and the Black Sea and Sea of Azov to the south and southeast, respectively. It has an area of 603,628 km2 (233,062 sq mi), making it the largest country entirely within Europe and the 46th largest country in the world. With a population of about 44.5 million, Ukraine is the 32nd most populous country in the world.",
          @"China" : @"China, Mandarin Zhonghua Renmin Gongheguo [central glorious people's united country; i.e., people's republic], officially People's Republic of China, country (2010 pop. 1,339,724,852), 3,691,502 sq mi (9,561,000 sq km), E Asia. The most populous country in the world, China has a 4,000-mi (6,400-km) coast that fronts on the Yellow Sea, the East China Sea, and the South China Sea. It is elsewhere bounded on the east by Russia and North Korea, on the north by Russia and Mongolia, on the west by Tajikistan, Kyrgyzstan, Kazakhstan, Pakistan, and Afghanistan, and on the south by India, Nepal, Bhutan, Myanmar, Laos, and Vietnam. China's capital is Beijing; Shanghai is its largest city.",
          @"Laos" : @"A landlocked nation in Southeast Asia occupying the northwest portion of the Indochinese peninsula, Laos is surrounded by China, Vietnam, Cambodia, Thailand, and Burma. It is twice the size of Pennsylvania. Laos is a mountainous country, especially in the north, where peaks rise above 9,000 ft (2,800 m). Dense forests cover the northern and eastern areas. The Mekong River, which forms the boundary with Burma and Thailand, flows through the country for 932 mi (1,500 km) of its course.",
          @"Singapore" : @"Singapore (sĭngˈgəpôr, sĭngˈə–, sĭngˌgəpôrˈ) , officially Republic of Singapore, republic (2005 est. pop. 4,426,000), 299 sq mi (774 sq km). It consists of the island of Singapore and about 60 small adjacent islands at the southern tip of the Malay Peninsula, SE Asia. Singapore city, the capital, largest city, and chief port, is administratively coextensive with the republic. The distinction between Singapore and Singapore city has virtually disappeared, as the island is almost entirely urbanized.",
          @"Sri Lanka" : @"Sri Lanka (srē längˈkə)  formerly Ceylon, ancient Taprobane, officially Democratic Socialist Republic of Sri Lanka, island republic (2005 est. pop. 20,065,000), 25,332 sq mi (65,610 sq km), in the Indian Ocean, just SE of India. The capital is Sri Jayewardenapura Kotte. Colombo, the former capital (and still the site of many government offices), is the commercial capital and largest city.",
          @"Egypt" : @"Egypt (ēˈjĭpt) , Arab. Misr, biblical Mizraim, officially Arab Republic of Egypt, republic (2005 est. pop. 77,506,000), 386,659 sq mi (1,001,449 sq km), NE Africa and SW Asia. It borders on the Mediterranean Sea in the north, Israel and the Red Sea in the east, Sudan in the south, and Libya in the west. Egypt's capital and largest city is Cairo. In addition to the capital, major cities include Alexandria, Port Said, Suez, Tanta, and Aswan.",
          @"Madagascar" : @"Madagascar (mădˌəgăsˈcär) , officially Republic of Madagascar, republic (2005 est. pop. 18,040,000), 226,658 sq mi (587,045 sq km), in the Indian Ocean, separated from E Africa by the Mozambique Channel. Madagascar is the world's fourth largest island. The country also claims several small islands including the French possessions of Juan de Nova Island, Europa Island, the Glorioso Islands, Tromelin Island, and Bassas da India. The capital and largest city is Antananarivo.",
          @"Morocco" : @"Morocco (mərŏkˈō), officially Kingdom of Morocco, kingdom (2005 est. pop. 32,726,000), 171,834 sq mi (445,050 sq km), NW Africa. Morocco is bordered by the Mediterranean Sea (N), the Atlantic Ocean (W), Western Sahara (S), and Algeria (S and E). Ifni, formerly a Spanish-held enclave on the Atlantic coast, was ceded to Morocco in 1969. Two cities, Ceuta and Melilla, and several small islands off the Mediterranean coast remain part of metropolitan Spain; at various times in history Moroccans have sought, through force or diplomacy, to gain control of these enclaves. Morocco claims and administers Western Sahara although sovereignty remains unresolved. Rabat is the capital and Casablanca the most populous city.",
          @"Canada" : @"Canada (kănˈədə) , independent nation (2001 pop. 30,007,094), 3,851,787 sq mi (9,976,128 sq km), N North America. Canada is a federation of 10 provinces. Canada occupies all of North America N of the United States (and E of Alaska) except for Greenland and the French islands of St. Pierre and Miquelon. It is bounded on the E by the Atlantic Ocean, on the N by the Arctic Ocean, and on the W by the Pacific Ocean and Alaska. A transcontinental border, formed in part by the Great Lakes, divides Canada from the United States; Nares and Davis straits separate Canada from Greenland.",
          @"Mexico" : @"Mexico is bordered by the United States to the north and Belize and Guatemala to the southeast. Mexico is about one-fifth the size of the United States. Baja California in the west is an 800-mile (1,287-km) peninsula that forms the Gulf of California. In the east are the Gulf of Mexico and the Bay of Campeche, which is formed by Mexico's other peninsula, the Yucatán. The center of Mexico is a great, high plateau, open to the north, with mountain chains on the east and west and with ocean-front lowlands beyond.",
          @"Haiti" : @"Haiti, in the West Indies, occupies the western third of the island of Hispaniola, which it shares with the Dominican Republic. About the size of Maryland, Haiti is two-thirds mountainous, with the rest of the country marked by great valleys, extensive plateaus, and small plains. Republic with an elected government.",
          @"United States" : @"United States Federal republic. The president is elected for a four-year term and may be reelected only once. The bicameral Congress consists of the 100-member Senate, elected to a six-year term with one-third of the seats becoming vacant every two years, and the 435-member House of Representatives, elected every two years. The minimum voting age is 18",
          @"Argentina" : @"Argentina (ärjəntēˈnə, Span. ärhāntēˈnä) , officially Argentine Republic, republic (2005 est. pop. 39,538,000), 1,072,157 sq mi (2,776,889 sq km), S South America. Argentina is bordered by Chile on the west, Bolivia and Paraguay on the north, Brazil and Uruguay on the northeast, and the Atlantic Ocean on the east. Buenos Aires is the country's capital and largest city.",
          @"Brazil" : @"Brazil covers nearly half of South America and is the continent's largest nation. It extends 2,965 mi (4,772 km) north-south, 2,691 mi (4,331 km) east-west, and borders every nation on the continent except Chile and Ecuador. Brazil may be divided into the Brazilian Highlands, or plateau, in the south and the Amazon River Basin in the north. Over a third of Brazil is drained by the Amazon and its more than 200 tributaries. The Amazon is navigable for ocean steamers to Iquitos, Peru, 2,300 mi (3,700 km) upstream. Southern Brazil is drained by the Plata system—the Paraguay, Uruguay, and Paraná rivers.",
          @"Peru" : @"Peru, in western South America, extends for nearly 1,500 mi (2,414 km) along the Pacific Ocean. Colombia and Ecuador are to the north, Brazil and Bolivia to the east, and Chile to the south. Five-sixths the size of Alaska, Peru is divided by the Andes Mountains into three sharply differentiated zones. To the west is the coastline, much of it arid, extending 50 to 100 mi (80 to 160 km) inland. The mountain area, with peaks over 20,000 ft (6,096 m), lofty plateaus, and deep valleys, lies centrally. Beyond the mountains to the east is the heavily forested slope leading to the Amazonian plains."
          };
    }
    return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    OFInfoForCountries * newInfo = [[OFInfoForCountries alloc] init];
    return newInfo;
}

@end
