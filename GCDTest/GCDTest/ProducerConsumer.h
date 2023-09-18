//
//  ProducerConsumer.h
//  GCDTest
//
//  Created by 蒋海阳 on 2023/8/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProducerConsumer : NSObject

@property(strong,nonatomic) dispatch_semaphore_t producer;
@property(strong,nonatomic) dispatch_semaphore_t consumer;
//@property(strong,nonatomic) dispatch_queue_t produce_queue;
//@property(strong,nonatomic) dispatch_queue_t consume_queue;

@property(nonatomic,assign) int productCount;
-(void)initSema;
-(void)produce;
-(void)consume;
@end

NS_ASSUME_NONNULL_END
