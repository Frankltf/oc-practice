//
//  HouseDelegate.h
//  OC协议与代理
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HouseDelegate <NSObject>

-(void) findHouse;
-(void) callme;
-(void) getHouseInfo;
-(void) sure;
@end
