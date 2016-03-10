//
//  HelloWord.h
//  HelloWorld
//
//  Created by dutingfu on 16/3/9.
//
//

#import <Cordova/CDVPlugin.h>

@interface HelloWord : CDVPlugin
- (void)sayHello:(CDVInvokedUrlCommand *)command;
@end
