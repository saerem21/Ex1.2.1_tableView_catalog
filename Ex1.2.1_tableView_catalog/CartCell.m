//
//  CartCell.m
//  Ex1.2.1_tableView_catalog
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "CartCell.h"
#import "CartItem.h"

@implementation CartCell


- (IBAction)minusClicked:(id)sender {
    [self.delegate incQuantity:self.product];
}

- (IBAction)pulsClicked:(id)sender {
    [self.delegate decQuantity:self.product];
}

- (void)setCartItem:(CartItem *)item{
    self.product = item.product;
    
    self.name.text = item.product.name;
    self.quantity.text = [NSString stringWithFormat:@"%d 개",item.quantity];
}

@end
