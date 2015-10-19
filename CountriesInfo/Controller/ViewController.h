//
//  ViewController.h
//  CountriesInfo
//
//  Created by Admin on 17.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView * tableView;



@end

