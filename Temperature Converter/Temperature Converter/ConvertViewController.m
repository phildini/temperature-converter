//
//  ConvertViewController.m
//  Temperature Converter
//
//  Created by Philip James on 10/2/13.
//  Copyright (c) 2013 Philip James. All rights reserved.
//

#import "ConvertViewController.h"

@interface ConvertViewController ()

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fahrenheitValue:(id)sender {
}
@end
