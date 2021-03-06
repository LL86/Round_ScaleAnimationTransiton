//
//  CustomView.m
//  Round_ScaleAnimationTransiton
//
//  Created by 史练练 on 15/9/9.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "CustomView.h"
#import <QuartzCore/QuartzCore.h>

#define PI 3.14159265358979323846
@implementation CustomView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

-(void)drawRect:(CGRect)rect{

    //An opaque type that represents a Quartz 2D drawing environment.
    //一个不透明类型的Quartz 2D绘画环境,相当于一个画布,你可以在上面任意绘画
    CGContextRef context = UIGraphicsGetCurrentContext();

    /*画圆*/

    //边框圆
    CGContextSetRGBStrokeColor(context,1,0.5,1,1.0);//画笔线的颜色
    CGContextSetLineWidth(context, 1.0);//线的宽度
    //void CGContextAddArc(CGContextRef c,CGFloat x, CGFloat y,CGFloat radius,CGFloat startAngle,CGFloat endAngle, int clockwise)1弧度＝180°/π （≈57.3°） 度＝弧度×180°/π 360°＝360×π/180 ＝2π 弧度
    // x,y为圆点坐标，radius半径，startAngle为开始的弧度，endAngle为 结束的弧度，clockwise 0为顺时针，1为逆时针。
    CGContextAddArc(context, 200, 200, 45, 0, 2*PI, 1); //添加一个圆
    CGContextDrawPath(context, kCGPathStroke); //绘制路径

}




@end
