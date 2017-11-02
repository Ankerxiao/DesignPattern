//
//  AbstractColleague.h
//  DesignPattern
//
//  Created by Xiao on 2017/11/2.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractColleague;
@protocol ColleagueDelegate <NSObject>

@optional

//colleague对象的交互
- (void)colleagueEvent:(AbstractColleague *)event;

@end

@interface AbstractColleague : NSObject

@property (nonatomic,weak) id <ColleagueDelegate> delegate;

@end
