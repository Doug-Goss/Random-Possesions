//
//  BNRitem.h
//  RandomPossessions
//
//  Created by TRUM147 iMac2 on 1/23/14.
//  Copyright (c) 2014 TRUM147 iMac2. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRitem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    BNRitem *containedItem;
    __weak BNRitem *container;
}

+ (id)randomItem;

@property (nonatomic) BNRitem *containedItem;
@property (nonatomic) BNRitem *container;

@property (nonatomic) NSString *iteamName;
@property (nonatomic) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic) NSDate *dateCreated;

@end
