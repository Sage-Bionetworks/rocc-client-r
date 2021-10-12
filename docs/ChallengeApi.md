# ChallengeApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateChallenge**](ChallengeApi.md#CreateChallenge) | **POST** /challenges/{accountName} | Add a challenge
[**CreateChallengeOrganizer**](ChallengeApi.md#CreateChallengeOrganizer) | **POST** /challenges/{accountName}/{challengeName}/organizers | Create a challenge organizer
[**DeleteAllChallenges**](ChallengeApi.md#DeleteAllChallenges) | **DELETE** /challenges | Delete all challenges
[**DeleteChallenge**](ChallengeApi.md#DeleteChallenge) | **DELETE** /challenges/{accountName}/{challengeName} | Delete a challenge
[**DeleteChallengeOrganizer**](ChallengeApi.md#DeleteChallengeOrganizer) | **DELETE** /challenges/{accountName}/{challengeName}/organizers/{organizerId} | Delete a challenge organizer
[**GetChallenge**](ChallengeApi.md#GetChallenge) | **GET** /challenges/{accountName}/{challengeName} | Get a challenge
[**GetChallengeReadme**](ChallengeApi.md#GetChallengeReadme) | **GET** /challenges/{accountName}/{challengeName}/readme | Get a challenge README
[**ListAccountChallenges**](ChallengeApi.md#ListAccountChallenges) | **GET** /challenges/{accountName} | List all the challenges owned by the specified account
[**ListChallengeOrganizers**](ChallengeApi.md#ListChallengeOrganizers) | **GET** /challenges/{accountName}/{challengeName}/organizers | List organizers
[**ListChallengeStargazers**](ChallengeApi.md#ListChallengeStargazers) | **GET** /challenges/{accountName}/{challengeName}/stargazers | List stargazers
[**ListChallengeTopics**](ChallengeApi.md#ListChallengeTopics) | **GET** /challenges/{accountName}/{challengeName}/topics | List stargazers
[**ListChallenges**](ChallengeApi.md#ListChallenges) | **GET** /challenges | List all the challenges
[**UpdateChallengeReadme**](ChallengeApi.md#UpdateChallengeReadme) | **PATCH** /challenges/{accountName}/{challengeName}/readme | Update a challenge README


# **CreateChallenge**
> ChallengeCreateResponse CreateChallenge(account.name, challenge.create.request)

Add a challenge

Adds a challenge

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.create.request <- ChallengeCreateRequest$new("name_example", "description_example", "displayName_example", "websiteUrl_example", ChallengeStatus$new(), "startDate_example", "endDate_example", "platformId_example", list("topics_example"), "doi_example") # ChallengeCreateRequest | 

#Add a challenge
api.instance <- ChallengeApi$new()
result <- api.instance$CreateChallenge(var.account.name, var.challenge.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.create.request** | [**ChallengeCreateRequest**](ChallengeCreateRequest.md)|  | 

### Return type

[**ChallengeCreateResponse**](ChallengeCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Success |  -  |
| **400** | Invalid request |  -  |
| **409** | The request conflicts with current state of the target resource |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **CreateChallengeOrganizer**
> ChallengeOrganizerCreateResponse CreateChallengeOrganizer(account.name, challenge.name, challenge.organizer.create.request)

Create a challenge organizer

Create a challenge organizer

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge
var.challenge.organizer.create.request <- ChallengeOrganizerCreateRequest$new("name_example", "login_example", list(ChallengeOrganizerRole$new())) # ChallengeOrganizerCreateRequest | 

#Create a challenge organizer
api.instance <- ChallengeApi$new()
result <- api.instance$CreateChallengeOrganizer(var.account.name, var.challenge.name, var.challenge.organizer.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 
 **challenge.organizer.create.request** | [**ChallengeOrganizerCreateRequest**](ChallengeOrganizerCreateRequest.md)|  | 

### Return type

[**ChallengeOrganizerCreateResponse**](ChallengeOrganizerCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Success |  -  |
| **400** | Invalid request |  -  |
| **409** | The request conflicts with current state of the target resource |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **DeleteAllChallenges**
> object DeleteAllChallenges()

Delete all challenges

Delete all challenges

### Example
```R
library(openapi)


#Delete all challenges
api.instance <- ChallengeApi$new()
result <- api.instance$DeleteAllChallenges()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **DeleteChallenge**
> object DeleteChallenge(account.name, challenge.name)

Delete a challenge

Deletes the challenge specified

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#Delete a challenge
api.instance <- ChallengeApi$new()
result <- api.instance$DeleteChallenge(var.account.name, var.challenge.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **DeleteChallengeOrganizer**
> object DeleteChallengeOrganizer(account.name, challenge.name, organizer.id)

Delete a challenge organizer

Deletes the challenge organizer specified

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge
var.organizer.id <- 'organizer.id_example' # character | The identifier of the challenge organizer

#Delete a challenge organizer
api.instance <- ChallengeApi$new()
result <- api.instance$DeleteChallengeOrganizer(var.account.name, var.challenge.name, var.organizer.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 
 **organizer.id** | **character**| The identifier of the challenge organizer | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **GetChallenge**
> Challenge GetChallenge(account.name, challenge.name)

Get a challenge

Returns the challenge specified

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#Get a challenge
api.instance <- ChallengeApi$new()
result <- api.instance$GetChallenge(var.account.name, var.challenge.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 

### Return type

[**Challenge**](Challenge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **GetChallengeReadme**
> ChallengeReadme GetChallengeReadme(account.name, challenge.name)

Get a challenge README

Returns the challenge README specified

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#Get a challenge README
api.instance <- ChallengeApi$new()
result <- api.instance$GetChallengeReadme(var.account.name, var.challenge.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 

### Return type

[**ChallengeReadme**](ChallengeReadme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListAccountChallenges**
> PageOfChallenges ListAccountChallenges(account.name, limit=10, offset=0)

List all the challenges owned by the specified account

List all the challenges owned by the specified account

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#List all the challenges owned by the specified account
api.instance <- ChallengeApi$new()
result <- api.instance$ListAccountChallenges(var.account.name, limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfChallenges**](PageOfChallenges.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid request |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListChallengeOrganizers**
> ChallengeOrganizerList ListChallengeOrganizers(account.name, challenge.name)

List organizers

Lists the organizers of the challenge.

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#List organizers
api.instance <- ChallengeApi$new()
result <- api.instance$ListChallengeOrganizers(var.account.name, var.challenge.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 

### Return type

[**ChallengeOrganizerList**](ChallengeOrganizerList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListChallengeStargazers**
> PageOfUsers ListChallengeStargazers(account.name, challenge.name, limit=10, offset=0)

List stargazers

Lists the people that have starred the challenge.

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge
var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#List stargazers
api.instance <- ChallengeApi$new()
result <- api.instance$ListChallengeStargazers(var.account.name, var.challenge.name, limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfUsers**](PageOfUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListChallengeTopics**
> ArrayOfTopics ListChallengeTopics(account.name, challenge.name)

List stargazers

Lists the challenge topics.

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#List stargazers
api.instance <- ChallengeApi$new()
result <- api.instance$ListChallengeTopics(var.account.name, var.challenge.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 

### Return type

[**ArrayOfTopics**](ArrayOfTopics.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListChallenges**
> PageOfChallenges ListChallenges(limit=10, offset=0, sort=var.sort, direction=var.direction, search.terms=var.search.terms, topics=var.topics, status=var.status, platform.ids=var.platform.ids, start.date.range=var.start.date.range)

List all the challenges

Returns all the challenges

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned
var.sort <- 'sort_example' # character | Property used to sort the results that must be returned
var.direction <- 'direction_example' # character | Can be either `asc` or `desc`. Ignored without `sort` parameter.
var.search.terms <- 'search.terms_example' # character | A string of search terms used to filter the results
var.topics <- list("inner_example") # array[character] | Array of topics used to filter the results
var.status <- list(ChallengeStatus$new()) # array[ChallengeStatus] | Array of challenge status used to filter the results
var.platform.ids <- list("inner_example") # array[character] | Array of challenge platform ids used to filter the results
var.start.date.range <- DateRange$new("start_example", "end_example") # DateRange | Return challenges that start during the date range specified

#List all the challenges
api.instance <- ChallengeApi$new()
result <- api.instance$ListChallenges(limit=var.limit, offset=var.offset, sort=var.sort, direction=var.direction, search.terms=var.search.terms, topics=var.topics, status=var.status, platform.ids=var.platform.ids, start.date.range=var.start.date.range)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]
 **sort** | Enum [createdAt, updatedAt] | Property used to sort the results that must be returned | [optional] 
 **direction** | Enum [asc, desc] | Can be either &#x60;asc&#x60; or &#x60;desc&#x60;. Ignored without &#x60;sort&#x60; parameter. | [optional] 
 **search.terms** | **character**| A string of search terms used to filter the results | [optional] 
 **topics** | list( **character** )| Array of topics used to filter the results | [optional] 
 **status** | list( [**ChallengeStatus**](ChallengeStatus.md) )| Array of challenge status used to filter the results | [optional] 
 **platform.ids** | list( **character** )| Array of challenge platform ids used to filter the results | [optional] 
 **start.date.range** | [**DateRange**](.md)| Return challenges that start during the date range specified | [optional] 

### Return type

[**PageOfChallenges**](PageOfChallenges.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid request |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **UpdateChallengeReadme**
> object UpdateChallengeReadme(account.name, challenge.name, challenge.readme.update.request)

Update a challenge README

Update a challenge README

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge
var.challenge.readme.update.request <- ChallengeReadmeUpdateRequest$new("text_example") # ChallengeReadmeUpdateRequest | 

#Update a challenge README
api.instance <- ChallengeApi$new()
result <- api.instance$UpdateChallengeReadme(var.account.name, var.challenge.name, var.challenge.readme.update.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account.name** | **character**| The name of the account that owns the challenge | 
 **challenge.name** | **character**| The name of the challenge | 
 **challenge.readme.update.request** | [**ChallengeReadmeUpdateRequest**](ChallengeReadmeUpdateRequest.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid request |  -  |
| **409** | The request conflicts with current state of the target resource |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

