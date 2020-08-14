//
//  TestView.m
//  FLEX
//
//  Created by linzuhan on 2019/3/21.
//  Copyright © 2019 Flipboard. All rights reserved.
//

#import "TestView.h"
#import <FLEX/FLEX.h>

@implementation TestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.phoneTextField resignFirstResponder];
    [[FLEXManager sharedManager] debugResignKeyWindow];
}

@end
