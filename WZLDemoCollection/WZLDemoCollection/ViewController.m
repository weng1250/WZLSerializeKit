//
//  ViewController.m
//  RuntimeDemo
//
//  Created by wengzilin on 15/10/8.
//  Copyright (c) 2015年 wengzilin. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
#import "WZLSerializeKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person = [[Person alloc] init];
    person.name = @"wengzilin";
    person.age = 26;
    [person setValue:@"laoweng" forKey:@"_father"];
    //set value of superClass
    person.introInBiology = @"I am a biology on earth";
    //[person setValue:@(10000) forKey:@"_hairCountInBiology"];//no access to private instance in super
    
    
    NSLog(@"Before archiver:\n%@", [person description]);
    
    WZLSERIALIZE_ARCHIVE(person, @"Person", [self filePath]);
    Person *thePerson = nil;
    WZLSERIALIZE_UNARCHIVE(thePerson, @"Person", [self filePath]);
    
    Person *copyPerson = [person copy];
    NSLog(@"copyPerson:%@", [copyPerson description]);
}

- (NSString *)filePath
{
    NSString *archiverFilePath = [NSString stringWithFormat:@"%@/archiver", NSHomeDirectory()];
    return archiverFilePath;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
