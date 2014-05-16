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
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.umpleClassCopy = [self.umpleClass copy];
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
        return [self.umpleClassCopy.attributes count] + 1;
    if(section == 2)
        return [self.umpleClassCopy.methods count] + 1;
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if(indexPath.section == 0 && indexPath.row == 0) //Class Name
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"Class" forIndexPath:indexPath];
        UmpleTextField* textField = (UmpleTextField*) [cell viewWithTag:1];
        textField.umpleType = @"class";
        textField.indexPath = indexPath;
        
        textField.text = self.umpleClassCopy.name;
        textField.delegate = self;
    }
    else if(indexPath.section == 1)
    {
        if(indexPath.row != self.umpleClassCopy.attributes.count) //Attributes
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"Attribute" forIndexPath:indexPath];
            
            UmpleTextField* typeField = (UmpleTextField*) [cell viewWithTag:1];
            typeField.umpleType = @"Type";
            typeField.indexPath = indexPath;
            
            UmpleTextField* nameField = (UmpleTextField*) [cell viewWithTag:2];
            nameField.umpleType = @"Name";
            nameField.indexPath = indexPath;
            
            typeField.text = [(UmpleAttribute*)[[self.umpleClassCopy attributes] objectAtIndex:indexPath.row] type];
            nameField.text = [(UmpleAttribute*)[[self.umpleClassCopy attributes] objectAtIndex:indexPath.row] name];
                
            typeField.delegate = self;
            nameField.delegate = self;
        }
        else
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"AddAttribute" forIndexPath:indexPath];
        }
    }
    else if(indexPath.section == 2) //Methods
    {
        if(indexPath.row != self.umpleClassCopy.methods.count)
        {
            cell = [tableView dequeueReusableCellWithIdentifier:@"Method" forIndexPath:indexPath];

            UmpleTextField* typeField = (UmpleTextField*) [cell viewWithTag:1];
            typeField.umpleType = @"Type";
            typeField.indexPath = indexPath;
            
            UmpleTextField* nameField = (UmpleTextField*) [cell viewWithTag:2];
            nameField.umpleType = @"Name";
            nameField.indexPath = indexPath;
            
            typeField.text = [(UmpleMethod*)[[self.umpleClassCopy methods] objectAtIndex:indexPath.row] type];
            nameField.text = [(UmpleMethod*)[[self.umpleClassCopy methods] objectAtIndex:indexPath.row] name];
            
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
    if(indexPath.section == 1 && indexPath.row == self.umpleClassCopy.attributes.count)
    {
        
        [self.umpleClassCopy.attributes addObject:[UmpleAttribute new]];
        [self.tableView reloadData];
    }
    else if(indexPath.section == 2 && indexPath.row == self.umpleClassCopy.methods.count)
    {
        [self.umpleClassCopy.methods addObject:[UmpleMethod new]];
        [self.tableView reloadData];
    }
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    if(indexPath.section == 0)
        return NO;
    else if(indexPath.section == 1 && indexPath.row == self.umpleClassCopy.attributes.count)
        return NO;
    else if(indexPath.section == 2 && indexPath.row == self.umpleClassCopy.methods.count)
        return NO;
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        if(indexPath.section == 1)
        {
            [self.umpleClassCopy.attributes removeObjectAtIndex:indexPath.row];
        }
        else if(indexPath.section == 2)
        {
            [self.umpleClassCopy.methods removeObjectAtIndex:indexPath.row];
        }
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

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
    [self.umpleClass copy:self.umpleClassCopy];
    [self.delegate finishedEditingClass:self.umpleClass];
}



-(BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    UmpleTextField *umpTextField = (UmpleTextField*) textField;
    NSString *newString = [umpTextField.text stringByReplacingCharactersInRange:range withString:string];
    
    if(umpTextField.indexPath.section == 0) //Class Name
    {
        self.umpleClassCopy.name = newString;
    }
    else if(umpTextField.indexPath.section == 1) //Attribute Name
    {
        UmpleAttribute* umpAttr = [self.umpleClassCopy.attributes objectAtIndex:umpTextField.indexPath.row];
        if([umpTextField.umpleType isEqualToString:@"Type"])
        {
            umpAttr.type = newString;
        }
        else if([umpTextField.umpleType isEqualToString:@"Name"])
        {
            umpAttr.name = newString;
        }
    }
    else if(umpTextField.indexPath.section == 2) //Method Name
    {
        UmpleMethod* umpMethod = [self.umpleClassCopy.methods objectAtIndex:umpTextField.indexPath.row];
        if([umpTextField.umpleType isEqualToString:@"Type"])
        {
            umpMethod.type = newString;
        }
        else if([umpTextField.umpleType isEqualToString:@"Name"])
        {
            umpMethod.name = newString;
        }
    }
    return YES;
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
