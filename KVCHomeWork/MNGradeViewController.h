//
//  MNGradeViewController.h
//  KVCHomeWork
//
//  Created by iMac on 20.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MNGradeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *gradePicker;

@end
