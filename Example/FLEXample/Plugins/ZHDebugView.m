//
//  ZHDebugView.m
//  FLEXample
//
//  Created by linzuhan on 2020/8/15.
//  Copyright © 2020 Flipboard. All rights reserved.
//

#import "ZHDebugView.h"

static inline void addConstraints(UIView *contentView, UIView *subView) {
    subView.translatesAutoresizingMaskIntoConstraints = NO;
    [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[subView]-0-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:NSDictionaryOfVariableBindings(subView)]];
    [contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[subView]-0-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:NSDictionaryOfVariableBindings(subView)]];
    
}

@interface ZHDebugView ()

@property (strong, nonatomic) IBOutlet UIView *view;

@end

@implementation ZHDebugView

+ (ZHDebugView *)DebugView
{
    static ZHDebugView *debugView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        debugView = [[self alloc] init];
    });
    
    return debugView;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView
{
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class) owner:self options:nil];
    [self addSubview:self.view];
    addConstraints(self, self.view);
}

@end
