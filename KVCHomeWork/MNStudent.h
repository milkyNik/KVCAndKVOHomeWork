//
//  MNStudent.h
//  KVCHomeWork
//
//  Created by iMac on 12.10.16.
//  Copyright © 2016 hata. All rights reserved.
//

#import <Foundation/Foundation.h>

//1. Создайте класс студента с пропертисами firstName, lastName, dateOfBirth, gender, grade
//2. Также создайте статическую таблицу куда все эти данные выводятся и где их можно менять (с текст филдами, сенгментед контролами и тд)
//3. Пропертисы вашего студента меняйте тем же образом что и в предыдущих уроках (через делегаты и акшины)

typedef enum {
    
    MNStudentGenderMan,
    MNStudentGenderWomen
    
} MNStudentGender;

@interface MNStudent : NSObject

@property (strong, nonatomic) NSString* firstName;
@property (strong, nonatomic) NSString* lastName;
@property (strong, nonatomic) NSDate* dateOfBirth;
@property (assign, nonatomic) MNStudentGender gender;
@property (assign, nonatomic) NSInteger grade;

@property (weak, nonatomic) MNStudent* friendStudent;



- (void) reload;

@end
