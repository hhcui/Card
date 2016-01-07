//
//  ScriptsAlbum.h
//  Card
//
//  Created by hadis on 15/12/30.
//  Copyright © 2015年 marc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScriptsAlbum : NSObject
@property (nonatomic, assign) double status;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *tags;
@property (nonatomic, assign) double serialState;
@property (nonatomic, strong) NSString *categoryName;
@property (nonatomic, strong) NSString *coverWebLarge;
@property (nonatomic, strong) NSString *coverMiddle;
@property (nonatomic, assign) BOOL hasNew;
@property (nonatomic, strong) NSString *nickname;
@property (nonatomic, strong) NSString *intro;
@property (nonatomic, assign) double shares;
@property (nonatomic, assign) BOOL isVerified;
@property (nonatomic, assign) double createdAt;
@property (nonatomic, strong) NSString *avatarPath;
@property (nonatomic, assign) double albumId;
@property (nonatomic, assign) double updatedAt;
@property (nonatomic, strong) NSString *coverLarge;
@property (nonatomic, strong) NSString *coverSmall;
@property (nonatomic, assign) double uid;
@property (nonatomic, strong) NSString *coverOrigin;
@property (nonatomic, strong) NSString *introRich;
@property (nonatomic, assign) double tracks;
@property (nonatomic, assign) BOOL isFavorite;
@property (nonatomic, assign) double serializeStatus;
@property (nonatomic, assign) double categoryId;
@property (nonatomic, assign) double playTimes;
@end
