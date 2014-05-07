//
//  UmpleAssociation.m
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import "UmpleAssociation.h"

@implementation UmpleAssociation
@synthesize association_id;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithDictionary:(NSDictionary*)assocDictionary UmpleCasses:(NSMutableDictionary*) umpleClasses Frame:(CGRect) frame{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.backgroundColor = [UIColor clearColor];
        if(assocDictionary)
        {
            self.offsetOnePosition = CGRectMake(0, 0, 0, 0);            
            if([assocDictionary objectForKey:@"offsetOnePosition"])
            {
                NSDictionary* dict = [assocDictionary objectForKey:@"offsetOnePosition"];
                if([dict objectForKey:@"x"] && [dict objectForKey:@"y"] &&
                   [dict objectForKey:@"width"] && [dict objectForKey:@"height"])
                {
                    float x = [[dict objectForKey:@"x"] floatValue];
                    float y = [[dict objectForKey:@"y"] floatValue];
                    float width = [[dict objectForKey:@"width"] floatValue];
                    float height = [[dict objectForKey:@"height"] floatValue];
                    self.offsetOnePosition = CGRectMake(x, y, width, height);
                }
            }
            
            self.offsetTwoPosition = CGRectMake(10, 10, 10, 10);
            if([assocDictionary objectForKey:@"offsetTwoPosition"])
            {
                NSDictionary* dict = [assocDictionary objectForKey:@"offsetTwoPosition"];
                if([dict objectForKey:@"x"] && [dict objectForKey:@"y"] &&
                   [dict objectForKey:@"width"] && [dict objectForKey:@"height"])
                {
                    float x = [[dict objectForKey:@"x"] floatValue];
                    float y = [[dict objectForKey:@"y"] floatValue];
                    float width = [[dict objectForKey:@"width"] floatValue];
                    float height = [[dict objectForKey:@"height"] floatValue];
                    self.offsetTwoPosition = CGRectMake(x, y, width, height);
                }
            }
            
            self.association_id = @"";
            if([assocDictionary objectForKey:@"id"])
            {
                self.association_id = [assocDictionary objectForKey:@"id"];
            }
            
            self.classOneId = nil;
            if([assocDictionary objectForKey:@"classOneId"])
            {
                self.classOneId = [umpleClasses objectForKey:[assocDictionary objectForKey:@"classOneId"]];
            }
            
            self.classTwoId = nil;
            if([assocDictionary objectForKey:@"classTwoId"])
            {
                self.classTwoId = [umpleClasses objectForKey:[assocDictionary objectForKey:@"classTwoId"]];
            }
            
            self.multiplicityOne = @"";
            if([assocDictionary objectForKey:@"multiplicityOne"])
            {
                self.multiplicityOne = [assocDictionary objectForKey:@"multiplicityOne"];
            }

            self.multiplicityTwo = @"";
            if([assocDictionary objectForKey:@"multiplicityTwo"])
            {
                self.multiplicityTwo = [assocDictionary objectForKey:@"multiplicityTwo"];
            }
            
            self.name = @"";
            if([assocDictionary objectForKey:@"name"])
            {
                self.name = [assocDictionary objectForKey:@"name"];
            }
            
            self.roleOne = @"";
            if([assocDictionary objectForKey:@"roleOne"])
            {
                self.roleOne = [assocDictionary objectForKey:@"roleOne"];
            }
            
            self.roleTwo = @"";
            if([assocDictionary objectForKey:@"roleTwo"])
            {
                self.roleTwo = [assocDictionary objectForKey:@"roleTwo"];
            }

            self.isLeftNavigable = @(NO);
            if([assocDictionary objectForKey:@"isLeftNavigable"])
            {
                if([[assocDictionary objectForKey:@"isLeftNavigable"] isEqualToString:@"true"])
                {
                    self.isLeftNavigable = @(YES);
                }
            }
            
            self.isRightNavigable = @(NO);
            if([assocDictionary objectForKey:@"isRightNavigable"])
            {
                if([[assocDictionary objectForKey:@"isRightNavigable"] isEqualToString:@"true"])
                {
                    self.isRightNavigable = @(YES);
                }
            }
        }
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    //NSLog(@"Drawing");
    [super drawRect:rect];
    
    /*UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(self.classOneId.position.origin.x + self.classOneId.position.size.width / 2,
                                  self.classOneId.position.origin.y + self.classOneId.position.size.height / 2)];
    [path addLineToPoint:CGPointMake(self.classTwoId.position.origin.x + self.classTwoId.position.size.width / 2,
                                  self.classTwoId.position.origin.y + self.classTwoId.position.size.height / 2)];
    [path fill];
    [path stroke];*/
    /*
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    
    // Draw them with a 2.0 stroke width so they are a bit more visible.
    CGContextSetLineWidth(context, 2.0);
    
    //start at this point
    CGContextMoveToPoint(context, self.classOneId.position.origin.x, self.classOneId.position.origin.y);
    
    //draw to this point
    CGContextAddLineToPoint(context, self.classTwoId.position.origin.x, self.classTwoId.position.origin.y);
    
    // and now draw the Path!
    CGContextStrokePath(context);*/
    
}

-(NSDictionary*) json
{
    return @{
             @"offsetOnePosition" : @{
                     @"x":[NSNumber numberWithFloat:self.offsetOnePosition.origin.x],
                     @"y":[NSNumber numberWithFloat:self.offsetOnePosition.origin.y],
                     @"width":[NSNumber numberWithFloat:self.offsetOnePosition.size.width],
                     @"height":[NSNumber numberWithFloat:self.offsetOnePosition.size.height]
                     },
             @"offsetTwoPosition" : @{
                     @"x":[NSNumber numberWithFloat:self.offsetTwoPosition.origin.x],
                     @"y":[NSNumber numberWithFloat:self.offsetTwoPosition.origin.y],
                     @"width":[NSNumber numberWithFloat:self.offsetTwoPosition.size.width],
                     @"height":[NSNumber numberWithFloat:self.offsetTwoPosition.size.height]
                     },
             @"id" : self.association_id,
             @"classOneId" : (self.classOneId) ? self.classOneId.class_id : @"",
             @"classTwoId" : (self.classTwoId) ? self.classTwoId.class_id : @"",
             @"multiplicityOne": self.multiplicityOne,
             @"multiplicityTwo": self.multiplicityTwo,
             @"name": self.name,
             @"roleOne": self.roleOne,
             @"roleTwo": self.roleTwo,
             @"isLeftNavigable": ([self.isLeftNavigable boolValue]) ? @"true" : @"false",
             @"isRightNavigable": ([self.isRightNavigable boolValue]) ? @"true" : @"false",
             };
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
