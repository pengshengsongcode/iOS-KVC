//
//  Model.h
//  KVC熟悉与加强
//
//  Created by ma c on 16/5/16.
//  Copyright © 2016年 彭盛凇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, copy, readonly) NSString *name;

@property (nonatomic, assign, readonly) NSInteger height;

+ (NSArray *)loadData;

@end
