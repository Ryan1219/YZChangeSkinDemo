//
//  YZSkinTool.m
//  换肤
//
//  Created by zhangliangwang on 16/3/30.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

#import "YZSkinTool.h"

#define SkinColorKey @"SkinColorKey"

@implementation YZSkinTool

static NSString *_skinColor;

+ (void)initialize
{
    _skinColor = [[NSUserDefaults standardUserDefaults] objectForKey:SkinColorKey];
    if (_skinColor == nil) {
        _skinColor = @"red";
    }
}

+ (void)setSkinColor:(NSString *)skinColor
{
    _skinColor = skinColor;
    
    //保存用户选中的皮肤颜色
    [[NSUserDefaults standardUserDefaults] setValue:skinColor forKey:SkinColorKey];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

+ (UIImage *)skinToolWithImageName:(NSString *)imageName
{
//    NSString *imagePath = [NSString stringWithFormat:@"%@/%@",_skinColor,imageName];
    NSString *imagePath = [NSString stringWithFormat:@"skin/%@/%@",_skinColor,imageName];
    
    return [UIImage imageNamed:imagePath];
    
}

+ (UIColor *)skinToolWithLabelBackgroundColor
{
    //获取plist的路径
    NSString *plistName = [NSString stringWithFormat:@"skin/%@/bgColor.plist",_skinColor];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:plistName ofType:nil];
    
    //读取颜色的点击
    NSDictionary *colorDict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    //读取对应颜色的字符串
    NSString *colorString = colorDict[@"labelBgColor"];
    
    //读取颜色的数组
    NSArray *colorArray = [colorString componentsSeparatedByString:@","];
    
    //读取对应的RGB
    NSInteger red   = [colorArray[0] integerValue];
    NSInteger green = [colorArray[1] integerValue];
    NSInteger blue  = [colorArray[2] integerValue];
    
    //转换成对应的颜色
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
    
    return color;
    
}

@end



















































