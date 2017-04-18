//
//  MEProtocolManager.m
//  MEProtocolManager
//
//  Created by MoShi-MacBookPro on 2017/4/18.
//  Copyright © 2017年 祁鹏宇. All rights reserved.
//

#import "MEProtocolManager.h"

@interface MEProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation MEProtocolManager

+ (MEProtocolManager *)sharedInstance {
    static MEProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol {
    if (provide == nil || protocol == nil) {
        return;
    }
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol {
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
