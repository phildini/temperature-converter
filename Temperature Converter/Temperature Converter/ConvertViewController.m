//
//  ConvertViewController.m
//  Temperature Converter
//
//  Created by Philip James on 10/2/13.
//  Copyright (c) 2013 Philip James. All rights reserved.
//

#import "ConvertViewController.h"

@interface ConvertViewController ()

- (void)tapToEnd;
- (void)fahrenheitEndEditing;
- (void)celsiusEndEditing;

@end

@implementation ConvertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.fahrenheitTextField.delegate = self;
    self.celsiusTextField.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - UITextField Delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if (textField == self.fahrenheitTextField) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(fahrenheitEndEditing)];
    }
    if (textField == self.celsiusTextField) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(celsiusEndEditing)];
    }
    
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    self.navigationItem.rightBarButtonItem = nil;
    
    if (textField == self.fahrenheitTextField) {
        [self fahrenheitEndEditing];
    }
    
    if (textField == self.celsiusTextField) {
        [self celsiusEndEditing];
    }
    
    [self.view endEditing:YES];
    
    return YES;
}


#pragma mark - Private Methods

- (void)tapToEnd {
    [self.view endEditing:YES];
}

- (void)fahrenheitEndEditing {
    [self.view endEditing:YES];
    float fahrenheit = [self.fahrenheitTextField.text floatValue];
    
    float celsius = (fahrenheit - 32) * 5/9;
    
    self.celsiusTextField.text = [NSString stringWithFormat:@"%0.2fº", celsius];
}

- (void)celsiusEndEditing {
    [self.view endEditing:YES];
    float celsius = [self.celsiusTextField.text floatValue];
    
    float fahrenheit = (celsius * 9/5) + 32;
    
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%0.2fº", fahrenheit];
}

@end
