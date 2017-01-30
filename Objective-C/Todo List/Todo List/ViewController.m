//
//  ViewController.m
//  Todo List
//
//  Created by Gabe Pavel on 2017-01-26.
//  Copyright © 2017 Gabe Pavel. All rights reserved.
//

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

// PART 2
// CURRENT STATUS: TableView list is static
// GOAL: Create new storyboard modal and make list dynamic by allowing new items to be added

// 8. Add Navigation Controller to Main Storyboard
// a. select 'Editor->Embed In->Navigation Controller'
// b. resize Navigation Controller to match main storyboard dimenions
// 9. Add Bar Button item to Navigation
// a. Change Title to nothing
// b. Change System Item to 'Add'
// 10. The 'Add' button should respond to touch event
// to present another view controller
// a. Add new View Controller
// b. Drag '+' button to the new View Controller (select adaptive segue 'Show')
// c. In Storyboard Segue Attributes inspector change Kind to 'Show Detail'
// 11. Add navigation bar to new modal view controller
// 12. Add Save and Cancel buttons to the modal view controller
// 13. Add new view controller subclass of UIViewController - call it AddItemViewController
// a. make AddItemViewController the custom class for the Add Item View Controller
// b. add actions for cancel and save to AddItemViewController .h file (these will then automatically become available in our implementation .m file)
// 14. cancel action
// a. call dismissViewControllerAnimated on self
// self refers to the view controller
// 15. save action
// note: FIRST need to get input data and THEN pass it back to original view control
// GET DATA
// a. add text field to view controler
// b. add constraints
// c. add placeholder text
// PASS DATA
// 1. <AddItemViewController.h> add Protocol to header (above class)
// 2. <AddItemViewController.h> add Property to call protocol from class
// 3. <AddItemViewController.m> call to delegate from save method
// d. in the AddItemViewController header, create a Delegate Protocol to "pass data backwards" to another view controller - call it AddItemViewControllerDelegate
// e. add method that returns nothing, sends text to other view controller, and closes modal when done - call method 'didSaveNewTodo' which accepts 'todoText' param
// f. we have a delegate protocol with a method, but now we need a delegate to actually pass the message to the other view controller



#import "ViewController.h"
#import "ListTableViewCell.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.todos = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.todos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"ListTableViewCell";
    ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (nil == cell) {
        cell = [[ListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *todoText = self.todos[[indexPath row]];
    cell.titleLabel.text = todoText;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Hello I was touched");
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UINavigationController *nav = segue.destinationViewController;
    AddItemViewController *addVC = nav.viewControllers[0];
    addVC.delegate = self;
}

-(void)didSaveNewTodo:(NSString *)todoText {
    [self.todos addObject:todoText];
    [self.tableView reloadData];
}
@end
