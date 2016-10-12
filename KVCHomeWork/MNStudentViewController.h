//
//  MNStudentViewController.h
//  KVCHomeWork
//
//  Created by iMac on 12.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MNStudentViewController : UITableViewController <UITextFieldDelegate>

#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *dateOfBirthField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *gradeField;


#pragma mark - Actions

- (IBAction)actionFirstName:(UITextField *)sender;
- (IBAction)actionLastName:(UITextField *)sender;
- (IBAction)actionDateOfBirth:(UITextField *)sender;
- (IBAction)actionGender:(UISegmentedControl *)sender;
- (IBAction)actionGrade:(UITextField *)sender;



@end
