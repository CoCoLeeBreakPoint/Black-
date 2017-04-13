//
//  ViewController.m
//  Black反向传值
//
//  Created by cocolee on 2017/4/13.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel *ShowLabel;
@property(nonatomic,strong)UIButton *Btn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Btn];
    [self ShowLabel];

}

-(UIButton*)Btn{
    if (!_Btn) {
        _Btn =[UIButton buttonWithType:UIButtonTypeCustom];
        _Btn.frame = CGRectMake(100, 150, 50, 30);
        [_Btn setTitle:@"跳转" forState:UIControlStateNormal];
        [_Btn setBackgroundColor:[UIColor orangeColor]];
        [_Btn setTintColor:[UIColor whiteColor]];
        [_Btn addTarget:self action:@selector(GOto:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_Btn];
        
        
    }
    return _Btn;
}

-(UILabel*)ShowLabel{
    if (!_ShowLabel) {
        _ShowLabel =[[UILabel alloc]initWithFrame:CGRectMake(20, 100, 300, 30)];
        _ShowLabel.backgroundColor =[UIColor orangeColor];
        [self.view addSubview:_ShowLabel];
    }
    return _ShowLabel;
}

//跳转
-(void)GOto:(id)sender{
    SecondViewController *sec =[[SecondViewController alloc]init];
//    sec.MyBlockReturn =^(NSString *ShowText){
//        _ShowLabel.text = ShowText;
//    };
    
    [sec returnblock:^(NSString *ShowText) {
        _ShowLabel.text = ShowText;
    }];
    
    
    [self.navigationController pushViewController:sec animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
