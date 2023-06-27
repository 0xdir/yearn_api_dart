[![pub package](https://img.shields.io/pub/v/yearn_api_dart.svg)](https://pub.dev/packages/yearn_api_dart)
[![package publisher](https://img.shields.io/pub/publisher/yearn_api_dart.svg)](https://pub.dev/packages/yearn_api_dart/publisher)

A Dart library for querying the Yearn API. 

This is a comprehensive wrapper that includes all the necessary components 
for seamless data retrieval from the [Yearn API]. The responses are in the form 
of Dart objects, allowing you to effortlessly query the data using dot notation.

[Yearn API]: https://docs.yearn.finance/vaults/yearn-api

It is multi-platform, with limited dependencies for use in mobile, desktop, or browser apps.

This community package is designed to follow the [Yearn API Documentation] as closely
as possible.

[Yearn API Documentation]: https://docs.yearn.finance/vaults/yearn-api

## Using

The easiest way to use this library is via the top-level ```Yearn``` class.

```dart
import 'package:yearn_api_dart/yearn_api_dart.dart';

void main() async {
  /// Set up the config
  Config config = Config(
    apiVersion: Constants.v1,
  );

  /// Initialize the main object
  Yearn yearn = Yearn(config);

  /// Get all vaults
  ApiResponse response = await yearn.getVaults();

  /// Get the raw response
  // print(response.body);

  /// Get a list of Vault objects
  List<Vault> vaults = (response.results);
  for (Vault vault in vaults) {
    /// Apply filter conditions.
    ///
    /// Use null safety checks.
    if (vault.apy?.netAPY != null &&

        /// Filter for APY ranges
        vault.apy!.netAPY! < 100 &&
        vault.apy!.netAPY! > 0.1 &&

        /// Filter for endorsed vaults
        vault.endorsed == true) {
      /// Query the information with dot notation
      ///
      /// We assume all fields from the API could be null. So apply the
      /// null safety checks accordingly.
      print('${vault.displayName} - '
          'TVL: ${vault.tvl?.tvl} '
          'APY:${vault.apy?.netAPY} '
          'Token Symbol:${vault.token?.symbol}'
          'Token Address:${vault.token?.address}');
    }
  }

  /// Close the connection
  yearn.close();
}

```

## What is Yearn?

[Yearn Finance] is a decentralized finance (DeFi) protocol that aims 
to optimize yield farming strategies across various DeFi platforms. 

[Yearn Finance]: https://docs.yearn.finance/getting-started/intro

It automates the process of yield generation by allocating capital 
to the most profitable opportunities in the market. 

Through its suite of products and vaults, Yearn Finance provides users with efficient 
and secure ways to earn yield on their cryptocurrency holdings while minimizing risk.

## What are Vaults?

Yearn Vaults are capital pools that automatically generate yield based on opportunities 
present in the market. Vaults benefit users by socializing gas costs, automating the yield 
generation and re-balancing process, and automatically shifting capital as opportunities arise. 

End users also do not need to have proficient knowledge of the underlying protocols 
involved or DeFi, thus the Vaults represent a passive-investing strategy.

## Getting Help

Submit an issue on [github].

[github]: https://github.com/0xdir/yearn_api_dart

## How to contribute

All feedback and suggestions for improvements are welcome:

1. Open a discussion on [github]
2. Discuss proposed changes
3. Submit a PR (optional)

[github]: https://github.com/0xdir/yearn_api_dart

## Support my work

This package is possible thanks to the people and companies
who donate money, services or time to keep the project running.

If you're interested in becoming a Sponsor, Backer or Contributor
to expand the project, reach out to me on [github].

[github]: https://github.com/0xdir/yearn_api_dart

Or buy my coffee at `0xdir.near`.