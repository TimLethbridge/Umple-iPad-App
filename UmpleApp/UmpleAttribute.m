//
//  UmpleAttribute.m
//  UmpleApp
//
//  Created by Charles Wang on 4/23/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

#import "UmpleAttribute.h"

@implementation UmpleAttribute

@synthesize type, name;

-(id) init
{
    self = [super init];
    if(self)
    {
        self.type = @"";
        self.name = @"";
    }
    return self;
}

-(id) initWithDictionary:(NSDictionary*)attrDictionary
{
    self = [super init];
    if(self)
    {
        self.type = @"";
        self.name = @"";
        //Make sure that the dictionary is not null
        if(attrDictionary)
        {
            NSString* t_type = [attrDictionary objectForKey:@"type"];
            NSString* t_name = [attrDictionary objectForKey:@"name"];
            if(t_type){
                self.type = t_type;
            }
            if(t_name){
                self.name = t_name;
            }
        }
    }
    return self;
}

-(NSDictionary*) json
{
    return @{
             @"type" : self.type,
             @"name" : self.name
             };
}

-(UmpleAttribute*) copy
{
    UmpleAttribute* copied = [UmpleAttribute new];
    copied.type = [self.type copy];
    copied.name = [self.name copy];
    return copied;
}

@end
