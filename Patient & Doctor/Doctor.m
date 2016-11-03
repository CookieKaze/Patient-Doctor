//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Erin Luu on 2016-11-03.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)initWithName: (NSString*)name andSpecialization: (NSString*) specialiation {
    {
        self = [super init];
        if (self) {
            _name = name;
            _specialization = specialiation;
        }
        return self;
    }
}

-(void) welcomesPatient: (Patient*)patient {
    NSLog(@"Hello %@, My name is doctor %@", patient.name, self.name);
    [self checkHealthCard:patient];
    
}

-(void) checkHealthCard: (Patient *)patient {
    if(patient.validHealthCard == YES){
        [self.acceptedPatients addObject:patient];
        NSLog(@"You have a valid health card. Please come in.");
    }else {
        NSLog(@"You do not have a valid health card. Go away!");
    }
}

@end
