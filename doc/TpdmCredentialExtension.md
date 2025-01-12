# edfi_resources_sdk.model.TpdmCredentialExtension

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificationRouteDescriptor** | **String** | The process, program, or pathway used to obtain certification. | [optional] 
**credentialStatusDescriptor** | **String** | The current status of the credential (e.g., active, suspended, etc.). | [optional] 
**educatorRoleDescriptor** | **String** | The specific roles or positions within an organization that the credential is intended to authorize (e.g., Principal, Reading Specialist), typically associated with service and administrative certifications. | [optional] 
**boardCertificationIndicator** | **bool** | Indicator that the credential was granted under the authority of a national Board Certification. | [optional] 
**certificationTitle** | **String** | The title of the certification obtained by the educator. | [optional] 
**credentialStatusDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the credential status was effective. | [optional] 
**personReference** | [**EdFiPersonReference**](EdFiPersonReference.md) |  | [optional] 
**studentAcademicRecords** | [**List<TpdmCredentialStudentAcademicRecord>**](TpdmCredentialStudentAcademicRecord.md) | An unordered collection of credentialStudentAcademicRecords. Reference to the person's Student Academic Records for the school(s) with which the Credential is associated. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


