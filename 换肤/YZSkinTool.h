//
//  YZSkinTool.h
//  换肤
//
//  Created by zhangliangwang on 16/3/30.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YZSkinTool : NSObject

+ (void)setSkinColor:(NSString *)skinColor;
+ (UIImage *)skinToolWithImageName:(NSString *)imageName;
+ (UIColor *)skinToolWithLabelBackgroundColor;

@end
