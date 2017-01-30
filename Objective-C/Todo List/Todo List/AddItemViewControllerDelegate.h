//
//  AddItemViewControllerDelegate.h
//  Todo List
//
//  Created by Gabe Pavel on 2017-01-29.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AddItemViewControllerDelegate <NSObject>

- (void)didSaveNewTodo:(NSString *)todoText;

@end
