//
//  CategoryViewController.m
//  Stuff and Things
//
//  Created by Lisa Weir on 3/9/14.
//  Copyright (c) 2014 lisadietrich. All rights reserved.
//

#import "CategoryViewController.h"
#import "InputViewController.h"

@implementation CategoryViewController
@synthesize tableViewCategories, buttonRollDice;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)addCategory {
    [self performSegueWithIdentifier:@"CategoryEditSegue" sender:self];
}

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                               target:self
                                                                               action:@selector(addCategory)];
    [self.navigationItem setLeftBarButtonItem:addButton];
    [self.navigationItem setRightBarButtonItem:self.editButtonItem];

}

-(void)viewDidAppear:(BOOL)animated {
    [tableViewCategories reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //TODO: If editing
    NSIndexPath *indexPath = [tableViewCategories indexPathForSelectedRow];
    InputViewController *inputView = segue.destinationViewController;
}


#pragma mark - UITableView

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //TODO: Set Cell Label to CategoryName
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //TODO: Count of dictionary
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}
@end
