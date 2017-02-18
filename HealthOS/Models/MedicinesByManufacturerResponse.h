//
//  MedicinesByManufacturerResponse.h
//  HealthOS
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#ifndef APIMATIC_MEDICINESBYMANUFACTURERRESPONSE
#define APIMATIC_MEDICINESBYMANUFACTURERRESPONSE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Constituent.h"
#import "Schedule.h"


//protocol defined for deserialization of JSON
@protocol MedicinesByManufacturerResponse
@end

@interface MedicinesByManufacturerResponse : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* name;

/**
* TODO: Write general description for this field
*/
@property NSString* form;

/**
* TODO: Write general description for this field
*/
@property int standardUnits;

/**
* TODO: Write general description for this field
*/
@property NSString* packageForm;

/**
* TODO: Write general description for this field
*/
@property double price;

/**
* TODO: Write general description for this field
*/
@property NSString* size;

/**
* TODO: Write general description for this field
*/
@property NSString* manufacturer;

/**
* TODO: Write general description for this field
*/
@property NSArray<Constituent> * constituents;

/**
* TODO: Write general description for this field
*/
@property Schedule* schedule;

/**
* TODO: Write general description for this field
*/
@property NSString* medicineId;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif