//
//  ProducerConsumer.m
//  GCDTest
//
//  Created by 蒋海阳 on 2023/8/7.
//

#import "ProducerConsumer.h"

@implementation ProducerConsumer


-(void)initSema
{
    self.producer = dispatch_semaphore_create(10);
    self.consumer = dispatch_semaphore_create(0);
}

-(void)produce
{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
        dispatch_semaphore_wait(self.producer, DISPATCH_TIME_FOREVER);
        self.productCount++;
        NSLog(@"生产成功。。。商品总量%d个",self.productCount);
        dispatch_semaphore_signal(self.consumer);
    });

}

-(void)consume
{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        dispatch_semaphore_wait(self.consumer, DISPATCH_TIME_FOREVER);
        self.productCount--;
        NSLog(@"消费成功。。。商品总量%d个",self.productCount);
        dispatch_semaphore_signal(self.producer);
    });
    
}

@end
