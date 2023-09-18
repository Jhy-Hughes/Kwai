//
//  main.m
//  BlockTest
//
//  Created by 蒋海阳 on 2023/8/3.
//

#import <Foundation/Foundation.h>
//typedef void(^BlockTest)(int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //1.declaration
        __block void(^blocktest)(int);
        blocktest = ^(int i){
            if( i == 0){
                blocktest = nil;
            }
            if (i > 0) {
                NSLog(@"Hello, World!");
                blocktest(i-1);
            }
        };
        blocktest(5);
//        //2.
//        static void(^blocks)(int) = ^(int i){
//            if (i > 0) {
//                NSLog(@"Hello, World!");
//                blocks(i-1);
//            }
//        };
//        blocks(4);
//        void(^p)(int) = 0;
//        p = blocks;
//        p(4);
//        //3.
//        static BlockTest blocks;
//        blocks = ^(int i){
//            if (i > 0) {
//                NSLog(@"Hello, World!");
//                blocks(i-1);
//            }
//        };
//        blocks(4);
        
    }
    return 0;
}
