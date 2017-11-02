//
//  TypeOneMediator.h
//  DesignPattern
//
//  Created by Xiao on 2017/11/2.
//  Copyright © 2017年 com.xiao.forward. All rights reserved.
//

#import "AbstractMediator.h"
#import "Colleague.h"

@interface TypeOneMediator : AbstractMediator

@property (nonatomic,strong) Colleague *colleagueA;
@property (nonatomic,strong) Colleague *colleagueB;
@property (nonatomic,strong) Colleague *colleagueC;

//查看信息
- (NSDictionary *)values;

@end
