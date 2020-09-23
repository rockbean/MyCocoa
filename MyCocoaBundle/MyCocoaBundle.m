//
//  MyCocoaBundle.m
//  MyCocoaBundle
//
//  Created by xu on 2020/9/23.
//  Copyright © 2020 xu. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/syscall.h>
#include <sys/attr.h>
#include <sys/errno.h>
#include <sys/vnode.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdio.h>
#include <assert.h>
#include <stddef.h>
#include <stdbool.h>

#include "MyCocoaBundle.h"

@implementation MyCocoaBundle
+(int)foo
{
    int ret = 0;
    int fd = open("/Users/xu/add.md", O_RDWR);
    if (fd > 0) {
        NSLog(@"%s %d >>> open fd %d", __func__, __LINE__, fd);
        close(fd);
    } else {
        NSLog(@"%s %d >>> fail to open", __func__, __LINE__);
    }
    
    return ret;
}
@end
