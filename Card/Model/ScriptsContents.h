//
//  ScriptsContents.h
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScriptsContentLists.h"
@interface ScriptsContents : NSObject

@property (nonatomic, copy) NSString *pageId;//1
@property (nonatomic, copy) NSString *pageSize;//30
@property (nonatomic, copy) NSString *maxPageId;//13
/**
 *  总数（list）
 */
@property (nonatomic, strong) NSString *totalCount;//367

@property (nonatomic, strong) NSArray *list;//367

@end
