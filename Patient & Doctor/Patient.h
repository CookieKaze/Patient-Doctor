//
//  Patient.h
//  Patient & Doctor
//
//  Created by Erin Luu on 2016-11-03.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

enum gender{
    male,
    female
};

@property NSString * name;
@property NSInteger * age;
@property enum gender * gender;
@property BOOL validHealthCard;
@property NSString * medication;

-(instancetype)initWithName: (NSString*) name andAge: (NSInteger) age andGender: (enum gender)gender andHealthCard: (BOOL) healthCard;
-(void) visitDoctor: (Doctor *)doctor;
-(void) requestMedicationFrom: (Doctor *)doctor withSymptom: (NSString *) symptom;
@end
