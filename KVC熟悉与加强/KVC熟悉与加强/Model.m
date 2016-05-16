//
//  Model.m
//  KVC熟悉与加强
//
//  Created by ma c on 16/5/16.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import "Model.h"

@implementation Model

- (NSString *)description
{
    return [NSString stringWithFormat:@"model.name = %@, mdoel.height = %@", _name, @(_height)];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
    NSLog(@"key = %@没有找到",key);
    
}

+ (NSArray *)loadData {
    
    //获取plist文件路径
    NSString *path = @"/Users/mac/Desktop/KVC熟悉与加强/KVC熟悉与加强/CoderPSS.plist";
    
    //获取plist文件中的数组
    NSArray *array = [NSArray arrayWithContentsOfFile:path];
    
    //初始化可变数组
    NSMutableArray *dataList = [NSMutableArray array];
    
    //使用字典遍历plist中的数组
    for (NSDictionary *dict in array) {
        
        //初始化model类
        Model *model = [[Model alloc] init];
        
        //使用KVC（setValuesForKeysWithDictionary）方法解析数据
        [model setValuesForKeysWithDictionary:dict];
        
        //将model类加到可变数组
        [dataList addObject:model];
    }
    
    //返回可变数组
    return dataList;
}

@end
