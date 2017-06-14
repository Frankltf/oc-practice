//
//  main.m
//  OC数组学习
//
//  Created by admin on 2017/5/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       /**
        不可变数组
        */
        //1.创建一个有元素的数组
        NSArray *array1=[NSArray arrayWithObjects:@"one",@"two",@"three",@"four", nil];
        NSArray *array2=@[@"aaa",@"bbb",@"ccc"];
        //2.数组的长度
        NSInteger len=[array1 count];
        NSLog(@"%li",len);
        //3.取出某个元素
        NSString *cell1=[array1 objectAtIndex:0];
        NSLog(@"%@",cell1);
        //4.获取第一个或最后一个
        NSString *cell2=[array1 firstObject];
        NSString *cell3=[array1 lastObject];
        NSLog(@"%@",cell3);
        //5.获取某个元素的下标
        NSUInteger index=[array1 indexOfObject:@"two"];
        NSLog(@"%lu",index);
        //6.将字符串分割成数组
        NSString *str1=@"frank love niu niu";
        NSArray *array4=[str1 componentsSeparatedByString:@" "];
        NSLog(@"%@",array4);
        
        /**
         可变数组
         */
        //7.创建可变数组
        NSMutableArray *array5=[NSMutableArray array];
        //8.往数组内添加元素
        [array5 addObject:@"addOne"];
        [array5 addObject:@"addTwo"];
        [array5 addObject:@"addThree"];
        [array5 addObject:@"addFour"];
        NSLog(@"%@",array5);
        //9.插入元素
        [array5 insertObject:@"addfive" atIndex:(3)];
         NSLog(@"%@",array5);
        //10.删除元素
        [array5 removeObjectAtIndex:1];
        NSLog(@"%@",array5);
        //11.交换两个数组元素的位置
        [array5 exchangeObjectAtIndex:0 withObjectAtIndex:2];
        NSLog(@"%@",array5);
        
        //12.遍历数组
        for(int i=0; i<array5.count;i++){
            NSLog(@"这是第%i个元素%@",i,[array5 objectAtIndex:i]);
        }
        for(id obj in array5){
            NSLog(@"这是元素%@",obj);
        }
        //13.拼接成一个字符串
        NSString *str3=[array1 componentsJoinedByString:@"-"];
        NSLog(@"%@",str3);
        
        
        
    }
    return 0;
}
