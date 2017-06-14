//
//  Car.h
//  OC类的使用
//
//  Created by admin on 2017/5/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic) NSString *CarName;
@property (nonatomic) int price;

-(void) buy;
-(void) drive;
-(void) drivedTime:(int) year;
-(void) play:(NSString *) who where:(NSString *) place;
-(int)  howLong;
-(int) howLong2:(int)longRoad price:(int) roadPrice;

@end
