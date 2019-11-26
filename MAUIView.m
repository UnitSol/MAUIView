//
//  MAUIView.m
//  PetMonitor
//
//  Created by Macbook Pro on 12/05/2017.
//  Copyright © 2017 UnitSol. All rights reserved.
//

#import "MAUIView.h"

@implementation MAUIView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        
        [self setCustomUIView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self setCustomUIView];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [self setCustomUIView];
}

- (void)setNeedsLayout {
    [super setNeedsLayout];
    [self setNeedsDisplay];
}


-(void)setCustomUIView{
    
    self.layer.cornerRadius = self.borderRadius;
    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
    
    
    if (self.enableShadow == YES) {
        self.layer.masksToBounds = self.enableShadow;
        self.layer.shadowOffset = CGSizeMake(self.shadowOffsetOne, self.shadowOffsetTwo);
        self.layer.shadowRadius = self.shadowRadius;
        self.layer.shadowOpacity = self.shadowOpacity;
    }
    
    if (self.borderRadius > 0) {
        self.layer.masksToBounds = YES;
    }
    
}

@end
