//
//  Colleague.h
//  DesignPattern
//
//  Created by Xiao on 2017/11/2.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbstractColleague.h"

@interface Colleague : AbstractColleague

@property (nonatomic,assign) CGFloat value;

//修改数值
- (void)changeValue:(CGFloat)value;

@end
