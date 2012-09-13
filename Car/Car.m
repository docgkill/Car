//
//  Car.m
//  Car
//
//  Created by ktds on 12. 9. 13..
//  Copyright (c) 2012년 godev. All rights reserved.
//

#import "Car.h"

@implementation Car
- (id) init
{
    self = [super init];
    
    if (!self)
        return nil;
    
    year = 1971;
    return self;
}

- (void) setMake:(NSString *)aMake andModel:(NSString *)aModel andYear:(int)aYear
{
    make = aMake;
    model = aModel;
    year = aYear;
}

- (void) printCarInfo
{
    if (!make)
        return;
    
    if(!model)
        return;
    
    printf("Car Info\n");
    printf("Make : %s\n", [make UTF8String]);
    printf("Model %s\n", [model UTF8String]);
    printf("Year %d\n", year);
}

- (int) year
{
    return year;
}
@end
