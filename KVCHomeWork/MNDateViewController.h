//
//  MNDateViewController.h
//  KVCHomeWork
//
//  Created by iMac on 20.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MNDateViewDelegate;

@interface MNDateViewController : UIViewController

@property (strong, nonatomic) id <MNDateViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIDatePicker *dateOfBirthPicker;

- (IBAction)actionDateOfBirth:(UIDatePicker *)sender;

@end

@protocol MNDateViewDelegate
@required
- (void)datePicker:(UIDatePicker *)datePicker didChangeDate:(NSDate *)date;
- (NSDate*) getDate;
@end

