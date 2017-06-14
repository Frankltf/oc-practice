//
//  main.m
//  OC数字类型
//
//  Created by admin on 2017/5/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         int NSInteger NSUInteger的区别
         1.这三个都是基本类型，声明的时候都不带*号
         2.int和后两者的区别是，用int声明的时候要考虑机型，在32位机里是int类型，在64位里就有可能是long型，而用后两者后，就不用考虑这个问题了，他们会自动判别
         3.NSUInteger是无符号的，即没有负数,NSInteger是有符号的。
         */
        //1.声明一个int型
        int num1=1;
        NSLog(@"%i",num1);
        //2.声明一个NSInteger型
        NSInteger num2=2;
        NSLog(@"%li",num2);
        //3.声明一个NSUInteger型
        NSUInteger num3=3;
        NSLog(@"%li",num3);
        /*
         基本类型和NSNumber的区别
         1.NSNumber是一个类
         2.NSNumber可以将基本数字类型转化为对象，从而可以调用NSNumber中的相关方法
         */
        //4.声明一个NSNumber (将int型转化为NSNumber型)
        NSNumber *num4=[NSNumber numberWithInt:num1];
        NSNumber *num5=[NSNumber numberWithInt:num2];
        NSLog(@"%@",num4);
        //5.将NSNumber型转化为int型
        int num6=[num4 intValue];
        NSLog(@"%i",num6);
        //6.不同类型之间的相加
        /*
         1.基本类型之间有时可以直接相加（比如int型和NSInteger型，结果为long型）
         2.基本类型和NSNumber不可以直接相加
         3.NSNumber和NSNumber 不可以直接相加，须先转化为基本类型再相加
         */
        NSLog(@"%li",num3+num1);

    }
    return 0;
}
