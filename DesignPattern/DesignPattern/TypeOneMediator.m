//
//  TypeOneMediator.m
//  DesignPattern
//
//  Created by Xiao on 2017/11/2.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

#import "TypeOneMediator.h"

@implementation TypeOneMediator

- (void)colleagueEvent:(AbstractColleague *)event{
    if([event isEqual:self.colleagueA]){
        self.colleagueB.value = self.colleagueA.value*2;
        self.colleagueC.value = self.colleagueA.value*4;
    }else if ([event isEqual:self.colleagueB]){
        self.colleagueA.value = self.colleagueB.value / 2.f;
        self.colleagueC.value = self.colleagueB.value * 2.f;
    }else if ([event isEqual:self.colleagueC]){
        self.colleagueA.value = self.colleagueC.value / 4.f;
        self.colleagueB.value = self.colleagueC.value / 2.f;
    }
}

- (NSDictionary *)values{
    return @{@"A":@(self.colleagueA.value),@"B":@(self.colleagueB.value),@"C":@(self.colleagueC.value)};
}

@end
