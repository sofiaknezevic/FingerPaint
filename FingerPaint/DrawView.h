//
//  DrawView.h
//  FingerPaint
//
//  Created by Sofia Knezevic on 2017-02-17.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DrawView : UIView

@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic) UIColor *lineColor;


@end
