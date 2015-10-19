//
//  ViewController.m
//  CountriesInfo
//
//  Created by Admin on 17.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import "ViewController.h"
#import "OFContinent.h"
#import "OFInfoForCountries.h"
#import "OFCountry.h"
#import "OFCustomCell.h"

@interface ViewController ()

@property (strong, nonatomic) OFInfoForCountries * infoData;
@property (strong, nonatomic) NSMutableArray * continentsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIEdgeInsets insets = UIEdgeInsetsMake(10, 0, 0, 0);
    self.tableView.contentInset = insets;
    
    self.infoData = [[OFInfoForCountries alloc] init];
    self.continentsArray = [NSMutableArray array];
    
    for (NSUInteger i = 0, k=0; i < self.infoData.continentsArray.count;i++)
    {
        OFContinent * continent = [[OFContinent alloc] init];
        continent.name = [self.infoData.continentsArray objectAtIndex:i];
        
        NSUInteger numberOfCountries = [[self.infoData.numberOfCountriesAtContinent objectForKey:continent.name] integerValue];
        for (NSUInteger j=0; j < numberOfCountries; j++)
        {
            OFCountry * country = [[OFCountry alloc] init];
            country.name = [self.infoData.countriesList objectAtIndex:k];
            country.nativeName = [self.infoData.nativeNamesList objectForKey:country.name];
            country.capital = [self.infoData.capitalsList objectForKey:country.name];
            country.flag =[NSString stringWithFormat:@"%@.png", country.name];
            country.detailedInfo = [self.infoData.detailedInfo objectForKey:country.name];
            k++;
            [continent.countriesArray addObject:country];
        }
        [self.continentsArray addObject:continent];
    }

    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma makr - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    OFContinent * continent = [self.continentsArray objectAtIndex:section];
    return [continent.countriesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identifier = @"cellIdentifier";
    OFCustomCell * cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    
    if (!cell)
    {
        cell = [[OFCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    OFContinent * continent = [self.continentsArray objectAtIndex:indexPath.section];
    
    OFCountry * country = [continent.countriesArray objectAtIndex: indexPath.row];
    cell.nameLable.text = [NSString stringWithFormat:@"%@ (%@)",
                           country.name, country.capital];
    cell.nativeNameLable.text = [NSString stringWithFormat:@"%@", country.nativeName];
    cell.flagImage.image = [UIImage imageNamed:country.flag];
    

    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.continentsArray count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    OFContinent * continent = [self.continentsArray objectAtIndex:section];
    return continent.name;
}

#pragma makr - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController * pathController = [[UIViewController alloc] init];
    pathController.view.backgroundColor = [UIColor whiteColor];
    
    CGRect textFrame = CGRectMake(16, 20, 288, 550);
    UITextView * textContent = [[UITextView alloc] initWithFrame:textFrame];
    
    OFContinent * continent = [self.continentsArray objectAtIndex:indexPath.section];
    OFCountry * country = [continent.countriesArray objectAtIndex: indexPath.row];
    
    textContent.text = country.detailedInfo;
    [pathController.view addSubview:textContent];
    
    [self.navigationController pushViewController:pathController animated:YES];
}

@end
