//
//  main.m
//  OC类的使用
//
//  Created by admin on 2017/5/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //instantiate object carOne
        Car *carOne=[[Car alloc] init];
        //invoke mothed
        [carOne buy];
        [carOne drive];
        //one parameter when invoke mothed
        [carOne drivedTime:5];
        //two parameters when invoke mothed
        [carOne play:@"Frank" where:@"beijing"];
        //return int parameter
        int howlong=[carOne howLong];
        NSLog(@"%d",howlong);
        //return two int parameter
        int howlong2=[carOne howLong2:2 price:3];
        NSLog(@"%d",howlong2);
        
        
        
    }
    return 0;
}
