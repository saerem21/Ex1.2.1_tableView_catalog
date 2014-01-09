//
//  Cart.m
//  Ex1.2.1_tableView_catalog
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Cart.h"
#import "CartItem.h"

@implementation Cart
{
    NSMutableArray *items;
}


-(void)addProduct:(Product *)item
{
    
}

-(void)incQuantity:(Product *)product
{
    CartItem *item = [self cartItemWith:product];
    item.quantity++;
}

-(void)decQuantity:(Product *)product
{
    CartItem *item = [self cartItemWith:product];
    item.quantity--;
    
    if(0 == item.quantity){
        [items removeObject:item];
    }
}

-(CartItem *)cartItemWith:(Product *)product{
    for(CartItem *item in items) {
        if([item.product isEqualToProduct:product]){
            return item;
        }
        
    }
    return Nil;
}

@end
