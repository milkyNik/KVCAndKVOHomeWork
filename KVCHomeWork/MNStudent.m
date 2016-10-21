//
//  MNStudent.m
//  KVCHomeWork
//
//  Created by iMac on 12.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import "MNStudent.h"

@implementation MNStudent

- (void) reload {

    [self willChangeValueForKey:@"firstName"];
    _firstName = @"";
    [self didChangeValueForKey:@"firstName"];
    
    [self willChangeValueForKey:@"lastName"];
    _lastName = @"";
    [self didChangeValueForKey:@"lastName"];
    
    [self willChangeValueForKey:@"dateOfBirth"];
    _dateOfBirth = [NSDate date];
    [self didChangeValueForKey:@"dateOfBirth"];
    
    [self willChangeValueForKey:@"gender"];
    _gender = 0;
    [self didChangeValueForKey:@"gender"];
    
    [self willChangeValueForKey:@"grade"];
    _grade = 0;
    [self didChangeValueForKey:@"grade"];
    
    
    
    
    
    
}

@end
