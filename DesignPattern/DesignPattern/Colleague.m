//
//  Colleague.m
//  DesignPattern
//
//  Created by Xiao on 2017/11/2.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (void)changeValue:(CGFloat)value{
    self.value = value;
    if(self.delegate && [self.delegate respondsToSelector:@selector(colleagueEvent:)]){
        [self.delegate colleagueEvent:self];
    }
}

@end
