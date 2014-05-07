//
//  UmpleClassEditorViewController.m
//  UmpleApp
//
//  Created by Charles Wang on 5/6/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import "UmpleClassEditorViewController.h"

@interface UmpleClassEditorViewController ()

@end

@implementation UmpleClassEditorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.umpleNewAttributes = [NSMutableArray new];
    self.umpleNewMethods = [NSMutableArray new];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if(self.umpleNewAttributes)
    {
        [self.umpleNewAttributes removeAllObjects];
    }
    if(self.umpleNewMethods)
    {
        [self.umpleNewMethods removeAllObjects];
    }
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"Class Name";
    }
    else if(section == 1)
    {
        return @"Attributes";
    }
    else if(section == 2)
    {
        return @"Methods";
    }
    return @"Error";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
        return 1;
    if(section == 1)
        return [self.umpleClass.attributes count] + [self.umpleNewAttributes count] + 1;
    if(section == 2)
        return [self.umpleClass.methods count] + [self.umpleNewMethods count] + 1;
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if(indexPath.section == 0 && indexPath.row == 0)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Class" forIndexPath:indexPath];
        UITextField* textField = (UITextField*) [cell viewWithTag:1];
        textField.text = self.umpleClass.name;
        textField.delegate = self;
    }
    else if(indexPath.section == 1)
    {
        if(indexPath.row != self.umpleClass.attributes.count + self.umpleNewAttributes.count)
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"Attribute" forIndexPath:indexPath];
            UITextField* typeField = (UITextField*) [cell viewWithTag:1];
            UITextField* nameField = (UITextField*) [cell viewWithTag:2];
            if(indexPath.row < self.umpleClass.attributes.count)
            {
                typeField.text = [(UmpleAttribute*)[[self.umpleClass attributes] objectAtIndex:indexPath.row] type];
                nameField.text = [(UmpleAttribute*)[[self.umpleClass attributes] objectAtIndex:indexPath.row] name];
            }
            else
            {
                typeField.text = @"";
                nameField.text = @"";
            }
            typeField.delegate = self;
            nameField.delegate = self;
        }
        else
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"AddAttribute" forIndexPath:indexPath];
        }
    }
    else if(indexPath.section == 2)
    {
        if(indexPath.row != self.umpleClass.methods.count + self.umpleNewMethods.count)
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"Method" forIndexPath:indexPath];
            UITextField* typeField = (UITextField*) [cell viewWithTag:1];
            UITextField* nameField = (UITextField*) [cell viewWithTag:2];
            if(indexPath.row < self.umpleClass.methods.count)
            {
                typeField.text = [(UmpleAttribute*)[[self.umpleClass methods] objectAtIndex:indexPath.row] type];
                nameField.text = [(UmpleAttribute*)[[self.umpleClass methods] objectAtIndex:indexPath.row] name];
            }
            else
            {
                typeField.text = @"";
                nameField.text = @"";
            }
            typeField.delegate = self;
            nameField.delegate = self;
        }
        else
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"AddMethod" forIndexPath:indexPath];
        }
    }
    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 1 && indexPath.row == (self.umpleNewAttributes.count + self.umpleClass.attributes.count))
    {
        [self.umpleNewAttributes addObject:[UmpleAttribute new]];
        [self.tableView reloadData];
    }
    else if(indexPath.section == 2 && indexPath.row == (self.umpleNewMethods.count + self.umpleClass.methods.count))
    {
        [self.umpleNewMethods addObject:[UmpleMethod new]];
        [self.tableView reloadData];
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/
//TODO Change this name
- (IBAction)finishedEditingClass:(id)sender {

    //Attributes
    for(int i = 0; i < self.umpleNewAttributes.count; i++)
    {
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:(i + self.umpleClass.attributes.count) inSection:1]];
        UITextField* typeField = (UITextField*) [cell viewWithTag:1];
        UITextField* nameField = (UITextField*) [cell viewWithTag:2];
        if(typeField.text.length != 0 && nameField.text.length != 0)
        {
            UmpleAttribute* umpAttr = [UmpleAttribute new];
            umpAttr.name = nameField.text;
            umpAttr.type = typeField.text;
            [self.umpleClass.attributes addObject:umpAttr];
        }
    }
    
    //Methods
    for(int i = 0; i < self.umpleNewMethods.count; i++)
    {
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:(i + self.umpleClass.methods.count) inSection:2]];
        UITextField* typeField = (UITextField*) [cell viewWithTag:1];
        UITextField* nameField = (UITextField*) [cell viewWithTag:2];
        NSLog(@"In Here");
        if(typeField.text.length != 0 && nameField.text.length != 0)
        {
            UmpleMethod* umpMethod = [UmpleMethod new];
            umpMethod.name = nameField.text;
            umpMethod.type = typeField.text;
            [self.umpleClass.methods addObject:umpMethod];
            NSLog(@"Added");
        }
    }

    [self.delegate finishedEditingClass:self.umpleClass];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
