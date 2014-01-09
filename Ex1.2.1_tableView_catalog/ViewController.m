//
//  ViewController.m
//  Ex1.2.1_tableView_catalog
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "ProductCell.h"
#import "Catalog.h"
#import "Cart.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,CartDelegate>
{
    Catalog *catalog;
    NSMutableArray *cart;
}
@property (weak,nonatomic)IBOutlet UITableView *table;
@property (strong,nonatomic)Cart *cart;

@end



@implementation ViewController

-(void)incQuantity:(Product *)product{
    [self.cart incQuantity:product];
    
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [self.table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(void)decQuantity:(Product *)product{
    [self.cart decQuantity:product];
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [self.table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(void)addItem:(id)sender{
    //UITableViewCell *cell = (UITableViewCell *)sender;
    NSIndexPath *indexPath = [_table indexPathForCell:sender];
    Product *item = [catalog productAt:indexPath.row];
    [cart addObject:item];
    
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndex:1];
    [_table reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if( 0 == section){
        return [catalog numberOfProducts];
    }
    else{
        return [cart count];
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return (0 == section)? @"상품목록" :@"카트";
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(0 == indexPath.section){
        ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
        Product *item = [catalog productAt:indexPath.row];
        [cell setProductInfo:item];
        cell.delegate = self;
        
        return cell;
    }
    else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CART_CELL"];
        
        Product *item = cart[indexPath.row];
        cell.textLabel.text = item.name;
        return cell;
    }
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    if (0 == section) {
//        return @"Product";
//    }
//    else{
//        return @"Items in Cart";
//    }
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    catalog = [[Catalog alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
    
    cart = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
