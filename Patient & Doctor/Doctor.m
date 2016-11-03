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
            NSDictionary * medication = @{@"pain":@"Motrin",@"sleeplessness":@"Ambien", @"depressed":@"Celexa"};
            _medicationList = medication;
            NSMutableSet * acceptedPatients = [[NSMutableSet alloc]init];
            _acceptedPatients = acceptedPatients;
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


-(NSString *) checkSymptoms: (NSString *)symptom {
    NSString * medication;
    if ([self.medicationList objectForKey:symptom] != nil) {
        medication = self.medicationList[symptom];
    }else{
        medication = @"Sorry, I don't know what to give you.";
    }
    return medication;
}
-(BOOL) checkAcceptedPatients: (Patient*) patient{
    return [self.acceptedPatients containsObject:patient];
}

-(NSString *) prescribeMedication: (Patient *)patient withSympton:(NSString *)symptom {
    NSString * medication = [self checkSymptoms:symptom];
    if ([self checkAcceptedPatients:patient]) {
        NSLog (@"Here is some %@.", medication);
    }else{
        NSLog(@"Sorry I can't give medication to patients not on my list.");
        medication = nil;
    }
    return medication;
}

@end
