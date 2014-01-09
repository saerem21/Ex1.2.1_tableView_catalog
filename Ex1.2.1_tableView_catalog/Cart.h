//
//  Cart.h
//  Ex1.2.1_tableView_catalog
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Cart : NSObject


-(void)addProduct:(Product *)item;

-(void)incQuantity:(Product *)product;
-(void)decQuantity:(Product *)product;


@end
