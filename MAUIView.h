//
//  MAUIView.h
//  PetMonitor
//
//  Created by Macbook Pro on 12/05/2017.
//  Copyright © 2017 UnitSol. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface MAUIView : UIView

@property (nonatomic, retain) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable float borderRadius;
@property (nonatomic, assign) IBInspectable float borderWidth;

// Setting Shadow
@property (nonatomic, assign) IBInspectable BOOL enableShadow;
@property (nonatomic, assign) IBInspectable float shadowOffsetOne;
@property (nonatomic, assign) IBInspectable float shadowOffsetTwo;
@property (nonatomic, assign) IBInspectable float shadowRadius;
@property (nonatomic, assign) IBInspectable float shadowOpacity;

@end
