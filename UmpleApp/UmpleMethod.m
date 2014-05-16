//
//  UmpleMethod.m
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import "UmpleMethod.h"

@implementation UmpleMethod

@synthesize visibility, type, name, parameters;

-(id) init
{
    self = [super init];
    if(self)
    {
        self.name = [NSString new];
        self.type = [NSString new];
        self.visibility = [NSString new];
        self.parameters = [NSMutableArray new];
    }
    return self;
}

-(id) initWithDictionary:(NSDictionary*)methodDictionary
{
    self = [super init];
    if(self)
    {
        self.visibility = @"";
        self.type = @"";
        self.name = @"";
        self.parameters = [NSMutableArray new];
        
        if(methodDictionary)
        {
            NSString* t_visibility = [methodDictionary objectForKey:@"visibility"];
            NSString* t_type = [methodDictionary objectForKey:@"type"];
            NSString* t_name = [methodDictionary objectForKey:@"name"];
            NSMutableArray* t_parameters = [methodDictionary objectForKey:@"parameters"];
            
            if(t_visibility)
            {
                self.visibility = t_visibility;
            }
            if(t_type)
            {
                self.type = t_type;
            }
            if(t_name)
            {
                self.name = t_name;
            }
            if(t_parameters)
            {
                self.parameters = t_parameters;
            }
        }
    }
    return self;
}


-(NSDictionary*) json
{
    return @{
             @"visibility" : self.visibility,
             @"type" : self.type,
             @"name" : self.name,
             @"parameters" : self.parameters,
             };
}

-(UmpleMethod*) copy
{
    UmpleMethod* copied = [UmpleMethod new];
    copied.visibility = [self.visibility copy];
    copied.type = [self.type copy];
    copied.name = [self.name copy];
    return copied;
}

@end
