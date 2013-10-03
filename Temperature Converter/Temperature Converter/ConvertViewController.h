//
//  ConvertViewController.h
//  Temperature Converter
//
//  Created by Philip James on 10/2/13.
//  Copyright (c) 2013 Philip James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConvertViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, strong) IBOutlet UITextField *celsiusTextField;

- (IBAction)tapToEnd;

@end
