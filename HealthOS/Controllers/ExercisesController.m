//
//  ExercisesController.m
//  HealthOS
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#import "ExercisesController.h"

@implementation ExercisesController

/**
* TODO: Add Description
* @param    exerciseId    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) getExerciseAsyncWithExerciseId:(NSString*) exerciseId
                completionBlock:(CompletedGetExercise) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithFormat: (NSString*) Configuration_BaseUri, Configuration_Host];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/exercises/{exercise_id}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"exercise_id": exerciseId
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Authorization": [NSString stringWithFormat:@"Bearer %@", Configuration_OAuthAccessToken]
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* TODO: Add Description
* @param    page    Required parameter: Example: 
* @param    size    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) getAllExercisesAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllExercises) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithFormat: (NSString*) Configuration_BaseUri, Configuration_Host];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/exercises"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withQueryParameters: @{
                    @"page": [NSNumber numberWithInteger: page],
                    @"size": [NSNumber numberWithInteger: size]
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Authorization": [NSString stringWithFormat:@"Bearer %@", Configuration_OAuthAccessToken]
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}

/**
* TODO: Add Description
* @param    exerciseQuery    Required parameter: Example: 
* @return	Returns the void response from the API call */
- (void) searchExercisesAsyncWithExerciseQuery:(NSString*) exerciseQuery
                completionBlock:(CompletedGetSearchExercises) onCompleted
{
    //the base uri for api requests
    NSString* _baseUri = [NSString stringWithFormat: (NSString*) Configuration_BaseUri, Configuration_Host];

    //prepare query string for API call
    NSMutableString* _queryBuilder = [NSMutableString stringWithString: _baseUri]; 
    [_queryBuilder appendString: @"/search/exercises/{exercise_query}"];

    //process optional query parameters
    [APIHelper appendUrl: _queryBuilder withTemplateParameters: @{
                    @"exercise_query": exerciseQuery
                }];

    //validate and preprocess url
    NSString* _queryUrl = [APIHelper cleanUrl: _queryBuilder];

    //preparing request headers
    NSMutableDictionary* _headers = [[NSMutableDictionary alloc] initWithDictionary: @{
        @"user-agent": @"APIMATIC 2.0",
        @"accept": @"application/json",
        @"Authorization": [NSString stringWithFormat:@"Bearer %@", Configuration_OAuthAccessToken]
    }];

    //Remove null values from header collection in order to omit from request
    [APIHelper removeNullValues: _headers];


    //prepare the request and fetch response  
    HttpRequest* _request = [[self clientInstance] get: ^(HttpRequest* _request) 
    { 
        [_request setQueryUrl: _queryUrl]; //set request url        
        [_request setHeaders: _headers]; //set request headers

    }];

    //use the instance of the http client to make the actual call
    [[self clientInstance]
     executeAsString: _request
     success: ^(id _context, HttpResponse *_response) {
         //Error handling using HTTP status codes
         NSError* _statusError = nil;

         //Error handling using HTTP status codes 
         if((_response.statusCode < 200) || (_response.statusCode > 208)) //[200,208] = HTTP OK
             _statusError = [[APIError alloc] initWithReason: @"HTTP Response Not OK"
                                                  andContext:_context];

         if(_statusError != nil)
         {
             //announce completion with failure due to HTTP status code checking
             onCompleted(NO, _context, nil, _statusError);
         }
         else
         {
             //return _response to API caller
             NSString* _strResult = [(HttpStringResponse*)_response body];
             id _result = [NSJSONSerialization
                        JSONObjectWithData: [_strResult dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

 
             //announce completion with success
             onCompleted(YES, _context, _result, nil);
         }
     } failure:^(id _context, NSError *_error) {
 
         //announce completion with failure
         onCompleted(NO, _context, nil, _error);
     }];
}


@end