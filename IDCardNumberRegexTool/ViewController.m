//
//  ViewController.m
//  IDCardNumberRegexTool
//
//  Created by JYH on 2017/9/8.
//  Copyright © 2017年 FRAJ. All rights reserved.
//

#import "ViewController.h"
#import "IDCardNumberRegexTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)startButtonClick:(id)sender {
    
    
    BOOL isIDNumber = [IDCardNumberRegexTool accurateVerifyIDCardNumber:self.inputTextField.text];
    
    if (isIDNumber) {
        NSString *tmp = [NSString stringWithFormat:@"%@ 是有效的身份证号码",self.inputTextField.text];
        NSLog(@"%@",tmp);
        self.resultLabel.text = tmp;
    }else{
        NSString *tmp = @"请输入正确的身份证号！";
        NSLog(@"%@",tmp);
        self.resultLabel.text = tmp;
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
