# edfi_resources_sdk.model.EdFiAssessmentContentStandard

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**publicationStatusDescriptor** | **String** | The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown). | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | The beginning of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The end of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**publicationDate** | [**DateTime**](DateTime.md) | The date on which this content was first published. | [optional] 
**publicationYear** | **int** | The year at which this content was first published. | [optional] 
**title** | **String** | The name of the content standard, for example Common Core. | 
**uri** | **String** | An unambiguous reference to the standards using a network-resolvable URI. | [optional] 
**version** | **String** | The version identifier for the content. | [optional] 
**mandatingEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**authors** | [**List<EdFiAssessmentContentStandardAuthor>**](EdFiAssessmentContentStandardAuthor.md) | An unordered collection of assessmentContentStandardAuthors. The person or organization chiefly responsible for the intellectual content of the standard. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


