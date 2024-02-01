import 'package:flutter/material.dart';
import 'package:ui1/icons/custom_icons_icons.dart';
import 'package:ui1/screen4/data/1.dart';

List<Instances> geter() {
  Instances domain = Instances();
  domain.title = 'Custom domain name';
  domain.subtitle =
      'Get your own custom domain and build\nyour brand on the internet';
  domain.icon = const Icon(
    CustomIcons.globe,
    color: Colors.blue,
  );

  Instances verification = Instances();
  verification.title = 'Verified seller badge';
  verification.subtitle =
      'Get green verified badge under your\nstore name build trust';
  verification.icon = const Icon(
    CustomIcons.verified,
    color: Colors.blue,
  );

  Instances computer = Instances();
  computer.title = 'Dukaan for PC';
  computer.subtitle =
      'Access all the exclusive premium\nfeatures on Dukaan for PC';
  computer.icon = const Icon(
    CustomIcons.computer,
    color: Colors.blue,
  );

  Instances transfer = Instances();
  transfer.title = 'Priority support';
  transfer.subtitle =
      'Get your questions resolved with our\npriority customer support';
  transfer.icon = const Icon(
    CustomIcons.headset,
    color: Colors.blue,
  );

  return [domain, verification, computer, transfer];
}

List<Item> items = [
  Item(
      title: 'What types of businesses can use Dukaan\nPremium?',
      body:
          'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\n platform for you.'),
  Item(
      title: 'What types of businesses can use Dukaan\nPremium?',
      body:
          'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\n platform for you.'),
  Item(
      title: 'What types of businesses can use Dukaan\nPremium?',
      body:
          'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\n platform for you.'),
  Item(
      title: 'What types of businesses can use Dukaan\nPremium?',
      body:
          'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\n platform for you.'),
  Item(
      title: 'What types of businesses can use Dukaan\nPremium?',
      body:
          'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\n platform for you.'),
  Item(
      title: 'What types of businesses can use Dukaan\nPremium?',
      body:
          'Dukaan caters to a wide variety of sellers.Be it a\nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online-\n platform for you.')
];
