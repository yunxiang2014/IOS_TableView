//
//  ViewController.m
//  TableViewTest
//
//  Created by ChaiYunxiang on 3/11/15.
//  Copyright (c) 2015 ChaiYunxiang. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray *totalCars;
@end

@implementation ViewController

- (NSArray *)totalCars
{
    if (_totalCars == nil) {
        NSArray *tmpArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_simple" ofType:@"plist"]];
        
        NSMutableArray *carsArray = [NSMutableArray array];
        
        for (NSDictionary *dict in tmpArray) {
            CarGroup *cg = [CarGroup carGroupWithDict:dict];
            [carsArray addObject:cg];
        }
        
        _totalCars = carsArray;
    }
    return _totalCars;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    CarGroup *cg = self.totalCars[section];
    return cg.cars.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.totalCars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    CarGroup *cg = self.totalCars[indexPath.section];
    NSString *car = cg.cars[indexPath.row];
    cell.textLabel.text = car;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.totalCars[section] title];
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return [self.totalCars[section] desc];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
