# edfi_resources_sdk.model.EdFiEducationContent

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**contentIdentifier** | **String** | A unique identifier for the education content. | 
**learningStandardReference** | [**EdFiLearningStandardReference**](EdFiLearningStandardReference.md) |  | [optional] 
**additionalAuthorsIndicator** | **bool** | Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation \"et al\". | [optional] 
**appropriateGradeLevels** | [**List<EdFiEducationContentAppropriateGradeLevel>**](EdFiEducationContentAppropriateGradeLevel.md) | An unordered collection of educationContentAppropriateGradeLevels. Grade levels for which this education content is applicable. If omitted, considered generally applicable. | [optional] [default to const []]
**appropriateSexes** | [**List<EdFiEducationContentAppropriateSex>**](EdFiEducationContentAppropriateSex.md) | An unordered collection of educationContentAppropriateSexes. Sexes for which this education content is applicable. If omitted, considered generally applicable. | [optional] [default to const []]
**authors** | [**List<EdFiEducationContentAuthor>**](EdFiEducationContentAuthor.md) | An unordered collection of educationContentAuthors. The individual credited with the creation of the resource. | [optional] [default to const []]
**contentClassDescriptor** | **String** | The predominate type or kind characterizing the learning resource. | [optional] 
**cost** | **double** | An amount that has to be paid or spent to buy or obtain the education content. | [optional] 
**costRateDescriptor** | **String** | The rate by which the cost applies. | [optional] 
**derivativeSourceEducationContents** | [**List<EdFiEducationContentDerivativeSourceEducationContent>**](EdFiEducationContentDerivativeSourceEducationContent.md) | An unordered collection of educationContentDerivativeSourceEducationContents. Relates the education content source to the education content. | [optional] [default to const []]
**derivativeSourceLearningResourceMetadataURIs** | [**List<EdFiEducationContentDerivativeSourceLearningResourceMetadataURI>**](EdFiEducationContentDerivativeSourceLearningResourceMetadataURI.md) | An unordered collection of educationContentDerivativeSourceLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] [default to const []]
**derivativeSourceURIs** | [**List<EdFiEducationContentDerivativeSourceURI>**](EdFiEducationContentDerivativeSourceURI.md) | An unordered collection of educationContentDerivativeSourceURIs. The URI (typical a URL) pointing to an education content item. | [optional] [default to const []]
**description** | **String** | An extended written representation of the education content. | [optional] 
**interactivityStyleDescriptor** | **String** | The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. | [optional] 
**languages** | [**List<EdFiEducationContentLanguage>**](EdFiEducationContentLanguage.md) | An unordered collection of educationContentLanguages. An indication of the languages in which the Education Content is designed. | [optional] [default to const []]
**learningResourceMetadataURI** | **String** | The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] 
**namespace** | **String** | Namespace for the education content. | 
**publicationDate** | [**DateTime**](DateTime.md) | The date on which this content was first published. | [optional] 
**publicationYear** | **int** | The year at which this content was first published. | [optional] 
**publisher** | **String** | The organization credited with publishing the resource. | [optional] 
**shortDescription** | **String** | A short description or name of the entity. | [optional] 
**timeRequired** | **String** | Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes. | [optional] 
**useRightsURL** | **String** | The URL where the owner specifies permissions for using the resource. | [optional] 
**version** | **String** | The version identifier for the content. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


