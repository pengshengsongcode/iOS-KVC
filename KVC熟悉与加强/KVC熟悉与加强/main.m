//
//  main.m
//  KVC熟悉与加强
//
//  Created by ma c on 16/5/16.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Model *model =  [[Model alloc] init];
//        
//        [model setValue:@"Coder丶PSS" forKey:@"name"];
//        [model setValue:@"178" forKeyPath:@"height"];
//        
////        NSLog(@"%@",model);
//        
//        NSLog(@"名字叫%@，身高为%@",[model valueForKey:@"name"],[model valueForKey:@"height"]);
//        
//
        
        NSLog(@"%@",NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES));

        NSArray *dataList = [Model loadData];
        
        for (Model *model in dataList) {
            NSLog(@"%@",model);
        }
        
    }
    return 0;
}
