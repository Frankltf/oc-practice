//
//  main.m
//  OC字典
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.不可变字典声明
        NSDictionary *dict01=[NSDictionary dictionaryWithObjectsAndKeys:@"obj1",@"key1",@"obj2",@"key2", nil];
        //2.返回指定的key 的对象 (objectForKey)
        NSLog(@"object %@",[dict01 objectForKey:@"key2"]);
        //3.获取所有的key
        NSLog(@"key %@",[dict01 allKeys]);
        //4.获取所有的value
        NSLog(@"values %@",[dict01 allValues]);
        //5.根据现有字典创建新的字典
        NSDictionary *dict02=[NSDictionary dictionaryWithDictionary:dict01];
        //6.返回字典中的key-values对数
        NSUInteger num=[dict02 count];
        NSLog(@"%li",num);
        //7.可变字典声明
        NSMutableDictionary *dict03=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"aa",@"1",@"bb",@"2",@"cc",@"3", nil];
        //8.遍历字典
        NSArray *keys=[dict03 allKeys];
        for(NSUInteger i=0;i<[keys count];i++){
            //获取每一个key值
            NSString *key=[keys objectAtIndex:i];
            NSLog(@"key %@",key);
            //获取对应的value
            NSLog(@"key %@ value:%@",key,[dict03 objectForKey:key]);
        }
        //9.删除元素
        [dict03 removeObjectForKey:@"2"];
        NSLog(@"%@",dict03);
        //10.添加存在字典
        [dict03 addEntriesFromDictionary:dict01];
        NSLog(@"%@",dict03);
        //11.添加元素
        [dict03 setValue:@"papapap" forKey:@"heihei"];
        NSLog(@"%@",dict03);
    }
    return 0;
}
