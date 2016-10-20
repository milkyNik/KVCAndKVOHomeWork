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
#import "MNStudent.h"

@interface MNStudentViewController () <MNDateViewDelegate>

@property (strong, nonatomic) MNStudent* student;

@end

@implementation MNStudentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.student = [[MNStudent alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
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

@end
