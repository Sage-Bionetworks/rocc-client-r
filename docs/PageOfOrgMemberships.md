# openapi::PageOfOrgMemberships

A page of org memberships

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **integer** | Index of the first result that must be returned | 
**limit** | **integer** | Maximum number of results returned | 
**paging** | [**ResponsePageMetadataPaging**](ResponsePageMetadata_paging.md) |  | 
**totalResults** | **integer** | Total number of results in the result set | 
**orgMemberships** | [**array[OrgMembership]**](OrgMembership.md) | An array of org memberships | 


