//
//  OFCustomCell.h
//  CountriesInfo
//
//  Created by Admin on 19.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OFCustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel * nameLable;
@property (weak, nonatomic) IBOutlet UILabel * nativeNameLable;
@property (weak, nonatomic) IBOutlet UIImageView * flagImage;

@end
