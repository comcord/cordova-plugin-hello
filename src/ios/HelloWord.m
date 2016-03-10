//
//  HelloWord.m
//  HelloWorld
//
//  Created by dutingfu on 16/3/9.
//
//

#import "HelloWord.h"

@implementation HelloWord
-(void)sayHello:(CDVInvokedUrlCommand *)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* myarg = [command.arguments objectAtIndex:0];
    
    if (myarg != nil) {
        pluginResult = [CDVPluginResult resultWithStatus:(CDVCommandStatus_OK) messageAsString:@"hello"];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Arg was null"];
    }
    UIAlertView * alert =   [[UIAlertView alloc] initWithTitle:myarg message:@"hello" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [alert show];
    NSLog(@"result %@",myarg);
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
