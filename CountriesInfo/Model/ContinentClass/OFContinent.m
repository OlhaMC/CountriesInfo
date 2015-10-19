//
//  OFContinent.m
//  CountriesInfo
//
//  Created by Admin on 17.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import "OFContinent.h"

@implementation OFContinent
@synthesize name= _name;
@synthesize countriesArray= _countriesArray;


- (id) init
{
    self = [super init];
    if (self)
    {
        _name = @"randomContinent";
        _countriesArray = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
