// import 'package:web3dart/web3dart.dart';

class AddressUtils {
  static String getDidAddress(String iss) {
    return iss.split(':').last;
  }

  static String getDidChainId(String iss) {
    final parts = iss.split(':');
    if (parts.length > 3) {
      return parts[3];
    } else {
      return parts[1];
    }
  }

  static String getNamespaceDidChainId(String iss) {
    return iss.substring(iss.indexOf(RegExp(r':')) + 1);
  }
}

extension AddressUtilsExtension on String {
  String toEIP55() {
    return this;
    // return EthereumAddress.fromHex(this).hexEip55;
  }
}
