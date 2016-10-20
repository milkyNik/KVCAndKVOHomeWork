//
//  MNDateViewController.m
//  KVCHomeWork
//
//  Created by iMac on 20.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import "MNDateViewController.h"

@interface MNDateViewController ()

@end

@implementation MNDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.dateOfBirthPicker setDate:[self.delegate getDate] animated:YES];
    
}


- (IBAction)actionDateOfBirth:(UIDatePicker *)sender {
    
    [self.delegate datePicker:sender didChangeDate:sender.date];
    
}
@end
