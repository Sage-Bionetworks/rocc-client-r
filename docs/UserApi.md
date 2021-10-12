# UserApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateUser**](UserApi.md#CreateUser) | **POST** /users | Create a user
[**DeleteAllUsers**](UserApi.md#DeleteAllUsers) | **DELETE** /users | Delete all users
[**DeleteUser**](UserApi.md#DeleteUser) | **DELETE** /users/{userId} | Delete a user
[**GetAuthenticatedUser**](UserApi.md#GetAuthenticatedUser) | **GET** /user | Get the authenticated user
[**GetUser**](UserApi.md#GetUser) | **GET** /users/{userId} | Get a user
[**IsStarredChallenge**](UserApi.md#IsStarredChallenge) | **GET** /user/starred/{accountName}/{challengeName} | Check if a challenge is starred by the authenticated user
[**ListAuthenticatedUserOrganizations**](UserApi.md#ListAuthenticatedUserOrganizations) | **GET** /user/orgs | List organizations of the authenticated user
[**ListStarredChallenges**](UserApi.md#ListStarredChallenges) | **GET** /user/starred | List challenges starred by the authenticated user
[**ListUserOrganizations**](UserApi.md#ListUserOrganizations) | **GET** /users/{userId}/orgs | List orgsnizations of a user
[**ListUserStarredChallenges**](UserApi.md#ListUserStarredChallenges) | **GET** /users/{userId}/starred | List challenges starred by a user
[**ListUsers**](UserApi.md#ListUsers) | **GET** /users | Get all users
[**StarChallenge**](UserApi.md#StarChallenge) | **PUT** /user/starred/{accountName}/{challengeName} | Star a challenge for the authenticated user
[**UnstarChallenge**](UserApi.md#UnstarChallenge) | **DELETE** /user/starred/{accountName}/{challengeName} | Unstar a challenge for the authenticated user


# **CreateUser**
> UserCreateResponse CreateUser(user.create.request)

Create a user

Create a user with the specified account name

### Example
```R
library(openapi)

var.user.create.request <- UserCreateRequest$new("login_example", "email_example", "password_example", "name_example", "avatarUrl_example", "bio_example") # UserCreateRequest | 

#Create a user
api.instance <- UserApi$new()
result <- api.instance$CreateUser(var.user.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.create.request** | [**UserCreateRequest**](UserCreateRequest.md)|  | 

### Return type

[**UserCreateResponse**](UserCreateResponse.md)

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

# **DeleteAllUsers**
> object DeleteAllUsers()

Delete all users

Delete all users

### Example
```R
library(openapi)


#Delete all users
api.instance <- UserApi$new()
result <- api.instance$DeleteAllUsers()
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
| **400** | Invalid request |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **DeleteUser**
> object DeleteUser(user.id)

Delete a user

Deletes the user specified

### Example
```R
library(openapi)

var.user.id <- 'user.id_example' # character | The unique identifier of the user, either the user account ID or login

#Delete a user
api.instance <- UserApi$new()
result <- api.instance$DeleteUser(var.user.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.id** | **character**| The unique identifier of the user, either the user account ID or login | 

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

# **GetAuthenticatedUser**
> User GetAuthenticatedUser()

Get the authenticated user

Get the authenticated user

### Example
```R
library(openapi)


#Get the authenticated user
api.instance <- UserApi$new()
# Configure HTTP basic authorization: BearerAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetAuthenticatedUser()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid request |  -  |
| **401** | Unauthorized |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **GetUser**
> User GetUser(user.id)

Get a user

Returns the user specified

### Example
```R
library(openapi)

var.user.id <- 'user.id_example' # character | The unique identifier of the user, either the user account ID or login

#Get a user
api.instance <- UserApi$new()
result <- api.instance$GetUser(var.user.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.id** | **character**| The unique identifier of the user, either the user account ID or login | 

### Return type

[**User**](User.md)

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

# **IsStarredChallenge**
> object IsStarredChallenge(account.name, challenge.name)

Check if a challenge is starred by the authenticated user

Check if a challenge is starred by the authenticated user

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#Check if a challenge is starred by the authenticated user
api.instance <- UserApi$new()
# Configure HTTP basic authorization: BearerAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$IsStarredChallenge(var.account.name, var.challenge.name)
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

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Response if this challenge is starred by you |  -  |
| **401** | Unauthorized |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListAuthenticatedUserOrganizations**
> PageOfOrganizations ListAuthenticatedUserOrganizations(limit=10, offset=0)

List organizations of the authenticated user

Lists organizations the authenticated user belongs to.

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#List organizations of the authenticated user
api.instance <- UserApi$new()
# Configure HTTP basic authorization: BearerAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListAuthenticatedUserOrganizations(limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfOrganizations**](PageOfOrganizations.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListStarredChallenges**
> PageOfChallenges ListStarredChallenges(limit=10, offset=0)

List challenges starred by the authenticated user

Lists challenges the authenticated user has starred.

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#List challenges starred by the authenticated user
api.instance <- UserApi$new()
# Configure HTTP basic authorization: BearerAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$ListStarredChallenges(limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfChallenges**](PageOfChallenges.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListUserOrganizations**
> PageOfOrganizations ListUserOrganizations(user.id, limit=10, offset=0)

List orgsnizations of a user

Lists organizations a user belongs to.

### Example
```R
library(openapi)

var.user.id <- 'user.id_example' # character | The unique identifier of the user, either the user account ID or login
var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#List orgsnizations of a user
api.instance <- UserApi$new()
result <- api.instance$ListUserOrganizations(var.user.id, limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.id** | **character**| The unique identifier of the user, either the user account ID or login | 
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfOrganizations**](PageOfOrganizations.md)

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

# **ListUserStarredChallenges**
> PageOfChallenges ListUserStarredChallenges(user.id, limit=10, offset=0)

List challenges starred by a user

Lists challenges a user has starred.

### Example
```R
library(openapi)

var.user.id <- 'user.id_example' # character | The unique identifier of the user, either the user account ID or login
var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#List challenges starred by a user
api.instance <- UserApi$new()
result <- api.instance$ListUserStarredChallenges(var.user.id, limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.id** | **character**| The unique identifier of the user, either the user account ID or login | 
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
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListUsers**
> PageOfUsers ListUsers(limit=10, offset=0)

Get all users

Returns the users

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#Get all users
api.instance <- UserApi$new()
result <- api.instance$ListUsers(limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
| **400** | Invalid request |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **StarChallenge**
> object StarChallenge(account.name, challenge.name)

Star a challenge for the authenticated user

Star a challenge for the authenticated user

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#Star a challenge for the authenticated user
api.instance <- UserApi$new()
# Configure HTTP basic authorization: BearerAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$StarChallenge(var.account.name, var.challenge.name)
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

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid request |  -  |
| **401** | Unauthorized |  -  |
| **409** | The request conflicts with current state of the target resource |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **UnstarChallenge**
> object UnstarChallenge(account.name, challenge.name)

Unstar a challenge for the authenticated user

Unstar a challenge for the authenticated user

### Example
```R
library(openapi)

var.account.name <- 'account.name_example' # character | The name of the account that owns the challenge
var.challenge.name <- 'challenge.name_example' # character | The name of the challenge

#Unstar a challenge for the authenticated user
api.instance <- UserApi$new()
# Configure HTTP basic authorization: BearerAuth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$UnstarChallenge(var.account.name, var.challenge.name)
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

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **401** | Unauthorized |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

