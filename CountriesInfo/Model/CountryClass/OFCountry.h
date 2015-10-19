//
//  OFCountry.h
//  CountriesInfo
//
//  Created by Admin on 17.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OFCountry : NSObject

@property (strong, nonatomic) NSString * name;
@property (strong, nonatomic) NSString * nativeName;
@property (strong, nonatomic) NSString * capital;
@property (strong, nonatomic) NSString * flag;
@property (strong, nonatomic) NSString * detailedInfo;

@end
