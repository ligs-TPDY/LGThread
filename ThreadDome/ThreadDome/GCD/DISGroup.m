//
//  DISGroup.m
//  ThreadDome
//
//  Created by 李广帅 on 2019/3/19.
//  Copyright © 2019 天蓬大元. All rights reserved.
//

#import "DISGroup.h"

@interface DISGroup ()

@property (nonatomic,strong) dispatch_group_t group;

@end

@implementation DISGroup

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _group = dispatch_group_create();
        
        //异步执行任务
        dispatch_group_async(_group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH,0), ^{
            
        });
        //异步执行任务
        dispatch_group_async(_group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH,0), ^{
            
        });
        //异步执行任务
        dispatch_group_async(_group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH,0), ^{
            
        });
        //异步执行任务
        dispatch_group_async(_group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH,0), ^{
            
        });
        
        //等待时间，会阻塞当前线程
        dispatch_group_wait(_group,DISPATCH_TIME_NOW);
        
        //通知，所有任务完成时调用
        dispatch_group_notify(_group, dispatch_get_main_queue(), ^{
            
        });
        
        
        //成对出现
        dispatch_group_enter(_group);
        dispatch_group_leave(_group);
    }
    return self;
}

@end
