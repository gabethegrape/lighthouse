//
//  ViewController.h
//  Todo List
//
//  Created by Gabe Pavel on 2017-01-26.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, AddItemViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *todos;

@end
