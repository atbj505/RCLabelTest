//
//  ViewController.m
//  RCLabelTest
//
//  Created by 杨启晖 on 15/2/28.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "RCLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化RCLabel
    RCLabel *tempLabel = [[RCLabel alloc] initWithFrame:CGRectMake(10,20,300,100)];
    RTLabelComponentsStructure *componentsDS = [RCLabel extractTextStyle:@"<font size = 20>Which browser is the best?</font>\n<a href='http://www.firefox.com'><img src='firefox.jpg'>Firefox</a><a href='http://windows.microsoft.com/en-US/internet-explorer/products/ie/home'><img src='ie.jpg'>IE</a><a href='http://www.chrome.com'><img src='chrome.jpg'>Chrome</a><a href='http://www.apple.com/safari'><img src='safari.png'>Safari</a>"];
    tempLabel.componentsAndPlainText = componentsDS;
    //获取文字高度
    CGSize optimalSize = [tempLabel optimumSize];
    //改变RCLabel高度
    CGRect frame = tempLabel.frame;
    frame.size.height = optimalSize.height;
    tempLabel.frame = frame;
    
    [self.view addSubview:tempLabel];
}

@end
