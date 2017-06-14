//
//  Car.m
//  OC类的使用
//
//  Created by admin on 2017/5/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void) buy{
    NSLog(@"buy a car");
}
-(void) drive{
    NSLog(@"run a car");
}
-(void) drivedTime:(int) year{
    NSLog(@"the car have drive %d year",year);
}
-(void) play:(NSString *) who where:(NSString *) place{
    NSLog(@"%@ drive the car to %@",who,place);
}
-(int)  howLong{
    return 5;
}
-(int) howLong2:(int) longRoad price:(int) roadPrice{
    return longRoad*roadPrice;
}
@end
