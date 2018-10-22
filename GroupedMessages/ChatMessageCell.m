//
//  ChatMessageCell.m
//  GroupedMessages
//
//  Created by SEAN on 2018/10/22.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import "ChatMessageCell.h"

@implementation ChatMessageCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupCellComponents];
    }
    return self;
}

- (void)setupCellComponents {
    self.messageLabel = ({
        UILabel *label = [UILabel new];
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.text = @"Show Message Text Here Show Message Text Here Show Message Text Here Show Message Text Here Show Message Text Here Show Message Text Here Show Message Text Here Show Message Text Here Show Message Text Here...";
        label.numberOfLines = 0;
        label;
    });
    
    self.bubbleBackgroundView = ({
        UIView *view = [UIView new];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.backgroundColor = UIColor.cyanColor;
        view.layer.cornerRadius = 8;
        view;
    });
    
    [self setupConstraint];

}

- (void)setupConstraint {
    [self addSubview:self.bubbleBackgroundView];
    [self addSubview: self.messageLabel];
    
    [self.messageLabel.topAnchor constraintEqualToAnchor:self.topAnchor constant:32].active = YES;
    [self.messageLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:32].active = YES;
    //    [self.messageLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor].active = YES;
    [self.messageLabel.widthAnchor constraintEqualToConstant:250].active = YES;
    [self.messageLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-32].active = YES;
    
    [self.bubbleBackgroundView.topAnchor constraintEqualToAnchor:self.messageLabel.topAnchor constant:-16].active = YES;
    [self.bubbleBackgroundView.leadingAnchor constraintEqualToAnchor:self.messageLabel.leadingAnchor constant:-16].active = YES;
    [self.bubbleBackgroundView.trailingAnchor constraintEqualToAnchor:self.messageLabel.trailingAnchor constant:16].active = YES;
    [self.bubbleBackgroundView.bottomAnchor constraintEqualToAnchor:self.messageLabel.bottomAnchor constant:16].active = YES;
}

@end
