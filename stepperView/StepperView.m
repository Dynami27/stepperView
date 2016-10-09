//
//  stepperView.m
//  stepperView
//
//  Created by Khalid Mohamed on 10/6/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StepperView.h"


@implementation StepperView

-(id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    currentValue = 10;
    
    UIButton *buttonPlus= [UIButton buttonWithType:UIButtonTypeCustom];
    buttonPlus.backgroundColor = [UIColor greenColor];
    [buttonPlus setTitle:@"+" forState: UIControlStateNormal];
    buttonPlus.frame = CGRectMake(10,40,30,30);
    [buttonPlus addTarget:self action:@selector(buttonPlusPressed:) forControlEvents:UIControlEventTouchUpInside ];
    [self addSubview:buttonPlus];
    
    UIButton *buttonMinus= [UIButton buttonWithType:UIButtonTypeCustom];
    buttonMinus.backgroundColor = [UIColor greenColor];
    [buttonMinus setTitle:@"-" forState: UIControlStateNormal];
    buttonMinus.frame= CGRectMake(150,40,30,30);
    [buttonMinus addTarget:self action:@selector(buttonMinusPressed:) forControlEvents:UIControlEventTouchUpInside ];
    [self addSubview:buttonMinus];
    
    label =[[UILabel alloc]init ];
    label.backgroundColor=[UIColor redColor];
    label.text=[NSString stringWithFormat:@"%d",currentValue];
    label.frame=CGRectMake(65,30,70,45);
    [self addSubview:label];
    return self;
}

-(void) buttonPlusPressed:(id) sender {
    currentValue += 1;
   label.text = [NSString stringWithFormat:@"%d",currentValue];
    [self.delegate stepperViewValueChanged:currentValue];
}
-(void) buttonMinusPressed:(id) sender {
    currentValue -= 1;
    label.text = [NSString stringWithFormat:@"%d",currentValue];
    
        [self.delegate stepperViewValueChanged:currentValue];
         }


    @end



