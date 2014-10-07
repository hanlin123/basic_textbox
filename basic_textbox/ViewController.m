//
//  ViewController.m
//  basic_textbox
//
//  Created by Lin, Han on 10/6/14.
//  Copyright (c) 2014 Lin, Han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTemp:(id)sender {
    double fahrenheit = [_tempInput.text doubleValue];
    double celsius = (fahrenheit -32) /1.8;
    
    NSString *resultStr = [[NSString alloc] initWithFormat:@"Celsius %f", celsius];
    
    _resultOutput.text = resultStr;
}
@end
