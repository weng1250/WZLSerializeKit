
//
//  Person.m
//  RuntimeDemo
//
//  Created by wengzilin on 15/10/12.
//  Copyright (c) 2015年 wengzilin. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "WZLSerializeKit.h"

//是否使用通用的encode/decode代码一次性encode/decode
#define USING_ENCODE_KIT            1

@implementation Person

WZLSERIALIZE_CODER_DECODER;

WZLSERIALIZE_COPY_WITH_ZONE;

WZLSERIALIZE_DESCRIPTION;

@end
