//
//  Catalog.m
//  Ex1.2.1_tableView_catalog
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//
#import "Catalog.h"
#import "Product.h"

@implementation Catalog
{
    NSArray *data;
}

static Catalog *_instance = nil;
+(id)defaultCatalog{
    if(nil == _instance)
        _instance = [[Catalog alloc]init];
    return _instance;
}

-(id)init{
    self = [super init];
    if(self){
        data = @[[Product product:@"ball1" code:@"1" price:@"300" image:@"i1.jpg"],
                 [Product product:@"ball2" code:@"2" price:@"400" image:@"i2.jpeg"],
                 [Product product:@"ball3" code:@"3" price:@"500" image:@"i3.jpeg"]];
        
    }
    return self;
}

-(id)productAt:(int)index{
    return [data objectAtIndex:index];
    
}

-(int)numberOfProduct{
    return [data count];
}

@end