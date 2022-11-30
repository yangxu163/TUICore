//
//  UIView+TUIUtil.h
//  TUICore
//
//  Created by gg on 2021/10/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TUIUtil)
- (void)roundedRect:(UIRectCorner)corner withCornerRatio:(CGFloat)cornerRatio;
- (UIView*)subViewOfClassName:(NSString*)className;
@end

NS_ASSUME_NONNULL_END
