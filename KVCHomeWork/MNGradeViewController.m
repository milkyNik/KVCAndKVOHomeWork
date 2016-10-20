//
//  MNGradeViewController.m
//  KVCHomeWork
//
//  Created by iMac on 20.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import "MNGradeViewController.h"

@interface MNGradeViewController ()

@property (strong, nonatomic) NSArray* gradesArray;

@end

@implementation MNGradeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gradesArray = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    
}

#pragma mark - UIPickerViewDataSource


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView
numberOfRowsInComponent:(NSInteger)component

{
    return [self.gradesArray count];
}

#pragma mark - UIPickerViewDelegate

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.gradesArray[row];
}

@end
