# OrgMembershipApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateOrgMembership**](OrgMembershipApi.md#CreateOrgMembership) | **POST** /orgMemberships | Create an org membership
[**DeleteAllOrgMemberships**](OrgMembershipApi.md#DeleteAllOrgMemberships) | **DELETE** /orgMemberships | Delete all org memberships
[**DeleteOrgMembership**](OrgMembershipApi.md#DeleteOrgMembership) | **DELETE** /orgMemberships/{orgMembershipId} | Delete an org membership
[**GetOrgMembership**](OrgMembershipApi.md#GetOrgMembership) | **GET** /orgMemberships/{orgMembershipId} | Get an org membership
[**ListOrgMemberships**](OrgMembershipApi.md#ListOrgMemberships) | **GET** /orgMemberships | List all the org memberships


# **CreateOrgMembership**
> OrgMembershipCreateResponse CreateOrgMembership(org.membership.create.request)

Create an org membership

Create an org membership

### Example
```R
library(openapi)

var.org.membership.create.request <- OrgMembershipCreateRequest$new("active", "admin", "organizationId_example", "userId_example") # OrgMembershipCreateRequest | 

#Create an org membership
api.instance <- OrgMembershipApi$new()
result <- api.instance$CreateOrgMembership(var.org.membership.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org.membership.create.request** | [**OrgMembershipCreateRequest**](OrgMembershipCreateRequest.md)|  | 

### Return type

[**OrgMembershipCreateResponse**](OrgMembershipCreateResponse.md)

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

# **DeleteAllOrgMemberships**
> object DeleteAllOrgMemberships()

Delete all org memberships

Delete all org memberships

### Example
```R
library(openapi)


#Delete all org memberships
api.instance <- OrgMembershipApi$new()
result <- api.instance$DeleteAllOrgMemberships()
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

# **DeleteOrgMembership**
> object DeleteOrgMembership(org.membership.id)

Delete an org membership

Deletes the org membership specified

### Example
```R
library(openapi)

var.org.membership.id <- 'org.membership.id_example' # character | The unique identifier of the org membership

#Delete an org membership
api.instance <- OrgMembershipApi$new()
result <- api.instance$DeleteOrgMembership(var.org.membership.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org.membership.id** | **character**| The unique identifier of the org membership | 

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

# **GetOrgMembership**
> OrgMembership GetOrgMembership(org.membership.id)

Get an org membership

Returns the org membership specified

### Example
```R
library(openapi)

var.org.membership.id <- 'org.membership.id_example' # character | The unique identifier of the org membership

#Get an org membership
api.instance <- OrgMembershipApi$new()
result <- api.instance$GetOrgMembership(var.org.membership.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org.membership.id** | **character**| The unique identifier of the org membership | 

### Return type

[**OrgMembership**](OrgMembership.md)

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

# **ListOrgMemberships**
> PageOfOrgMemberships ListOrgMemberships(limit=10, offset=0, org.id=var.org.id, user.id=var.user.id)

List all the org memberships

Returns the org memberships

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned
var.org.id <- 'org.id_example' # character | An organization identifier used to filter the results
var.user.id <- 'user.id_example' # character | A user identifier used to filter the results

#List all the org memberships
api.instance <- OrgMembershipApi$new()
result <- api.instance$ListOrgMemberships(limit=var.limit, offset=var.offset, org.id=var.org.id, user.id=var.user.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]
 **org.id** | **character**| An organization identifier used to filter the results | [optional] 
 **user.id** | **character**| A user identifier used to filter the results | [optional] 

### Return type

[**PageOfOrgMemberships**](PageOfOrgMemberships.md)

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

