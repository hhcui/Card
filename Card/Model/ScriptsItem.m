//
//  ScriptsItem.m
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import "ScriptsItem.h"

@implementation ScriptsItem
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"currentPages":@"ret",
             @"message":@"msg",
             };
}
@end
