//
//  Person.h
//  RuntimeDemo
//
//  Created by wengzilin on 15/10/12.
//  Copyright (c) 2015年 wengzilin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Biology.h"

@interface Person : Biology<NSCopying, NSCoding>
{
    NSString *_father;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;


@end
