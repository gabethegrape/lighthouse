//
//  AddItemViewController.h
//  Todo List
//
//  Created by Gabe Pavel on 2017-01-26.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewControllerDelegate.h"

@interface AddItemViewController : UIViewController

@property (nonatomic, strong) id<AddItemViewControllerDelegate> delegate;
// @property (attributes) type < protocol_name > name;

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
