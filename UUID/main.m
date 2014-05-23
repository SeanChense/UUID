//
//  main.m
//  UUID
//
//  Created by SeanChense on 14-5-23.
//  Copyright (c) 2014年 SeanChense. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create universally unique identifier (object)
        CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
        
        // Get the string representation of CFUUID object.
        NSString *uuidStr = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuidObject)) ;
        
        // If needed, here is how to get a representation in bytes, returned as a structure
        // typedef struct {
        //   UInt8 byte0;
        //   UInt8 byte1;
        //   ...
        //   UInt8 byte15;
        // } CFUUIDBytes;
        CFUUIDBytes bytes = CFUUIDGetUUIDBytes(uuidObject);
        
        CFRelease(uuidObject);
        
       NSLog(@"%@",uuidStr) ;
        
    }
    return 0;
}

