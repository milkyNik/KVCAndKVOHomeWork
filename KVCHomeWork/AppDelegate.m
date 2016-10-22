//
//  AppDelegate.m
//  KVCHomeWork
//
//  Created by iMac on 12.10.16.
//  Copyright © 2016 hata. All rights reserved.
//



#import "AppDelegate.h"
#import "MNStudent.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSArray* students;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    MNStudent* student1 = [[MNStudent alloc] init];
    MNStudent* student2 = [[MNStudent alloc] init];
    MNStudent* student3 = [[MNStudent alloc] init];
    MNStudent* student4 = [[MNStudent alloc] init];

    student1.friendStudent = student4;
    student2.friendStudent = student1;
    student3.friendStudent = student2;
    student4.friendStudent = student3;
    
    student1.firstName = @"Nik";
    student2.firstName = @"Alex";
    student3.firstName = @"Bob";
    student4.firstName = @"Maty";
    
    student1.grade = 5;
    student2.grade = 9;
    student3.grade = 7;
    student4.grade = 4;
    
    self.students = @[student1, student2, student3, student4];
    
    [student3 addObserver:self
               forKeyPath:@"firstName"
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:nil];
    
    //[student1 setValue:@"Test Name" forKeyPath:@"friendStudent.firstName"];
    //[student1 setValue:@"Bad Name" forKeyPath:@"friendStudent.friendStudent.firstName"];
    //[student1 setValue:@"True Name" forKeyPath:@"friendStudent.friendStudent.friendStudent.firstName"];
    //[student1 setValue:@"False Name" forKeyPath:@"friendStudent.friendStudent.friendStudent.friendStudent.firstName"];
    
    
    NSArray* names = [self.students valueForKey:@"firstName"];
    
    NSNumber* sumGrade = [self.students valueForKeyPath:@"@sum.grade"];
    NSNumber* avgGrade = [self.students valueForKeyPath:@"@avg.grade"];
    
    NSLog(@"%@", sumGrade);
    NSLog(@"%@", avgGrade);
    
    return YES;
}

- (void)dealloc {
    
    [self.students[2] removeObserver:self];
    
}

- (void)observeValueForKeyPath:(nullable NSString *)keyPath ofObject:(nullable id)object change:(nullable NSDictionary<NSString*, id> *)change context:(nullable void *)context {
    
    NSLog(@"\nkeyPath: %@\nobject: %@\nchange: %@", keyPath, object, change);
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
