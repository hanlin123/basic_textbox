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

- (IBAction)hideKeyBoard:(id)sender {
    // text input resign the first responder to vanquish keyboard
    [sender resignFirstResponder];
}

- (IBAction)clearTextField:(id)sender {
    _tempInput.text = @"";
}

- (void)touchesBegan:(NSSet *)touches
           withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if ([_tempInput isFirstResponder] && [touch view]!=_tempInput) {
        // the keyboard remains on the screen as long as text input is the first responder
        [_tempInput resignFirstResponder];
    }
    
    [super touchesBegan:touches withEvent:event];
}


@end
