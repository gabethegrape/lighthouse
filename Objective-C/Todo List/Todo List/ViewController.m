//
//  ViewController.m
//  Todo List
//
//  Created by Gabe Pavel on 2017-01-26.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

#import "ViewController.h"
#import "ListTableViewCell.h"

// GOAL: display items in table view and respond to touch event with message to the console

// 1. Add TableView object to storyboard
    // add constraints to object
// 2. Create outlet for TableView object in ViewController - call it 'tableView'
// 3. Add 2 protocols to ViewController @interface (to display data and make it interactive)
    // a. UITableViewDataSource - to view, insert, delete, and reorder rows
    // b. UITableViewDelegate - for click/touch events
// 4. Add the required methods for the UITabelViewDataSource protocol
    // a. tableView:numberOfRowsInSection: - number of rows to display
    // b. tableView:cellForRowAtIndexPath: - cell to display
// 5. tableView:numberOfRowsInSection:
    // a. return 10
// 6. tableView:cellForRowAtIndexPath:
    // a. set Prototype Cells to '1' for TableView in storyboard (to view what our table will display before compiled and run)
    // b. add label to prototype cell
        // i. contstrain label to cell
        // ii. update the frames
    // c. create controller for the cell
        // i. add subclass of UITableViewCell - call it 'ListTableViewCell'
    // d. provide custom reuse Identifier for prototype cell - call it 'ListTableViewCell' (same as controller)
    // e. change class for prototype cell - call it 'ListTableViewCell' (same as controller)
    // f. create label outlet to ListTableViewCell controller - call it 'titleLabel'
    // g. import 'ListTableViewCell.h'
    // h. update tableView:cellForRowAtIndexPath: method
        // i. assign 'ListTableViewCell' to 'cellIdentifier' string variable
        // ii. create ListTableViewCell object called 'cell'
            // call dequeueReusableCellWithIdentifier method with 'cellIdentifier' property on tableView object
        // iii. if no cell exists, create new one
            // instantiate ListTableViewCell object
            // init with default style
            // pass 'cellIdentifier' to reuseIdentifier
        // iv. assign 'Hello' string to the label in the cell
        // v. return 'cell'
    // i. Connect the TableView to View Controller 'data source' in the storyboard
        // this tells the storyboard that Table View object data source is managed by the View Controller
// 7. Add tableView:didSelectRowAtIndexPath method from the UITableViewDelegate
    // a. return string - 'I was touched'
    // connect the TableView to View Controller 'delegate' in the storyboard



@interface ViewController () <UITableViewDataSource, UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"ListTableViewCell";
    ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (nil == cell) {
        cell = [[ListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.titleLabel.text = @"Hello";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Hello I was touched");
}


@end
