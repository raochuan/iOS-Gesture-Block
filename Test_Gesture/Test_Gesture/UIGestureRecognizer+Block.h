//
//  UIGestureRecognizer+Block.h
//  Test_Gesture
//
//  Created by Chun on 16/10/10.
//  Copyright © 2016年 Chuan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^NVMGestureBlock)(UIGestureRecognizer * gesture);
@interface UIGestureRecognizer (Block)

+(instancetype)nvm_gestureRecognizerWithActionBlock:(NVMGestureBlock)block;
@end
