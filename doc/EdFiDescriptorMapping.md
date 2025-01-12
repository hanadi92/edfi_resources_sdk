# edfi_resources_sdk.model.EdFiDescriptorMapping

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**mappedNamespace** | **String** | The namespace of the descriptor value to which the from descriptor value is mapped to. | 
**mappedValue** | **String** | The descriptor value to which the from descriptor value is being mapped to. | 
**namespace** | **String** | The namespace of the descriptor value that is being mapped to another value. | 
**value** | **String** | The descriptor value that is being mapped to another value. | 
**modelEntities** | [**List<EdFiDescriptorMappingModelEntity>**](EdFiDescriptorMappingModelEntity.md) | An unordered collection of descriptorMappingModelEntities. The resources for which the descriptor mapping applies. If empty, the mapping is assumed to be applicable to all resources in which the descriptor appears. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


