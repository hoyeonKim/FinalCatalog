//
//  ProductCell.m
//  CustomCell201
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ProductCell.h"

@interface ProductCell()
@property (weak, nonatomic) IBOutlet UILabel *productPrice;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UIImageView *productImage;

@end

@implementation ProductCell

-(void)setProductInfo:(Product *)item{
    self.productName.text = item.name;
    self.productPrice.text = item.price;
    self.productImage.image = [UIImage imageNamed:item.imageName];
}

-(IBAction)addCart:(id)sender{
    [self.delegate addItem:self];
    
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    
}

@end
