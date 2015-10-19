//
//  OFCountry.m
//  CountriesInfo
//
//  Created by Admin on 17.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import "OFCountry.h"
#import "OFInfoForCountries.h"

@implementation OFCountry
@synthesize name = _name;
@synthesize nativeName = _nativeName;
@synthesize capital = _capital;
@synthesize flag = _flag;
@synthesize detailedInfo = _detailedInfo;

- (id) init
{
    self = [super init];
    if (self)
    {
        _name = @"No Name";
        _nativeName = @"No NativeName";
        _capital = @"No Capital";
        _flag = nil;
        _detailedInfo = @"No info";
    }
    return self;
}


@end
