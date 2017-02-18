//
//  ExercisesResponse.h
//  HealthOS
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#ifndef APIMATIC_EXERCISESRESPONSE
#define APIMATIC_EXERCISESRESPONSE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ExercisesResponse
@end

@interface ExercisesResponse : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* name;

/**
* TODO: Write general description for this field
*/
@property NSString* mcategory;

/**
* TODO: Write general description for this field
*/
@property NSString* caloryCount;

/**
* TODO: Write general description for this field
*/
@property NSString* cardioSubcategory;

/**
* TODO: Write general description for this field
*/
@property NSString* primaryMuscleGroup;

/**
* TODO: Write general description for this field
*/
@property NSString* exerciseId;

/**
* TODO: Write general description for this field
*/
@property double searchScore;


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