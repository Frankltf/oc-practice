//
//  Person.h
//  OC协议与代理
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HouseDelegate.h"
@interface Person : NSObject
@property (nonatomic)id <HouseDelegate> delegate;
-(void) pay;
@end
