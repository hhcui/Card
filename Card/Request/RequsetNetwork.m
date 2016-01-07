//
//  RequsetNetwork.m
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//
/**
 要使用常规的AFN网络访问
 
 1. AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
 
 所有的网络请求,均有manager发起
 
 2. 需要注意的是,默认提交请求的数据是二进制的,返回格式是JSON
 
 1> 如果提交数据是JSON的,需要将请求格式设置为AFJSONRequestSerializer
 2> 如果返回格式不是JSON的,
 
 3. 请求格式
 
 AFHTTPRequestSerializer            二进制格式
 AFJSONRequestSerializer            JSON
 AFPropertyListRequestSerializer    PList(是一种特殊的XML,解析起来相对容易)
 
 4. 返回格式
 
 AFHTTPResponseSerializer           二进制格式
 AFJSONResponseSerializer           JSON
 AFXMLParserResponseSerializer      XML,只能返回XMLParser,还需要自己通过代理方法解析
 AFXMLDocumentResponseSerializer (Mac OS X)
 AFPropertyListResponseSerializer   PList
 AFImageResponseSerializer          Image
 AFCompoundResponseSerializer       组合
 */
#import "RequsetNetwork.h"
#import "AFNetworking.h"
static NSString *const KRequestHomeData = @"http://mobile.ximalaya.com/mobile/others/ca/album/track/203355/true/1/30?device=iPhone";

@implementation RequsetNetwork
+ (void)requestHomeWithCompletionBlock:(CompletionBlock)successBlock WithFailureBlock:(FailureBlock)failureBlock {
     AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
     manager.responseSerializer = [AFHTTPResponseSerializer serializer];

    [manager GET:KRequestHomeData parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        

        NSDictionary *content = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];//转换数据格式

        successBlock(content);
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        failureBlock(error);
    }];
}
+ (void)requestSymchHomeWithCompletionBlock:(void(^)(id returnValue))successBlock
{
    //    NSStringEncoding encoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    
    AFHTTPRequestOperation *requestOperation = [[AFHTTPRequestOperation alloc] initWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:KRequestHomeData]]];
    
    requestOperation.responseSerializer = [AFHTTPResponseSerializer serializer];
    [requestOperation start];
    [requestOperation waitUntilFinished];

    NSDictionary *content = [NSJSONSerialization JSONObjectWithData:requestOperation.responseData
                                                            options:NSJSONReadingMutableContainers error:nil];//转换数据格式
    successBlock(content);
    
}

//+ (void)requestHome:(NSDictionary *)dic completionBlock:(void(^)(NSDictionary* dic))block {
//    
//    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
//    NSDictionary *dict = @{@"123":@"123"};
//    //设置请求格式
////    manger.requestSerializer = [AFJSONRequestSerializer serializer];
////    //返回格式
////    manger.responseSerializer = [AFHTTPResponseSerializer serializer];
//    
//   [manger POST:KXXX parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject) {
//       
//        NSString *result = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//       NSLog(@"%@",result);
//       
//   } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//       
//   }];
//    
//}

@end
