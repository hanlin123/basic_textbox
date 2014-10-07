//
//  ViewController.h
//  basic_textbox
//
//  Created by Lin, Han on 10/6/14.
//  Copyright (c) 2014 Lin, Han. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tempInput;
@property (strong, nonatomic) IBOutlet UILabel *resultOutput;
- (IBAction)convertTemp:(id)sender;

@end

