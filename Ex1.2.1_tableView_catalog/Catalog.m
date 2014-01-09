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

static Catalog *instance =nil;

- (id)productAt:(NSInteger)index
{
    return [data objectAtIndex:index];
}

-(id)init
{
    self = [super init];
    if (self) {
        data = @[[Product productWithName:@"i1" price:@"100" image:@"i1.jpg"],[Product productWithName:@"i2" price:@"200" image:@"i2.jpeg"],[Product productWithName:@"i3" price:@"300" image:@"i3.jpeg"]];
    }
    return self;
}

- (int)numberOfProducts
{
    return [data count];
}


+(id)sharedCatalog
{
    if(instance){
        instance = [[Catalog alloc] init];
    }
    return instance;
}

@end
