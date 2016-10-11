//
//  ViewController.m
//  Test_Gesture
//
//  Created by Chun on 16/10/10.
//  Copyright © 2016年 Chuan. All rights reserved.
//

#import "ViewController.h"
#import "UIGestureRecognizer+Block.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addGestureRecognizer:[UITapGestureRecognizer nvm_gestureRecognizerWithActionBlock:^(UIGestureRecognizer *gesture) {
        NSLog(@"-----点击了了啊啊啊");
    }]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
