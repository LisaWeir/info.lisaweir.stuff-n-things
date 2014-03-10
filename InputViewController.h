//
//  InputViewController.h
//  Stuff and Things
//
//  Created by Lisa Weir on 3/8/14.
//  Copyright (c) 2014 lisadietrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *labelTitle;
@property (strong, nonatomic) IBOutlet UITextField *textFieldName;
@property (strong, nonatomic) NSString *category;
@property (strong, nonatomic) NSNumber *mode;

@end
