//
//  OFInfoForCountries.h
//  CountriesInfo
//
//  Created by Admin on 18.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OFInfoForCountries : NSObject <NSCopying>

@property (strong, nonatomic) NSMutableArray * continentsArray;
@property (strong, nonatomic) NSMutableArray * countriesList;
@property (strong, nonatomic) NSDictionary * numberOfCountriesAtContinent;
@property (strong, nonatomic) NSDictionary * capitalsList;
@property (strong, nonatomic) NSDictionary * nativeNamesList;
@property (strong, nonatomic) NSDictionary * detailedInfo;

@end
