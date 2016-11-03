//
//  main.m
//  Patient & Doctor
//
//  Created by Erin Luu on 2016-11-03.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor * doctor1 = [[Doctor alloc]initWithName:@"Philip" andSpecialization:@"orthodontist"];
        Patient * patient1 = [[Patient alloc]initWithName:@"Linda" andAge:18 andGender:female andHealthCard:NO];
        
        [patient1 visitDoctor:doctor1];
        [patient1 requestMedicationFrom:doctor1 withSymptom:@"pain"];
    }
    return 0;
}
