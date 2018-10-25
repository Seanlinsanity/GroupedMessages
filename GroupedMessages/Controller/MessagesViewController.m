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
#import "Date_extension.h"
#import "DateHeaderLabel.h"

@interface MessagesViewController ()
//@property (strong, nonatomic) NSMutableArray<ChatMessage *> *messages;
@property (nonatomic, strong) NSMutableArray *messages;

@end

@implementation MessagesViewController

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Messages";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    [self initMessages];
    [self setupTableView];
}

- (void)setupTableView {
    self.tableView.backgroundColor = UIColor.whiteColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    [self.tableView registerClass:ChatMessageCell.class forCellReuseIdentifier:cellId];
}

- (void)initMessages {
    self.messages = [[NSMutableArray alloc] init];
    NSMutableArray *firstMessage = [NSMutableArray arrayWithObjects:
                                    [[ChatMessage alloc] initWithText:@"What's up!" isComing:NO  date:[NSDate dateFromCustomString:@"10/16/2018"]],
                                    [[ChatMessage alloc] initWithText:@"LeBron James hit his first big clutch shot as a Laker, burying a pull-up 28-foot 3-pointer in the Center written on the court where it says Staples Center. And James is two rebounds shy of his first triple-double as a Laker as the game enters overtime. Kyle Kuzma screamed with delight as he watched the ball go through the net." isComing:YES date:[NSDate dateFromCustomString:@"10/16/2018"]],
                                    [[ChatMessage alloc] initWithText:@"Thanks to 16 third-quarter points from Trey Burke, the Knicks have cut a 19-point first-half deficit to two late in the third. Remarkable run for Burke, who missed a key free throw late in NYK's loss to Boston on Saturday." isComing:NO date:[NSDate dateFromCustomString:@"10/16/2018"]],
                                    [[ChatMessage alloc] initWithText:@"Stephen Curry for 3" isComing:NO date:[NSDate dateFromCustomString:@"10/16/2018"]],
                                    nil
                                    ];
    [self.messages addObject:firstMessage];
    
    NSMutableArray *secondMessage = [NSMutableArray arrayWithObjects:
                                     [[ChatMessage alloc] initWithText:@"For those interested: there's a feature on Ron Baker airing on MSG Network Monday at 11 PM. The show, part of a series dubbed ‘Unfiltered', shows Baker taking a tour of the Upper West Side and visiting his favorite places to eat, including Jacob's Pickles and the original Zabar's market." isComing:NO date:[NSDate dateFromCustomString:@"10/22/2018"]],
                                     [[ChatMessage alloc] initWithText:@"Is Giannis ready to be MVP? Will the Lakers make the playoffs? What's the Jimmy Butler fallout? There are plenty of questions to answer this season." isComing:YES date:[NSDate dateFromCustomString:@"10/22/2018"]],
                                     [[ChatMessage alloc] initWithText:@"Walton was pleased with the two stepping up in starts for Brandon Ingram and Rajon Rondo." isComing:NO date:[NSDate dateFromCustomString:@"10/22/2018"]],
                                     nil
                                     ];
    [self.messages addObject:secondMessage];
    
    NSMutableArray *thirdMessage = [NSMutableArray arrayWithObjects:
                                    [[ChatMessage alloc] initWithText:@"The Lakers dropped 142 points in their loss to the Spurs." isComing:NO date:[NSDate dateFromCustomString:@"10/24/2018"]],
                                    [[ChatMessage alloc] initWithText:@"Kyle Kuzma was just 1 point shy of tying his career high in points." isComing:YES date:[NSDate dateFromCustomString:@"10/24/2018"]],
                                    nil
                                    ];
    [self.messages addObject:thirdMessage];
    
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    ChatMessage *chatMessage = self.messages[section][0];
//    NSDateFormatter *formatter = [NSDateFormatter new];
//    formatter.dateFormat = @"MM/dd/yyyy";
//    return [NSString stringWithFormat:@"%@", [formatter stringFromDate:chatMessage.date]];
//}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel *label = [DateHeaderLabel new];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIView *containerView = [UIView new];
    [containerView addSubview:label];
    [label.centerXAnchor constraintEqualToAnchor:containerView.centerXAnchor].active = YES;
    [label.centerYAnchor constraintEqualToAnchor:containerView.centerYAnchor].active = YES;
    
    ChatMessage *chatMessage = self.messages[section][0];
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"MM/dd/yyyy";
    label.text = [NSString stringWithFormat:@"%@", [formatter stringFromDate:chatMessage.date]];
    
    return containerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.messages.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableArray *subArray = self.messages[section];
    return subArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ChatMessageCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.chatmessage = self.messages[indexPath.section][indexPath.row];
    return cell;
}


@end
