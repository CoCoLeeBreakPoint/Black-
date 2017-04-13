//
//  SecondViewController.m
//  Black反向传值
//
//  Created by cocolee on 2017/4/13.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property(nonatomic,strong)UITextField *EntText;
@property(nonatomic,strong)UIButton *Button;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self EntText];
    [self Button];
    
    
   
}

-(UITextField*)EntText{
    if (!_EntText) {
        _EntText =[[UITextField alloc]initWithFrame:CGRectMake(20, 100, 300, 30)];
        _EntText.clearButtonMode =YES;
        _EntText.backgroundColor =[UIColor grayColor];
        [self.view addSubview:_EntText];
        
    }
    return _EntText;
    
}
-(UIButton*)Button{
    if (!_Button) {
        _Button =[UIButton buttonWithType:UIButtonTypeCustom];
        _Button.frame = CGRectMake(100, 150, 50, 30);
        [_Button setTitle:@"传值" forState:UIControlStateNormal];
        [_Button setBackgroundColor:[UIColor orangeColor]];
        [_Button setTintColor:[UIColor whiteColor]];
        [_Button addTarget:self action:@selector(chuanzhi:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_Button];
        
    }
    return _Button;
    
}

-(void)returnblock:(MyBlockReturn)block{
    self.block = block;
}
-(void)chuanzhi:(id)sender{
    
    if (self.EntText.text !=nil) {
        self.block(self.EntText.text);
    }
    
//    self.MyBlockReturn(self.EntText.text);
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
