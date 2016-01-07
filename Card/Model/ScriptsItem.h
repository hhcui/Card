//
//  ScriptsItem.h
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScriptsAlbum.h"
#import "ScriptsContents.h"


@interface ScriptsItem : NSObject

@property (nonatomic, copy) NSString *currentPages;//0

@property (nonatomic, strong) ScriptsAlbum *album;

@property (nonatomic, strong) ScriptsContents *tracks;


@property (nonatomic, copy) NSString *message;//0

@end
