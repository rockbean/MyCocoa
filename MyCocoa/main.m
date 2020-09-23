//
//  main.m
//  MyCocoa
//
//  Created by xu on 2020/9/23.
//  Copyright © 2020 xu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "MyCocoaBundle.h"

int main(int argc, const char * argv[]) {
    NSBundle *main_bundle = [NSBundle mainBundle];
    NSString *bundle_path = [[main_bundle resourcePath] stringByAppendingPathComponent:@"MyCocoaBundle.bundle"];
    NSLog(@"%s %d >>> main bundle path %@", __func__, __LINE__, bundle_path);
    NSBundle *pro_bundle = [NSBundle bundleWithPath:bundle_path];
    NSError *err;
    [pro_bundle loadAndReturnError:&err];
    if (err) {
        NSLog(@"load fail: %@", err);
    } else {
        NSLog(@"load fine");
    }
    if (NSClassFromString(@"MyCocoaBundle")) {
        NSLog(@"loaded MyCocoaBundle");
        [NSClassFromString(@"MyCocoaBundle") foo];
    } else {
        NSLog(@"fail load bundle");
    }
    
    return NSApplicationMain(argc, argv);
}
