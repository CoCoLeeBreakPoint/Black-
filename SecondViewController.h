//
//  SecondViewController.h
//  Black反向传值
//
//  Created by cocolee on 2017/4/13.
//  Copyright © 2017年 TR. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^MyBlockReturn)(NSString*ShowText);

@interface SecondViewController : UIViewController

//@property(nonatomic,copy)void (^MyBlockReturn)(NSString *ShowText);

@property(nonatomic,copy)MyBlockReturn block;


-(void)returnblock:(MyBlockReturn)block;

@end
