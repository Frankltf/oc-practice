//
//  main.m
//  OC字符串的使用
//
//  Created by admin on 2017/5/17.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         1.常量字符串
         **/
        //1.创建常量字符串
        NSString *astring=@"第一个常量字符串";
        NSString *bstring=@"第二个常量字符串";
        NSString *cstring=@"第一个常量字符串";
        
        
        //2.求字符串的长度
        NSUInteger len=[astring length];
        NSLog(@"astring 的长度是%lu",len);
        //3.1 判断字符串是否相等 (isEqualToString方法 是比较值是否相等)
        if([astring isEqualToString:cstring]){
            NSLog(@"相等");
        }else{
            NSLog(@"不相等");
        }
        //3.1 判断字符串是否相等 (isEqualToString方法 是比较值是否相等)
        if([astring isEqual:bstring]){
            NSLog(@"地址相等");
        }else{
            NSLog(@"地址不相等");
        }
        //4.字符串拼接 (stringByAppendingString方法)
        NSString *dstring=[astring stringByAppendingString:bstring];
        NSLog(@"%@",dstring);
        //5.字符串类型转化为int类型 （intValue方法）
        NSString *estring=@"4444";
        NSLog(@"%i",[estring intValue]);
        NSLog(@"%li",(long)[estring integerValue]);
        //6.截取字符串
        NSLog(@"%@",[astring substringFromIndex:3]);
        NSLog(@"%@",[astring substringToIndex:3]);
        NSLog(@"%@",[astring substringWithRange:NSMakeRange(1, 2)]);

        
        
        /**
         变量字符串
         **/
        //1.NSMutableString的声明
        NSMutableString *aastring=[[NSMutableString alloc] initWithFormat:@"the first mutable string"];
        NSLog(@"%@",aastring);
        //2.NSMutableString的添加 (appendString 附加的是一个已经完整的字符串。appendFormat 附加的是按指定格式、指定参数的字符串。)
        [aastring appendString:@" very good"];
        NSLog(@"%@",aastring);
        //3.插入
        [aastring insertString:@"不错" atIndex:6];
        NSLog(@"%@",aastring);
        //4.删除
        [aastring deleteCharactersInRange:NSMakeRange(4, 6)];
        NSLog(@"%@",aastring);
        //5.替换
        [aastring replaceCharactersInRange:NSMakeRange(1, 3) withString:@"替换了"];
        NSLog(@"%@",aastring);
    }
    return 0;
}
