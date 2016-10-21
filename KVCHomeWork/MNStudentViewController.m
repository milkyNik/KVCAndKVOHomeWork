//
//  MNStudentViewController.m
//  KVCHomeWork
//
//  Created by iMac on 12.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import "MNStudentViewController.h"
#import "MNDateViewController.h"
#import "MNGradeViewController.h"
#import "MNGradeViewController.h"
#import "MNStudent.h"

@interface MNStudentViewController () <MNDateViewDelegate, MNGradeViewDelegate>

@property (strong, nonatomic) MNStudent* student;

@end

@implementation MNStudentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.student = [[MNStudent alloc] init];
    
    self.navigationItem.title = @"Student Info";
    
    if (self.student.firstName) {
        self.firstNameField.text = self.student.firstName;
    }
    
    if (self.student.lastName) {
        self.lastNameField.text = self.student.lastName;
    }
    
    if (self.student.gender) {
        [self.genderSegmentedControl setSelectedSegmentIndex:self.student.gender];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if ([textField isEqual:self.firstNameField]) {
        self.student.firstName = textField.text;
    }
    
    if ([textField isEqual:self.lastNameField]) {
        self.student.lastName = textField.text;
    }
    
    if ([textField isEqual:self.dateOfBirthField]) {
        
        NSLog(@"dateOfBirthField");
        
        MNDateViewController* dateController = [self.storyboard instantiateViewControllerWithIdentifier:@"MNDateViewController"];
        
        dateController.delegate = self;
        
        [self.navigationController pushViewController:dateController animated:YES];
        
        
        return NO;
        
    }
    
    if ([textField isEqual:self.gradeField]) {
        
        NSLog(@"gradeField");
        
        MNGradeViewController* gradeController = [self.storyboard instantiateViewControllerWithIdentifier:@"MNGradeViewController"];
        
        gradeController.delegate = self;
        
        [self.navigationController pushViewController:gradeController animated:YES];
        
        return NO;
        
    }
    
    return YES;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ([textField isEqual:self.firstNameField]) {
        [self.lastNameField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    
    return YES;
    
}

#pragma mark - MNDateViewDelegate

- (void)datePicker:(UIDatePicker *)datePicker didChangeDate:(NSDate *)date {
    
    self.student.dateOfBirth = date;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd.MM.yyyy"];
    
    self.dateOfBirthField.text = [formatter stringFromDate:date];
    
}

- (NSDate*) getDate {
    
    if (self.student.dateOfBirth) {
        return self.student.dateOfBirth;
    }
    
    return [NSDate date];
}

#pragma mark - MNGradeViewDelegate

- (void) gradePicker:(UIPickerView*) gradePicker didChangeRow:(NSInteger) row {
    
    
    self.student.grade = row + 1;
    
    self.gradeField.text = [NSString stringWithFormat:@"%ld",(long)row + 1];

}

- (NSInteger) getGrade {
    
    if (self.student.grade) {
        return self.student.grade - 1;
    } else {
        return 0;
    }
    
}

#pragma mark - Actions

- (IBAction)actionGenderSegmentedControl:(UISegmentedControl *)sender {
    
    self.student.gender = sender.selectedSegmentIndex;
    
}
@end
