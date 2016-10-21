//
//  MNGradeViewController.h
//  KVCHomeWork
//
//  Created by iMac on 20.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MNGradeViewDelegate;

@interface MNGradeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *gradePicker;
@property (strong, nonatomic) id <MNGradeViewDelegate> delegate;

@end

@protocol MNGradeViewDelegate

- (void) gradePicker:(UIPickerView*) gradePicker didChangeRow:(NSInteger) row;
- (NSInteger) getGrade;

@end