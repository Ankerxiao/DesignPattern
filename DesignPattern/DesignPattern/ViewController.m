//
//  ViewController.m
//  DesignPattern
//
//  Created by Xiao on 2017/11/2.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

#import "ViewController.h"
#import "TypeOneMediator.h"
#import "Colleague.h"

@interface ViewController ()

@property (nonatomic,strong) TypeOneMediator *mediator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //中介者模式：用一个中介对象来封装一系列的对象交互，中介者使各个对象不需要显示的相互引用，从而是其耦合松散，而且可以独立的改变它们之间的交互
    self.mediator = [[TypeOneMediator alloc] init];
    Colleague *colleagueA = [Colleague new];
    Colleague *colleagueB = [Colleague new];
    Colleague *colleagueC = [Colleague new];
    
    self.mediator.colleagueA = colleagueA;
    self.mediator.colleagueB = colleagueB;
    self.mediator.colleagueC = colleagueC;
    
    colleagueA.delegate = self.mediator;
    colleagueB.delegate = self.mediator;
    colleagueC.delegate = self.mediator;
    
    [colleagueA changeValue:2.f];
    NSLog(@"%@",[self.mediator values]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
