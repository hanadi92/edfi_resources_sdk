# edfi_resources_sdk.model.EdFiLearningStandard

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**academicSubjects** | [**List<EdFiLearningStandardAcademicSubject>**](EdFiLearningStandardAcademicSubject.md) | An unordered collection of learningStandardAcademicSubjects. Subject area for the learning standard. | [default to const []]
**gradeLevels** | [**List<EdFiLearningStandardGradeLevel>**](EdFiLearningStandardGradeLevel.md) | An unordered collection of learningStandardGradeLevels. The grade levels for the specific learning standard. | [default to const []]
**learningStandardId** | **String** | The identifier for the specific learning standard (e.g., 111.15.3.1.A). | 
**parentLearningStandardReference** | [**EdFiLearningStandardReference**](EdFiLearningStandardReference.md) |  | [optional] 
**contentStandard** | [**EdFiLearningStandardContentStandard**](EdFiLearningStandardContentStandard.md) |  | 
**courseTitle** | **String** | The official course title with which this learning standard is associated. | [optional] 
**description** | **String** | The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\". | 
**identificationCodes** | [**List<EdFiLearningStandardIdentificationCode>**](EdFiLearningStandardIdentificationCode.md) | An unordered collection of learningStandardIdentificationCodes. A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a learning standard. | [optional] [default to const []]
**learningStandardCategoryDescriptor** | **String** | An additional classification of the type of a specific learning standard. | [optional] 
**learningStandardItemCode** | **String** | A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique). | [optional] 
**learningStandardScopeDescriptor** | **String** | Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body. | [optional] 
**namespace** | **String** | The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control. | 
**successCriteria** | **String** | One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard. | [optional] 
**uri** | **String** | An unambiguous reference to the statement using a network-resolvable URI. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


