//
//  YZRootViewController.m
//  换肤
//
//  Created by zhangliangwang on 16/3/30.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

#import "YZRootViewController.h"
#import "YZTestViewController.h"
#import "YZSkinTool.h"

@interface YZRootViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *carImageView;
@property (strong, nonatomic) IBOutlet UIImageView *faceImageView;
@property (strong, nonatomic) IBOutlet UIImageView *heartImageView;


@end

@implementation YZRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置
    [self changeImage];

//    NSString *skinColor = [[NSUserDefaults standardUserDefaults] objectForKey:@"skinColor"];
//    if (skinColor == nil) {
//        skinColor = @"red";
//    }
//    
//    [self changeSkinWithSkinColor:skinColor];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 32)];
    [btn addTarget:self action:@selector(clickNextBtn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"next" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor grayColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}

- (void)clickNextBtn
{
    YZTestViewController *testCtrl = [[YZTestViewController alloc] init];
    [self.navigationController pushViewController:testCtrl animated:YES];
    
}


- (IBAction)changeToRedSkinColor {
    [YZSkinTool setSkinColor:@"red"];
    [self changeImage];
//    [self changeSkinWithSkinColor:@"red"];
}


- (IBAction)changeToYelloeSkinColor {
    
    [YZSkinTool setSkinColor:@"yellow"];
    [self changeImage];
//    [self changeSkinWithSkinColor:@"yellow"];
}


- (IBAction)changeToBlueSkinColor {
    [YZSkinTool setSkinColor:@"blue"];
    [self changeImage];
//    [self changeSkinWithSkinColor:@"blue"];
}

- (void)changeImage
{
    self.carImageView.image = [YZSkinTool skinToolWithImageName:@"car"];
    self.faceImageView.image = [YZSkinTool skinToolWithImageName:@"face"];
    self.heartImageView.image = [YZSkinTool skinToolWithImageName:@"heart"];
    
}

- (void)changeSkinWithSkinColor:(NSString *)skinColor
{
    NSString *carImage = [NSString stringWithFormat:@"%@car",skinColor];
    self.carImageView.image = [UIImage imageNamed:carImage];
    
    NSString *faceImage = [NSString stringWithFormat:@"%@face",skinColor];
    self.faceImageView.image = [UIImage imageNamed:faceImage];
    
    
    NSString *heartImage = [NSString stringWithFormat:@"%@heart",skinColor];
    self.heartImageView.image = [UIImage imageNamed:heartImage];
    
    
    [[NSUserDefaults standardUserDefaults] setValue:skinColor forKey:@"skinColor"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
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
