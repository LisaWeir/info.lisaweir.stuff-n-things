//
//  InputViewController.m
//  Stuff and Things
//
//  Created by Lisa Weir on 3/8/14.
//  Copyright (c) 2014 lisadietrich. All rights reserved.
//

#import "InputViewController.h"

@implementation InputViewController
@synthesize labelTitle, textFieldName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [textFieldName becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return YES;
    //TODO: Write to Dictionary here
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
