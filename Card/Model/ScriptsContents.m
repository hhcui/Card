//
//  ScriptsContents.m
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import "ScriptsContents.h"
#import "ScriptsContentListsModel.h"

@implementation ScriptsContents
+ (NSDictionary *)modelCustomPropertyMapper {
    
    return @{@"pageId":@"pageId",
             @"pageSize":@"pageSize",
             @"maxPageId":@"maxPageId",
             @"totalCount":@"totalCount",
             };
}
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"list" : ScriptsContentLists.class
             };

}
@end
