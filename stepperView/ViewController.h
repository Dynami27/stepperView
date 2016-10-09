//
//  ViewController.h
//  stepperView
//
//  Created by Khalid Mohamed on 10/6/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StepperView.h"

@interface ViewController : UIViewController<StepperViewDelegate>
{
    
}

@property (nonatomic,weak) IBOutlet UILabel *label;


@end



