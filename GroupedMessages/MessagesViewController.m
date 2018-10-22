//
//  ViewController.m
//  GroupedMessages
//
//  Created by SEAN on 2018/10/22.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import "MessagesViewController.h"
#import "ChatMessageCell.h"

@interface MessagesViewController ()
@property (strong, nonatomic) NSMutableArray *messages;
@end

@implementation MessagesViewController

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.messages = [[NSMutableArray alloc] init];
    [self.messages addObject:@"Here's my first message"];
    [self.messages addObject:@"Here's my second message Here's my second message Here's my second message Here's my second message Here's my second message "];
    [self.messages addObject:@"Here's my third message Here's my third message Here's my third message "];
    
    self.tableView.backgroundColor = UIColor.whiteColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:ChatMessageCell.class forCellReuseIdentifier:cellId];
    self.navigationItem.title = @"Messages";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ChatMessageCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.messageLabel.text = self.messages[indexPath.row];
    return cell;
}



@end
