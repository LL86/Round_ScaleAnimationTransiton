//
//  ViewController.m
//  Round_ScaleAnimationTransiton
//
//  Created by 史练练 on 15/9/9.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "ViewController.h"
#import "ScaleTransition.h"


@interface ViewController ()<UINavigationControllerDelegate>

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.delegate = self;
}
- (void)viewDidLoad {
    [super viewDidLoad];


    _btnView.layer.cornerRadius = 0.5f*_btnView.frame.size.width;


}


- (id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                   animationControllerForOperation:(UINavigationControllerOperation)operation
                                                fromViewController:(UIViewController *)fromVC
                                                  toViewController:(UIViewController *)toVC  NS_AVAILABLE_IOS(7_0){
    if (operation == UINavigationControllerOperationPush) {

        ScaleTransition *scale = [[ScaleTransition alloc] init];
        return scale;
    }else{
        return nil;
    }


}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
