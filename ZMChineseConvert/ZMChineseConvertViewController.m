//
//  ZMChineseConvertViewController.m
//  ZMChineseConvert
//
//  Created by ZengZhiming on 2017/3/30.
//  Copyright © 2017年 菜鸟基地. All rights reserved.
//

#import "ZMChineseConvertViewController.h"
#import "ZMChineseConvert.h"

@interface ZMChineseConvertViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField; //!< 输入框.
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;   //!< 转换结果.

@end

@implementation ZMChineseConvertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"简繁中文转换";
}

/** 简转繁点击响应 */
- (IBAction)onSimpToTradAction:(UIButton *)sender {
    _resultLabel.text = [ZMChineseConvert convertSimplifiedToTraditional:_textField.text];
}

/** 繁转简点击响应 */
- (IBAction)onTradToSimpAction:(UIButton *)sender {
    _resultLabel.text = [ZMChineseConvert convertTraditionalToSimplified:_textField.text];
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
