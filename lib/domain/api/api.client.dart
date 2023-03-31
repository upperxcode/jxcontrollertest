import 'package:jxcontroller/jxcontroller.dart';
import 'package:jxcontrollertest/domain/api/endpoints.dart';

abstract class ApiClient {
  static JxHttpClient client() {
    return UnoClient(Endpoints(), {
      'apikey':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ6anFyYXF2cWZpa3pndHJ3Y3poIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY4NjQ1MTMsImV4cCI6MTk5MjQ0MDUxM30.8Qz1Nl0etpGWx2pPRsuLi7W6W8djrSOvA-LWS-Quthc',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ6anFyYXF2cWZpa3pndHJ3Y3poIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY4NjQ1MTMsImV4cCI6MTk5MjQ0MDUxM30.8Qz1Nl0etpGWx2pPRsuLi7W6W8djrSOvA-LWS-Quthc',
    });
  }
}
