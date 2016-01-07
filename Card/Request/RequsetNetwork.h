//
//  RequsetNetwork.h
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Config.h"
@interface RequsetNetwork : NSObject
/**
 *  请求首页数据，即主干
 *
 */
+ (void)requestHomeWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock;


+ (void)requestSymchHomeWithCompletionBlock:(void(^)(id returnValue))successBlock;
//+ (void)requestHome:(NSDictionary *)dict completionBlock:(void(^)(NSDictionary* dic))block;
@end
