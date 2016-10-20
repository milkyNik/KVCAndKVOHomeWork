//
//  MNStudentViewController.m
//  KVCHomeWork
//
//  Created by iMac on 12.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import "MNStudentViewController.h"

@interface MNStudentViewController ()

@end

@implementation MNStudentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if ([textField isEqual:self.dateOfBirthField]) {
        
        NSLog(@"dateOfBirthField");
        return NO;
        
    }
    
    if ([textField isEqual:self.gradeField]) {
        
        NSLog(@"gradeField");
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

@end
