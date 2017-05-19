//
//  ViewController.m
//  HXNumericTextField
//
//  Created by 谢俊伟 on 16/8/19.
//  Copyright © 2016年 MacBook. All rights reserved.
//

#import "ViewController.h"

#import "HXNumericTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
    scrollView.clipsToBounds = YES;
    [self.view addSubview:scrollView];
    
    CGFloat Y = 60;
    {
        //生成一个只允许输入数字的文本框
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"无限位数";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            //使用默认配置,只允许输入数字,无位数限制
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }{
        //生成一个只允许输入数字的文本框
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"取消自动置0";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            build.autoZeroWhenEmpty(NO).floatPrecision(10);
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }{
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"允许输入最大位数为8位的整数";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            //配置最大位数为8位
            build.maxDigit(8);
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }{
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"允许输入精确到3位小数的浮点数";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            build.floatPrecision(3);
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }{
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"允许输入最大位数为8位,精确到3位小数的浮点数";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            build.maxDigit(8).floatPrecision(3);
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }{
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"允许输入最大值为789.12,精确到2位小数的浮点数";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            build.maxValue(789.12).floatPrecision(2);
            
            [build setMaxValueDidCorrectedBlock:^(double maxValue) {
                NSLog(@"输入被纠正为最大值:%@",@(maxValue));
            }];
            
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }
    {
        UILabel *titleLabel = ({
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, Y, 300 , 30)];
            label.text = @"链式配置组合";
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = [UIColor colorWithWhite:0 alpha:1];
            label;
        });
        [scrollView addSubview:titleLabel];
        Y+=30;
        HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            build.autoZeroWhenEmpty(YES).maxDigit(8).floatPrecision(2).maxValue(23456789.87).prefix(@"$.");
        }];
        textField.frame = CGRectMake(16, Y, 300, 40);
        textField.backgroundColor = [UIColor cyanColor];
        [scrollView addSubview:textField];
        Y+=40;
    }
    scrollView.contentSize = CGSizeMake(320, Y);

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
