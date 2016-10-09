//
//  stepperView.h
//  stepperView
//
//  Created by Khalid Mohamed on 10/6/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol StepperViewDelegate <NSObject>

-(void) stepperViewValueChanged:(int) value;

@end

@interface StepperView : UIView
{
    UILabel *label;
     int currentValue;
}



@property (nonatomic,weak) id<StepperViewDelegate> delegate;

@end
