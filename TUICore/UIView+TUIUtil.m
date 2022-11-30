//
//  UIView+TUIUtil.m
//  TUICore
//
//  Created by gg on 2021/10/9.
//

#import "UIView+TUIUtil.h"

@implementation UIView (TUIUtil)
- (void)roundedRect:(UIRectCorner)corner withCornerRatio:(CGFloat)cornerRatio {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(cornerRatio, cornerRatio)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (UIView*)subViewOfClassName:(NSString*)className {
    for (UIView* subView in self.subviews) {
        if ([NSStringFromClass(subView.class) isEqualToString:className]) {
            return subView;
        }
        
        UIView* resultFound = [subView subViewOfClassName:className];
        if (resultFound) {
            return resultFound;
        }
    }
    return nil;
}

@end
