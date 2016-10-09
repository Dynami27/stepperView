//
//  ViewController.m
//  stepperView
//
//  Created by Khalid Mohamed on 10/6/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    StepperView *stepperView = [[StepperView alloc] initWithFrame:CGRectMake(50,200,200,100)];
    stepperView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:stepperView];
    

    
    
    // Do any additional setup after loading the view, typically from a nib.
    
}
-(void) stepperViewValueChanged:(int)value {
    self.label.text = [NSString stringWithFormat:@"%d",value];
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
