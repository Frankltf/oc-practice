//
//  main.m
//  OC结构体
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.声明一个结构体 (NSRange  范围)
        NSRange range1=NSMakeRange(1, 3);
        NSLog(@"位置：%ld 长度：%ld",range1.location,range1.length);
        //2.声明点坐标结构体（CGPoint  点坐标）
        CGPoint point01=CGPointMake(2, 4);
        NSLog(@"位置：%f 长度：%f",point01.x,point01.y);
        //3.声明矩形 （CGRect  矩形）
        CGRect rect01=CGRectMake(6, 7, 8, 9);
        NSLog(@"位置：%f 长度：%f  宽：%f  高 ：%f",rect01.origin.x,rect01.origin.y,rect01.size.width,rect01.size.height);
        //4.声明尺寸 （CGSize  尺寸）
        CGSize size01=CGSizeMake(2, 4);
        NSLog(@"位置：%f 长度：%f",size01.width,size01.height);
        //5.结构体转字符串
        NSString *structStr=NSStringFromRange(range1);
        NSLog(@"%@",structStr);
        
    }
    return 0;
}
