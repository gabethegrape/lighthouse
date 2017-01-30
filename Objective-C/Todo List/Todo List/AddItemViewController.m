//
//  AddItemViewController.m
//  Todo List
//
//  Created by Gabe Pavel on 2017-01-26.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "AddItemViewController.h"

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
    [self.delegate didSaveNewTodo:self.textField.text];
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
