//
//  EMDeviceConfig+Helper.h
//  im_flutter_sdk
//
//  Created by 杜洁鹏 on 2020/10/12.
//

#import "ChatHeaders.h"
#import "ModeToJson.h"
NS_ASSUME_NONNULL_BEGIN

@interface EMDeviceConfig (Helper) <ModeToJson>
- (NSDictionary *)toJson;
@end

NS_ASSUME_NONNULL_END
