# edfi_resources_sdk.model.EdFiStudentAssessmentPeriod

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assessmentPeriodDescriptor** | **String** | The period of time in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year). | 
**beginDate** | [**DateTime**](DateTime.md) | The first date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The last date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


