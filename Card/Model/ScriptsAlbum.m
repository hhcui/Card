//
//  ScriptsAlbum.m
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import "ScriptsAlbum.h"
#import "ScriptsContentLists.h"
@implementation ScriptsAlbum
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"album" : ScriptsContentLists.class
             };
    
}
@end
