# edfi_resources_sdk.model.EdFiStudentHealthRequiredImmunization

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**immunizationTypeDescriptor** | **String** | An indication of the type of immunization that the student has received. | 
**medicalExemption** | **String** | The medical condition identified by a physician that contraindicates the vaccine. | [optional] 
**medicalExemptionDate** | [**DateTime**](DateTime.md) | The year, month, and day of the medical exemption by a physician. | [optional] 
**dates** | [**List<EdFiStudentHealthRequiredImmunizationDate>**](EdFiStudentHealthRequiredImmunizationDate.md) | An unordered collection of studentHealthRequiredImmunizationDates. The year, month and day of the related required immunization. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


