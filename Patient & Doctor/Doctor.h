//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Erin Luu on 2016-11-03.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
@interface Doctor : NSObject

@property NSString * name;
@property NSString * specialization;
@property NSMutableSet * acceptedPatients;

-(instancetype)initWithName: (NSString*)name andSpecialization: (NSString*) specialiation;
-(void) welcomesPatient: (Patient*)patient;
-(void) checkHealthCard: (Patient *)patient;
@end
