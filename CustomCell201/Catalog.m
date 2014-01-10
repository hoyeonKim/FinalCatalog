//
//  Catalog.m
//  CustomCell201
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
-(Product *)productWithCode:(NSString *)productCode{
    for(Product *one in data){
        if([one isEqualProduct:productCode]){
            return one;
        }
    }
    return nil;
}
-(id)init{
    self = [super init];
    if(self){
        data = @[[Product product:@"Baseball" code:@"1" price:@"300" image:@"b1.png"],
                 [Product product:@"Basketball" code:@"2" price:@"400" image:@"b2.png"],
                 [Product product:@"Football" code:@"3" price:@"500" image:@"b3.png"],
                 [Product product:@"Bowlingball" code:@"4" price:@"700" image:@"b4.jpeg"],
                 [Product product:@"Golfball" code:@"5" price:@"900" image:@"b5.jpeg"],
                 ];
        
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
