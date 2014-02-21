//
//  BNRitem.m
//  RandomPossessions
//
//  Created by TRUM147 iMac2 on 1/23/14.
//  Copyright (c) 2014 TRUM147 iMac2. All rights reserved.
//

#import "BNRitem.h"

@implementation BNRitem

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
        serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self SetValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    
    }
    return self;
}

+ (id)randomItem;
{
    NSArray  *randomAdjativeList = [NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"shinny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"bear",@"spork",@"mac", nil];
    
    NSInteger *adjativeIndex = rand() % [randomAdjativeList count];
    NSInteger *nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjativeList objectAtIndex:adjativeIndex], [randomNounList objectAtIndex:nounIndex]];
    int randomValue = rand() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",'0' +rand() %10,'A' +rand() %26,'0' +rand() %10,'A' +rand() %26,'0' +rand() %10];
    
    BNRitem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
}


-(id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}
- (void)setItemName:(NSString *)str
{
    itemName = str;
}
-(NSString *)itemName
{
    return itemName;
}
- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
-(NSString *)serialNumber
{
    return serialNumber;
}
-(void)SetValueInDollars:(int)i
{
    valueInDollars = i;
}
-(int)valueInDollars
{
    return valueInDollars;
}
-(NSDate *)dateCreated
{
    return dateCreated;
}

-(void)setContainedItem:(BNRitem *)i
{
    containedItem = i;
    [i setContainer:self];
}

-(BNRitem *)containedItem
{
    return containedItem;
}

-(void)setContainer:(BNRitem *)i
{
    container = i;
}

-(BNRitem *)container
{
    return container;
}

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}
@end
