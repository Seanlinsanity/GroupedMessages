//
//  ViewController.m
//  GroupedMessages
//
//  Created by SEAN on 2018/10/22.
//  Copyright © 2018 SEAN. All rights reserved.
//

#import "MessagesViewController.h"
#import "ChatMessageCell.h"
#import "ChatMessage.h"

@interface MessagesViewController ()
@property (strong, nonatomic) NSMutableArray<ChatMessage *> *messages;
@end

@implementation MessagesViewController

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.messages = [[NSMutableArray alloc] init];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"What's up!" isComing:NO ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"LeBron James hit his first big clutch shot as a Laker, burying a pull-up 28-foot 3-pointer in the Center written on the court where it says Staples Center. And James is two rebounds shy of his first triple-double as a Laker as the game enters overtime. Kyle Kuzma screamed with delight as he watched the ball go through the net." isComing:YES ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"Thanks to 16 third-quarter points from Trey Burke, the Knicks have cut a 19-point first-half deficit to two late in the third. Remarkable run for Burke, who missed a key free throw late in NYK's loss to Boston on Saturday." isComing:NO ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"For those interested: there's a feature on Ron Baker airing on MSG Network Monday at 11 PM. The show, part of a series dubbed ‘Unfiltered', shows Baker taking a tour of the Upper West Side and visiting his favorite places to eat, including Jacob's Pickles and the original Zabar's market." isComing:NO ]];
     [self.messages addObject: [[ChatMessage alloc] initWithText:@"Is Giannis ready to be MVP? Will the Lakers make the playoffs? What's the Jimmy Butler fallout? There are plenty of questions to answer this season." isComing:YES ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"Luke Walton praised Kyle Kuzma and said nights like this is why they're so big on Kuzma. And Walton liked the shots Lonzo Ball hit tonight." isComing:NO ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"Walton was pleased with the two stepping up in starts for Brandon Ingram and Rajon Rondo." isComing:NO ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"The Lakers dropped 142 points in their loss to the Spurs." isComing:YES ]];
    [self.messages addObject: [[ChatMessage alloc] initWithText:@"Kyle Kuzma was just 1 point shy of tying his career high in points." isComing:NO ]];
    
    self.tableView.backgroundColor = UIColor.whiteColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    [self.tableView registerClass:ChatMessageCell.class forCellReuseIdentifier:cellId];
    self.navigationItem.title = @"Messages";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ChatMessageCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.chatmessage = self.messages[indexPath.row];
    return cell;
}



@end
