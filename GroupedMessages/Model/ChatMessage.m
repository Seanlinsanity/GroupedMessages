//
//  ChatMessage.m
//  GroupedMessages
//
//  Created by SEAN on 2018/10/23.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import "ChatMessage.h"

@implementation ChatMessage
-(id)initWithText: (NSString *)text isComing:(BOOL)isComing date:(NSDate *)date
{
    if (self = [super init]) {
        self.text = text;
        self.isComing = isComing;
        self.date = date;
    }
    return self;
}
@end
