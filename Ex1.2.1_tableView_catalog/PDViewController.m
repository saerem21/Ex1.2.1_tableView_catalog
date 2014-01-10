//
//  PDViewController.m
//  Ex1.2.1_tableView_catalog
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "PDViewController.h"

@interface PDViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *detail;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end

@implementation PDViewController



-(void)viewWillAppear:(BOOL)animated
{
    Catalog *catalog = [Catalog defaultCatalog];
    Product *product = [catalog productWithCode:self.productCode];
    
    self.imageView.image = [UIImage imageNamed:product.imageName];
    self.nameLabel.text = product.name;
    self.priceLabel.text = product.price;
    self.title = product.name;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
