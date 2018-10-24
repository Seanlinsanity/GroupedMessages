//
//  Date_extension.m
//  GroupedMessages
//
//  Created by SEAN on 2018/10/24.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import "Date_extension.h"

@implementation NSDate(extension)
+ (NSDate*)dateFromCustomString: (NSString*) customString{
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"MM/dd/yyyy";
    return [formatter dateFromString:customString];
}

@end
