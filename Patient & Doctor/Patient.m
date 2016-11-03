//
//  Patient.m
//  Patient & Doctor
//
//  Created by Erin Luu on 2016-11-03.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWithName: (NSString*) name andAge: (NSInteger) age andGender: (enum gender)gender andHealthCard: (BOOL) healthCard{
    self = [super init];
    if (self) {
        _name = name;
        _age = &age;
        _gender = &gender;
        _validHealthCard = healthCard;
        
    }
    return self;
}

-(void) visitDoctor: (Doctor *)doctor {
    [doctor welcomesPatient:self];
}



@end
