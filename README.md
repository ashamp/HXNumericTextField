# HXNumericTextField
基于ReactiveCocoa用于输入纯数字的文本框.

- 可配置是否自动置0
- 限制最大位数
- 限制小数精度
- 限制最大值

![cmd-markdown-logo](https://github.com/ashamp/HXNumericTextField/blob/master/404E88C7-8F58-494C-AB27-B63ED03CFBFB.png)

使用链式语法进行初始化配置:

	HXNumericTextField *textField = [[HXNumericTextField alloc] initWithBuilder:^(HXNumericTextFieldBuilder *build) {
            //允许输入最大位数为8位,精确到3位小数的浮点数
            build.maxDigit(8).floatPrecision(3);
        }];

