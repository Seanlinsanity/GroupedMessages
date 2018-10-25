//
//  DateHeaderLabel.m
//  GroupedMessages
//
//  Created by SEAN on 2018/10/25.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import "DateHeaderLabel.h"

@implementation DateHeaderLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.font = [UIFont boldSystemFontOfSize:16];
        self.text = @"Some Date Here";
        self.textAlignment = NSTextAlignmentCenter;
        self.textColor = UIColor.whiteColor;
        self.backgroundColor = [UIColor colorWithRed:144/255.f green:238/255.f blue:144/255.f alpha:1];
    }
    return self;
}

- (CGSize)intrinsicContentSize {
    CGSize originalContentSize = [super intrinsicContentSize];
    CGFloat height = originalContentSize.height + 12;
    self.layer.cornerRadius = height / 2;
    self.layer.masksToBounds = YES;
    return CGSizeMake(originalContentSize.width + 16, height);
}

@end
