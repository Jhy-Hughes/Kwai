//
//  main.m
//  GCDTest
//
//  Created by 蒋海阳 on 2023/8/7.
//

#import <Foundation/Foundation.h>
#import "ProducerConsumer.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...


//        dispatch_queue_t produce_queue = dispatch_queue_create("Producer", DISPATCH_QUEUE_CONCURRENT);
//        dispatch_queue_t consume_queue = dispatch_queue_create("Consumer", DISPATCH_QUEUE_CONCURRENT);
//        dispatch_semaphore_t metux = dispatch_semaphore_create(1);
        ProducerConsumer *produce_consume = [[ProducerConsumer alloc] init];
        [produce_consume initSema];
        
        [produce_consume consume];
        [produce_consume produce];


      




        NSLog(@"Hello, World!");
    }
    return 0;
}
