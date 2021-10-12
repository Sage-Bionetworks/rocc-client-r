# OrganizationApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateOrganization**](OrganizationApi.md#CreateOrganization) | **POST** /organizations | Create an organization
[**DeleteAllOrganizations**](OrganizationApi.md#DeleteAllOrganizations) | **DELETE** /organizations | Delete all organizations
[**DeleteOrganization**](OrganizationApi.md#DeleteOrganization) | **DELETE** /organizations/{organizationId} | Delete an organization
[**GetOrganization**](OrganizationApi.md#GetOrganization) | **GET** /organizations/{organizationId} | Get an organization
[**ListOrganizations**](OrganizationApi.md#ListOrganizations) | **GET** /organizations | Get all organizations


# **CreateOrganization**
> OrganizationCreateResponse CreateOrganization(organization.create.request)

Create an organization

Create an organization with the specified account name

### Example
```R
library(openapi)

var.organization.create.request <- OrganizationCreateRequest$new("login_example", "email_example", "name_example", "avatarUrl_example", "websiteUrl_example", "description_example") # OrganizationCreateRequest | 

#Create an organization
api.instance <- OrganizationApi$new()
result <- api.instance$CreateOrganization(var.organization.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.create.request** | [**OrganizationCreateRequest**](OrganizationCreateRequest.md)|  | 

### Return type

[**OrganizationCreateResponse**](OrganizationCreateResponse.md)

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

# **DeleteAllOrganizations**
> object DeleteAllOrganizations()

Delete all organizations

Delete all organizations

### Example
```R
library(openapi)


#Delete all organizations
api.instance <- OrganizationApi$new()
result <- api.instance$DeleteAllOrganizations()
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

# **DeleteOrganization**
> object DeleteOrganization(organization.id)

Delete an organization

Deletes the organization specified

### Example
```R
library(openapi)

var.organization.id <- 'organization.id_example' # character | The unique identifier of the organization, either the user ID or account name

#Delete an organization
api.instance <- OrganizationApi$new()
result <- api.instance$DeleteOrganization(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | **character**| The unique identifier of the organization, either the user ID or account name | 

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

# **GetOrganization**
> Organization GetOrganization(organization.id)

Get an organization

Returns the organization specified

### Example
```R
library(openapi)

var.organization.id <- 'organization.id_example' # character | The unique identifier of the organization, either the user ID or account name

#Get an organization
api.instance <- OrganizationApi$new()
result <- api.instance$GetOrganization(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | **character**| The unique identifier of the organization, either the user ID or account name | 

### Return type

[**Organization**](Organization.md)

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

# **ListOrganizations**
> PageOfOrganizations ListOrganizations(limit=10, offset=0)

Get all organizations

Returns the organizations

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#Get all organizations
api.instance <- OrganizationApi$new()
result <- api.instance$ListOrganizations(limit=var.limit, offset=var.offset)
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

