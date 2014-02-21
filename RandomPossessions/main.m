//
//  main.m
//  RandomPossessions
//
//  Created by TRUM147 iMac2 on 1/23/14.
//  Copyright (c) 2014 TRUM147 iMac2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRitem.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create a muttable array
        
        
        BNRitem *backpack = [[BNRitem alloc]init];
        [backpack setItemName:(@"backpack")];
        
        
        BNRitem *calculator = [[BNRitem alloc]init];
        [calculator setItemName:@"calculator"];
        
        
        [backpack setContainedItem:calculator];
        
        backpack = nil;
        
        NSLog(@"container: %@", [calculator container]);
        
        calculator = nil;
        
    }
    return 0;
}

