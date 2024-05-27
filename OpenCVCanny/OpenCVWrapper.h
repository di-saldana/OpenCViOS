//
//  OpenCVWrapper.h
//  OpenCVCanny
//
//  Created by Dianelys Saldaña on 5/26/24.
//

#ifndef OpenCVWrapper_h
#define OpenCVWrapper_h

#ifdef __cplusplus
#import <opencv2/opencv.hpp>
#endif

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface OpenCVWrapper : NSObject

-(id)initWithImageView:(UIImageView*)imageView;
-(void)setEdgeGradient:(int)value;
-(void)setBlur:(int)value;
-(void)setAngle:(int)value;
-(void)startCamera;
-(void)stopCamera;

@end

#endif
