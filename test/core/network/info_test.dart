import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tddclean/core/network/info.dart';
import 'info_test.mocks.dart';

@GenerateNiceMocks([MockSpec<InternetConnection>()])
void main() {
  late MockInternetConnection mockInternetConnection;
  late NetworkInfoImpl networkInfoImpl;
  setUp(() {
    mockInternetConnection = MockInternetConnection();
    networkInfoImpl = NetworkInfoImpl(mockInternetConnection);
  });

  test("should return true when network is connected", () async {
    when(mockInternetConnection.hasInternetAccess)
        .thenAnswer((realInvocation) async {
      return true;
    });
    var result = await networkInfoImpl.isConnected;
    verify(mockInternetConnection.hasInternetAccess).called(1);
    expect(result, true);
    verifyNoMoreInteractions(mockInternetConnection);
  });
}
