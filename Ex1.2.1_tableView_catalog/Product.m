//
//  Product.m
//  Ex194_ex15
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Product.h"

@implementation Product
+(id)productWithName:(NSString *)name price:(NSString *)price image:(NSString *)image{
    Product *item = [[Product alloc] init];
    item.name = name;
    item.price = price;
    item.imageName = image;
    
    return item;
}

-(BOOL)isEqualToProduct:(Product *)product
{
    return [self.code isEqualToString:product.code];
}

@end
