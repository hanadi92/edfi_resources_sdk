# edfi_resources_sdk.model.EdFiStudentTransportationStudentBusDetails

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**busRouteDescriptor** | **String** | Identifies the specific route taken by a bus for student transportation. | 
**busNumber** | **String** | The unique identifier assigned to the bus used for transporting the student. | 
**mileage** | **double** | The distance, typically measured in miles, that a student was transported along the route of the bus during a single trip. | [optional] 
**travelDayofWeeks** | [**List<EdFiStudentTransportationStudentBusDetailsTravelDayofWeek>**](EdFiStudentTransportationStudentBusDetailsTravelDayofWeek.md) | An unordered collection of studentTransportationStudentBusDetailsTravelDayofWeeks. Specifies the day(s) of the week on which student transportation occurs. | [optional] [default to const []]
**travelDirections** | [**List<EdFiStudentTransportationStudentBusDetailsTravelDirection>**](EdFiStudentTransportationStudentBusDetailsTravelDirection.md) | An unordered collection of studentTransportationStudentBusDetailsTravelDirections. Indicates the direction of travel for the student transportation route (e.g., to school, from school). | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


