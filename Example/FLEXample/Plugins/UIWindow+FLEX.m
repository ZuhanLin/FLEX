//
//  UIWindow+FLEX.m
//  FLEX
//
//  Created by linzuhan on 2020/8/15.
//

#import "UIWindow+FLEX.h"
#import <FLEX/FLEX.h>
#import "ZHDebugView.h"
#import <HttpServerDebug/HttpServerDebug.h>

@implementation UIWindow (FLEX)

#if DEBUG

+ (void)load
{
    [[FLEXManager sharedManager] registerGlobalEntryWithName:@"🏀  Http Server Debug"
                                   viewControllerFutureBlock:^UIViewController * _Nonnull{
        return [[HSDHttpServerControlPannelController alloc] init];;
    }];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    [super motionBegan:motion withEvent:event];
    
    if (motion == UIEventSubtypeMotionShake) {
        [[FLEXManager sharedManager] showExplorer];
        [[FLEXManager sharedManager] showDebugControlView:[ZHDebugView DebugView]];
    }
}
#endif

@end
