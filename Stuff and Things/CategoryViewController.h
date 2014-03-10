//
//  CategoryViewController.h
//  Stuff and Things
//
//  Created by Lisa Weir on 3/9/14.
//  Copyright (c) 2014 lisadietrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIButton *buttonRollDice;

@property (strong, nonatomic) IBOutlet UITableView *tableViewCategories;

@end
