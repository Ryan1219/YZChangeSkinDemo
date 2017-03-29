//
//  YZTestViewController.m
//  换肤
//
//  Created by zhangliangwang on 16/3/30.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

#import "YZTestViewController.h"
#import "YZSkinTool.h"

@interface YZTestViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *carImageView;
@property (strong, nonatomic) IBOutlet UIImageView *faceImageView;
@property (strong, nonatomic) IBOutlet UIImageView *heartImageView;
@property (strong, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation YZTestViewController

/**
 *如果是tabBar控制的控制器，应该在viewWillAppear设置，所以最好在viewWillAppear里设置
 */
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.carImageView.image = [YZSkinTool skinToolWithImageName:@"car"];
    self.faceImageView.image = [YZSkinTool skinToolWithImageName:@"face"];
    self.heartImageView.image = [YZSkinTool skinToolWithImageName:@"heart"];
    
    
    self.textLabel.backgroundColor = [YZSkinTool skinToolWithLabelBackgroundColor];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    self.carImageView.image = [YZSkinTool skinToolWithImageName:@"car"];
//    self.faceImageView.image = [YZSkinTool skinToolWithImageName:@"face"];
//    self.heartImageView.image = [YZSkinTool skinToolWithImageName:@"heart"];
    

//    NSString *skinColor = [[NSUserDefaults standardUserDefaults] objectForKey:@"skinColor"];
//    if (skinColor == nil) {
//        skinColor = @"red";
//    }
//    [self changeSkinWithSkinColor:skinColor];
}


- (void)changeSkinWithSkinColor:(NSString *)skinColor
{
    NSString *carImage = [NSString stringWithFormat:@"%@car",skinColor];
    self.carImageView.image = [UIImage imageNamed:carImage];
    
    NSString *faceImage = [NSString stringWithFormat:@"%@face",skinColor];
    self.faceImageView.image = [UIImage imageNamed:faceImage];
    
    
    NSString *heartImage = [NSString stringWithFormat:@"%@heart",skinColor];
    self.heartImageView.image = [UIImage imageNamed:heartImage];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
