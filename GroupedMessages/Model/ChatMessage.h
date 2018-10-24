//
//  ChatMessage.h
//  GroupedMessages
//
//  Created by SEAN on 2018/10/23.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChatMessage : NSObject
@property (strong, nonatomic) NSString *text;
@property (nonatomic) BOOL isComing;
@property (nonatomic, strong) NSDate *date;
- (id)initWithText: (NSString *)text isComing: (BOOL)isComing date: (NSDate*)date;
@end

NS_ASSUME_NONNULL_END
