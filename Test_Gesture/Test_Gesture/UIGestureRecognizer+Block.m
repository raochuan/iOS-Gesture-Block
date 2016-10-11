//
//  UIGestureRecognizer+Block.m
//  Test_Gesture
//
//  Created by Chun on 16/10/10.
//  Copyright © 2016年 Chuan. All rights reserved.
//

#import "UIGestureRecognizer+Block.h"
#import <objc/runtime.h>
static const int target_key;


@implementation UIGestureRecognizer (Block)

+(instancetype)nvm_gestureRecognizerWithActionBlock:(NVMGestureBlock)block {
    return [[self alloc]initWithActionBlock:block];
}

- (instancetype)initWithActionBlock:(NVMGestureBlock)block {
    self = [self init];
    [self addActionBlock:block];
    [self addTarget:self action:@selector(invoke:)];
    return self;
}

- (void)addActionBlock:(NVMGestureBlock)block {
    if (block) {
        objc_setAssociatedObject(self, &target_key, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

- (void)invoke:(id)sender {
    NVMGestureBlock block = objc_getAssociatedObject(self, &target_key);
    if (block) {
        block(sender);
    }
}

@end
