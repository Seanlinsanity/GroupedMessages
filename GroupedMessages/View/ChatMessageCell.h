//
//  ChatMessageCell.h
//  GroupedMessages
//
//  Created by SEAN on 2018/10/22.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatMessage.h"

@interface ChatMessageCell : UITableViewCell
@property (strong, nonatomic) UILabel *messageLabel;
@property (strong, nonatomic) UIView *bubbleBackgroundView;
@property (strong, nonatomic) ChatMessage *chatmessage;
@end


