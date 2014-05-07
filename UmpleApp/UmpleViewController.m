//
//  UmpleViewController.m
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import "UmpleViewController.h"

@interface UmpleViewController ()

@end

@implementation UmpleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *jsonString = @"{\"umpleClasses\":[{\"position\": {\"x\": 350, \"y\": 31, \"width\": 110, \"height\": 45}, \"attributes\": [],\"methods\": [], \"id\": \"PersonRole\", \"name\": \"PersonRole\", \"displayColor\": \"\" }, {\"position\": {\"x\": 50, \"y\": 130, \"width\": 109, \"height\": 45}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"name\" }, { \"type\" : \"String\", \"name\" : \"address\" }, { \"type\" : \"String\", \"name\" : \"phoneNumber\" }],\"methods\": [], \"id\": \"Person\", \"name\": \"Person\", \"displayColor\": \"\" }, {\"position\": {\"x\": 252, \"y\": 128, \"width\": 109, \"height\": 45}, \"attributes\": [],\"methods\": [], \"id\": \"Employee\", \"name\": \"Employee\", \"displayColor\": \"\" , \"extendsClass\": \"PersonRole\"}, {\"position\": {\"x\": 444, \"y\": 125, \"width\": 166, \"height\": 96}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"name\" }, { \"type\" : \"String\", \"name\" : \"address\" }, { \"type\" : \"String\", \"name\" : \"phoneNumber\" }],\"methods\": [], \"id\": \"Client\", \"name\": \"Client\", \"displayColor\": \"\" , \"extendsClass\": \"PersonRole\"}, {\"position\": {\"x\": 252, \"y\": 216, \"width\": 109, \"height\": 41}, \"attributes\": [],\"methods\": [], \"id\": \"Manager\", \"name\": \"Manager\", \"displayColor\": \"\" , \"extendsClass\": \"Employee\"}, {\"position\": {\"x\": 438, \"y\": 270, \"width\": 189, \"height\": 96}, \"attributes\": [{ \"type\" : \"Integer\", \"name\" : \"accountNumber\" }, { \"type\" : \"Float\", \"name\" : \"balance\" }, { \"type\" : \"Float\", \"name\" : \"creditLimit\" }],\"methods\": [], \"id\": \"Account\", \"name\": \"Account\", \"displayColor\": \"\" }, {\"position\": {\"x\": 665, \"y\": 258, \"width\": 152, \"height\": 79}, \"attributes\": [{ \"type\" : \"Float\", \"name\" : \"monthlyFee\" }, { \"type\" : \"Float\", \"name\" : \"interestRate\" }],\"methods\": [], \"id\": \"AccountType\", \"name\": \"AccountType\", \"displayColor\": \"\" }, {\"position\": {\"x\": 668, \"y\": 146, \"width\": 149, \"height\": 62}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"description\" }],\"methods\": [], \"id\": \"Privilege\", \"name\": \"Privilege\", \"displayColor\": \"\" }, {\"position\": {\"x\": 391, \"y\": 416, \"width\": 139, \"height\": 58}, \"attributes\": [{ \"type\" : \"Date\", \"name\" : \"expiryDate\" }],\"methods\": [], \"id\": \"CreditCardAccount\", \"name\": \"CreditCardAccount\", \"displayColor\": \"\" , \"extendsClass\": \"Account\"}, {\"position\": {\"x\": 565, \"y\": 416, \"width\": 137, \"height\": 58}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"collateral\" }],\"methods\": [], \"id\": \"MortgageAccount\", \"name\": \"MortgageAccount\", \"displayColor\": \"\" , \"extendsClass\": \"Account\"}, {\"position\": {\"x\": 161, \"y\": 415, \"width\": 153, \"height\": 58}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"holderName\" }],\"methods\": [], \"id\": \"Card\", \"name\": \"Card\", \"displayColor\": \"\" }, {\"position\": {\"x\": 200, \"y\": 283, \"width\": 171, \"height\": 79}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"address\" }, { \"type\" : \"String\", \"name\" : \"branchNumber\" }],\"methods\": [], \"id\": \"Branch\", \"name\": \"Branch\", \"displayColor\": \"\" , \"extendsClass\": \"Division\"}, {\"position\": {\"x\": 80, \"y\": 185, \"width\": 112, \"height\": 77}, \"attributes\": [{ \"type\" : \"String\", \"name\" : \"name\" }],\"methods\": [], \"id\": \"Division\", \"name\": \"Division\", \"displayColor\": \"\" }], \"umpleAssociations\":[{\"offsetOnePosition\": {\"x\": 109, \"y\": 10, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 0, \"y\": 10, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_0\", \"classOneId\": \"Person\", \"classTwoId\": \"PersonRole\", \"multiplicityOne\": \"1\", \"multiplicityTwo\": \"*\", \"name\": \"Person__PersonRole\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 80, \"y\": 96, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 86, \"y\": 0, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_1\", \"classOneId\": \"Client\", \"classTwoId\": \"Account\", \"multiplicityOne\": \"1..2\", \"multiplicityTwo\": \"1..*\", \"name\": \"Account__Client\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 93, \"y\": 0, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 93, \"y\": 45, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_2\", \"classOneId\": \"Manager\", \"classTwoId\": \"Employee\", \"multiplicityOne\": \"0..1\", \"multiplicityTwo\": \"*\", \"name\": \"Employee__Manager\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 190, \"y\": 15, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 0, \"y\": 27, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_3\", \"classOneId\": \"Account\", \"classTwoId\": \"AccountType\", \"multiplicityOne\": \"*\", \"multiplicityTwo\": \"1\", \"name\": \"Account__AccountType\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"false\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 70, \"y\": 0, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 67, \"y\": 62, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_4\", \"classOneId\": \"AccountType\", \"classTwoId\": \"Privilege\", \"multiplicityOne\": \"*\", \"multiplicityTwo\": \"*\", \"name\": \"AccountType__Privilege\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 0, \"y\": 14, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 153, \"y\": 15, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_5\", \"classOneId\": \"CreditCardAccount\", \"classTwoId\": \"Card\", \"multiplicityOne\": \"1\", \"multiplicityTwo\": \"1..*\", \"name\": \"Card__CreditCardAccount\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 172, \"y\": 15, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 0, \"y\": 28, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_6\", \"classOneId\": \"Branch\", \"classTwoId\": \"Account\", \"multiplicityOne\": \"1\", \"multiplicityTwo\": \"*\", \"name\": \"Account__Branch\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 112, \"y\": 0, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 0, \"y\": 31, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_7\", \"classOneId\": \"Division\", \"classTwoId\": \"Employee\", \"multiplicityOne\": \"1\", \"multiplicityTwo\": \"*\", \"name\": \"Division__Employee\", \"roleOne\": \"undefined\", \"roleTwo\": \"undefined\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}, {\"offsetOnePosition\": {\"x\": 0, \"y\": 63, \"width\": 0, \"height\": 0}, \"offsetTwoPosition\": {\"x\": 10, \"y\": 77, \"width\": 0, \"height\": 0}, \"id\": \"umpleAssociation_8\", \"classOneId\": \"Division\", \"classTwoId\": \"Division\", \"multiplicityOne\": \"0..1\", \"multiplicityTwo\": \"*\", \"name\": \"Division__Division:subDivision\", \"roleOne\": \"undefined\", \"roleTwo\": \"subDivision\", \"isLeftNavigable\":\"true\", \"isRightNavigable\":\"true\"}] }";
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *e;
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&e];
    
    //Set the content frame of the Umple Diagram
    //Needed for the scrollview
    CGRect contentFrame = CGRectMake(0,0,self.view.frame.size.width*1.5, self.view.frame.size.height*1.5);
    
    //Set Required Setting for Scroll View
    self.umpleScrollView.delegate = self;
    self.umpleScrollView.minimumZoomScale=0.9;
    self.umpleScrollView.maximumZoomScale=4.0;
    self.umpleScrollView.contentSize = CGSizeMake(contentFrame.size.width, contentFrame.size.height);
    [self.umpleScrollView setScrollEnabled:YES];
    
    //Going to remove this
    [self.umpleMenuScrollView setScrollEnabled:YES];
    self.umpleMenuScrollView.contentSize = CGSizeMake(self.umpleMenuScrollView.frame.size.width*2, self.umpleMenuScrollView.frame.size.height);
    UIView* umpleMenuView = [[[NSBundle mainBundle] loadNibNamed:@"UmpleMenuView" owner:self options:nil] objectAtIndex:0];
    [self.umpleMenuScrollView addSubview:umpleMenuView];

    //Inner view inside the scroll view
    //This is where the elements are drawn
    self.umpleView = [[UIView alloc]initWithFrame:contentFrame];
    
    //This is a subview of umpleView that contains association drawing
    self.umpleAssocView = [[UIView alloc] initWithFrame:contentFrame];
    [self.umpleAssocView setBackgroundColor:[UIColor clearColor]];
    [self.umpleView addSubview:self.umpleAssocView];
    [self.umpleAssocView.layer setDelegate:self];
    
    //Adding the umpleView inside the umpleScrollView
    [self.umpleScrollView addSubview:self.umpleView];
    
    //Storing umple classes created from JSON
    self.umpleClasses = [NSMutableDictionary new];
    
    //Extracting the classes element in the json
    NSArray* umpClassArray = [dict objectForKey:@"umpleClasses"];

    //Iterate through classes in JSON
    //Create an UmpleClass, add action to it
    //Store in a dictionary
    for(NSDictionary* umpleDict in umpClassArray)
    {
        UmpleClass *umpClass = [[UmpleClass alloc] initWithDictionary:umpleDict];
        [umpClass addTarget:self action:@selector(umpleClassIsDragged:withEvent:) forControlEvents:UIControlEventTouchDragInside];
        [umpClass addTarget:self action:@selector(umpleClassIsSelected:withEvent:) forControlEvents:UIControlEventTouchDown];
        [umpClass addTarget:self action:@selector(umpleClassDraggingEnded:withEvent:) forControlEvents:UIControlEventTouchUpInside];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
        tapGesture.numberOfTapsRequired = 2;
        [umpClass addGestureRecognizer:tapGesture];
        //Using the class_id as the key
        [self.umpleClasses setObject:umpClass forKey:umpClass.class_id];
    }
    
    //Storing umple associations created from JSON
    self.umpleAssociations = [NSMutableDictionary new];
    
    //Extracting the associations element in the json
    NSArray* umpAssocArray = [dict objectForKey:@"umpleAssociations"];
    
    //Iterate through associations in JSON
    //Create an UmpleAssociation, add action to it
    //Store in a dictionary
    for(NSDictionary* umpleDict in umpAssocArray)
    {
        UmpleAssociation *umpAssoc = [[UmpleAssociation alloc] initWithDictionary:umpleDict UmpleCasses:self.umpleClasses Frame:contentFrame];
        
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
        tapGesture.numberOfTapsRequired = 2;
        [umpAssoc addGestureRecognizer:tapGesture];
        
        [self.umpleAssociations setObject:umpAssoc forKey:umpAssoc.association_id];
    }
    
    //Adding Umple Association View Layer
    //CALayer draws the elements efficiently
    [self.umpleAssocView.layer setNeedsDisplay];
    [self.umpleAssocView.layer setBackgroundColor:[[UIColor clearColor] CGColor]];
    
    //Create the Umple Diagram
    [self createUmpleDiagram];
    
    //Initialize ClassEditor
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.umpleClassEditorViewController = [storyboard instantiateViewControllerWithIdentifier:@"UmpleClassEditor"];
    self.umpleClassEditorNavController = [[UINavigationController alloc] initWithRootViewController:self.umpleClassEditorViewController];
    self.umpleClassEditorViewController.delegate = self;
    self.umpleClassPopoverController = [[UIPopoverController alloc] initWithContentViewController:self.umpleClassEditorNavController];
}

- (void)handleTapGesture:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
        
        if([sender.view isKindOfClass:[UmpleClass class]])
        {
            UmpleClass* umpClass = (UmpleClass*)[sender view];
            self.umpleClassEditorViewController.umpleClass = umpClass;
            [self.umpleClassEditorViewController.tableView reloadData];
            [self.umpleClassPopoverController presentPopoverFromRect:umpClass.frame inView:self.umpleScrollView permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
            [umpClass setBackgroundColor:[UIColor blueColor]];
        }
        else if([sender.view isKindOfClass:[UmpleAssociation class]])
        {
            UmpleAssociation* umpAssoc = (UmpleAssociation*)[sender view];
            NSLog(@"Association %@ Selected", umpAssoc.name);
//            [umpAssoc setBackgroundColor:[UIColor redColor]];
        }
    }
}
- (void)umpleClassIsSelected:(UmpleClass *)umpleClass withEvent:(UIEvent *)event
{
    [umpleClass setBackgroundColor:[UIColor yellowColor]];
    [self.umpleScrollView setScrollEnabled:NO];
    [self.umpleView bringSubviewToFront:umpleClass];
}

- (void)umpleClassIsDragged:(UmpleClass *)umpleClass withEvent:(UIEvent *)event
{
	// get the touch
	UITouch *touch = [[event touchesForView:umpleClass] anyObject];
    
	// get delta
	CGPoint previousLocation = [touch previousLocationInView:umpleClass];
	CGPoint location = [touch locationInView:umpleClass];
	CGFloat delta_x = location.x - previousLocation.x;
	CGFloat delta_y = location.y - previousLocation.y;
    
	// move button
    umpleClass.center = CGPointMake(umpleClass.center.x + delta_x,
                                umpleClass.center.y + delta_y);
    
    
    
    [umpleClass update];

    [self.umpleAssocView.layer setNeedsDisplay];
    
}


//This prints json
- (void)umpleClassDraggingEnded:(UmpleClass *)umpleClass withEvent:(UIEvent *)event
{
    [self.umpleScrollView setScrollEnabled:YES];
    [umpleClass setBackgroundColor:[UIColor whiteColor]];
    /*NSMutableArray* classArray = [NSMutableArray new];
    for(UmpleClass *umpClass in [self.umpleClasses allValues])
    {
        [classArray addObject:[umpClass json]];
    }
    
    NSMutableArray* assocArray = [NSMutableArray new];
    for(UmpleAssociation *umpAssoc in [self.umpleAssociations allValues])
    {
        [assocArray addObject:[umpAssoc json]];
    }
    
    NSDictionary* json = @{
                           @"umpleClasses" : classArray,
                           @"umpleAssociations" : assocArray,
                           };*/
//    NSData* data = [NSJSONSerialization dataWithJSONObject:json options:NSJSONWritingPrettyPrinted error:nil];
//    NSString* newStr = [NSString stringWithUTF8String:[data bytes]];
        
//    NSLog(@"%@",newStr);
}


-(void) createUmpleDiagram
{
    for(UmpleAssociation *umpAssoc in [self.umpleAssociations allValues])
    {
        [self.umpleView addSubview:umpAssoc];
    }
    for(UmpleClass *umpClass in [self.umpleClasses allValues])
    {
        [self.umpleView addSubview:umpClass];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    
    //UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    /*if ( fromInterfaceOrientation == orientation )
        return;
    if ( UIInterfaceOrientationIsPortrait(orientation) )
    {
        self.view.frame = CGRectMake(0, 0, 350, 600);
        self.view.superview.frame = CGRectMake(200, 100, 940, 628);
    }
    else
    {
        self.view.frame = CGRectMake(0, 0, 600, 350);
        self.view.superview.frame = CGRectMake(100, 200, 600, 350);
    }*/
}

- (CGRect)zoomRectForScrollView:(UIScrollView *)scrollView withScale:(float)scale withCenter:(CGPoint)center {
    
    CGRect zoomRect;
    
    // The zoom rect is in the content view's coordinates.
    // At a zoom scale of 1.0, it would be the size of the
    // imageScrollView's bounds.
    // As the zoom scale decreases, so more content is visible,
    // the size of the rect grows.
    zoomRect.size.height = scrollView.frame.size.height / scale;
    zoomRect.size.width  = scrollView.frame.size.width  / scale;
    
    // choose an origin so as to get the right center.
    zoomRect.origin.x = center.x - (zoomRect.size.width  / 2.0);
    zoomRect.origin.y = center.y - (zoomRect.size.height / 2.0);
        
    return zoomRect;
}

-(UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView
{

    return self.umpleView;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"UmpleAddMenu"])
    {
        UmpleModelMenuViewController* vc = [segue destinationViewController];
        UIStoryboardPopoverSegue *popoverSegue;
        popoverSegue = (UIStoryboardPopoverSegue*)segue;
        vc.popoverController = popoverSegue.popoverController;
        vc.delegate = self;
    }
}

-(void) addUmpleClassSelected:(UITableViewController*) tableViewController
{
    if([tableViewController isKindOfClass:[UmpleModelMenuViewController class]])
    {
        UmpleClass* umpleNewClass = [[UmpleClass alloc] init];
        [umpleNewClass addTarget:self action:@selector(umpleClassIsDragged:withEvent:) forControlEvents:UIControlEventTouchDragInside];
        [umpleNewClass addTarget:self action:@selector(umpleClassIsSelected:withEvent:) forControlEvents:UIControlEventTouchDown];
        [umpleNewClass addTarget:self action:@selector(umpleClassDraggingEnded:withEvent:) forControlEvents:UIControlEventTouchUpInside];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
        tapGesture.numberOfTapsRequired = 2;
        [umpleNewClass addGestureRecognizer:tapGesture];
        umpleNewClass.name = @"New Class";
        umpleNewClass.position = CGRectMake(100, 100, 200, 100);
        umpleNewClass.class_id = @"NewClass";
        [self.umpleClasses setObject:umpleNewClass forKey:umpleNewClass.class_id];
        [umpleNewClass constructClassModel];
        [self.umpleView addSubview:umpleNewClass];
        
        self.umpleClassEditorViewController.umpleClass = umpleNewClass;
        [self.umpleClassEditorViewController.tableView reloadData];
        [self.umpleClassPopoverController presentPopoverFromRect:umpleNewClass.frame inView:self.umpleScrollView permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        [umpleNewClass setBackgroundColor:[UIColor blueColor]];
    }
}

-(void) finishedEditingClass:(UmpleClass *)umpleClass
{
    [umpleClass updateClassModel];
    [self.umpleClasses setObject:umpleClass forKey:umpleClass.class_id];
    [self.umpleClassPopoverController dismissPopoverAnimated:YES];
}

- (void) drawLayer:(CALayer*) layer inContext:(CGContextRef) ctx
{
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(ctx, 2);
    
    for(UmpleAssociation* umpAssoc in [self.umpleAssociations allValues])
    {
        UmpleClass* umpClass1 = umpAssoc.classOneId;
        UmpleClass* umpClass2 = umpAssoc.classTwoId;
        CGContextMoveToPoint(ctx, umpClass1.position.origin.x + umpClass1.position.size.width / 2, umpClass1.position.origin.y + umpClass1.position.size.height / 2);
        CGContextAddLineToPoint(ctx, umpClass2.position.origin.x + umpClass2.position.size.width / 2, umpClass2.position.origin.y + umpClass1.position.size.height / 2);
        
        CGContextStrokePath(ctx);
    }
    
}

@end
