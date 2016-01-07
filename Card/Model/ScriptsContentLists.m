//
//  ScriptsContentLists.m
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import "ScriptsContentLists.h"
#import "ScriptsContentListsModel.h"
@implementation ScriptsContentLists
//+ (NSDictionary *)modelContainerPropertyGenericClass {
//    return @{
//             @"list" : ScriptsContentListsModel.class
//             };
//}
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"title":@"title",
             @"playUrlMP3":@"playUrl64"
             };
}
@end
