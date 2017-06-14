//
//  main.m
//  OC协议与代理
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Agent.h"
#import "Person.h"
#import "OtherAgent.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Agent *agent=[[Agent alloc]init];
        OtherAgent *otherAgent=[[OtherAgent alloc]init];
        Person *person=[[Person alloc]init];
        Person *person2=[[Person alloc]init];
        
        person.delegate=agent;
        [person.delegate findHouse];
        [person.delegate getHouseInfo];
        [person pay];
        
        person2.delegate=otherAgent;
        [person2.delegate findHouse];
        [person2.delegate getHouseInfo];
        [person2 pay];
    }
    return 0;
}
