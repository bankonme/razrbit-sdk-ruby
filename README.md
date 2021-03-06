<img src="http://cdn.luxstack.com/assets/razrbit-github-banner-dark-beta.png" style="width:100%"/>

Official SDKs: 
[Android](https://github.com/LUXSTACK/razrbit-sdk-android) | 
[iOS](https://github.com/LUXSTACK/razrbit-sdk-ios) | 
[Javascript](https://github.com/LUXSTACK/razrbit-sdk-javascript) | 
[PHP](https://github.com/LUXSTACK/razrbit-sdk-php) | 
Ruby

**[Razrbit](https://luxstack.com) Bitcoin Platform and SDKs — build, test and scale bitcoin apps faster with Razrbit. Plug in our powerful SDKs to supercharge your bitcoin toolbox.**

# Razrbit SDK for Ruby (Beta)

## Installation

```
gem install razrbit
```

## HTTP Examples

### Wallet

```ruby
require 'razrbit'

wallet = Razrbit::Wallet.new(app_id: '', app_secret: '')

response = wallet.create_new_address

response = wallet.send_amount(from_address_private_key: '',
                              to_address: '',
                              amount: 0)

response = wallet.balance_from_address(address: '')

case response
when Net::HTTPSuccess then
  response
else
  # handle error
end
```

### Explorer

```ruby
require 'razrbit'

explorer = Razrbit::Explorer.new(app_id: '', app_secret: '')

response = explorer.block(block_hash: '')
response = explorer.transaction(transaction_hash: '')
response = explorer.address(address: '')
response = explorer.address_unspent_outputs(address: '')

case response
when Net::HTTPSuccess then
  response
else
  # handle error
end
```

### Network

```ruby
require 'razrbit'

network = Razrbit::Network.new(app_id: '', app_secret: '')

response = network.get_difficulty
response = network.push_transaction(transaction: '')

case response
when Net::HTTPSuccess then
  response
else
  # handle error
end
```

### Markets

```ruby
require 'razrbit'

markets = Razrbit::Markets.new(app_id: '', app_secret: '')

response = markets.price(currency_code: 'USD')
response = markets.day_price(currency_code: 'USD')
response = markets.historical_price(currency_code: 'USD',
                                    date: '2014-08-14')


case response
when Net::HTTPSuccess then
  response
else
  # handle error
end
```

### Webhook

```ruby
require 'razrbit'

notifications = Razrbit::Notifications.new(app_id: '', app_secret: '')

response = notifications.address(address: '',
                           email: 'example@example.com')

response = notifications.block(block_hash: '',
                          email: 'example@example.com')

response = notifications.transaction(transaction_hash: '',
                                email: 'example@example.com')

case response
when Net::HTTPSuccess then
  response
else
  # handle error
end
```

## API

### Wallet

```
response = wallet.create_new_address
```
Creates a new bitcoin address in your wallet

```
response = wallet.send_amount(from_address_private_key: '', to_address: '', satoshi_amount: 0)
```
Sends bitcoin from one of your addresses to the destination address.

```
response = wallet.balance_from_address(address: '')
```
Returns the balance of the given address in satoshis.


### Explorer

```
response = explorer.block(block_hash: '')
```
Retrieve details about a given block

```
response = explorer.transaction(transaction_hash: '')
```
Retrieve details about a given transaction

```
response = explorer.address(address: '')
```
Retrieve details about a given address

```
response = explorer.address_unspent_outputs(address: '')
```
Returns the list of unspent outputs for a given address


### Network

```
response = network.get_difficulty
```
Retrieve the current network difficulty

```
response = network.push_transaction(transaction: '')
```
Push a transaction on the network


### Markets

`currencyCode` is a valid ISO 4217 code such as `USD` or `EUR`.

```
response = markets.price(currency_code: 'USD')
```
Returns the current bitcoin price

```
response = markets.day_price(currency_code: 'USD')
```
Returns the day price

```
response = markets.historical_price(currency_code: 'USD', date: '2014-08-14')
```
Returns the historical price at the given date.
`date` must be a date in the `yyyy-mm-dd` format.

### Notifications

```
response = notifications.address(address: '', email: 'example@example.com')
```
Setup a notification email for a given address

```
response = notifications.blocks(block_hash: '', email: 'example@example.com')
```
Setup a notification email for a given block

```
response = notifications.transactions(transaction_hash: '', email: 'example@example.com')
```
Setup a notification email for a given transaction

# Support

Feel free to request a feature and make suggestions for our [product team](mailto:team@luxstack.com).

* [GitHub Issues](https://github.com/luxstack/razrbit-sdk-ruby/issues)

# License

**Code released under [the MIT license](https://github.com/LUXSTACK/razrbit-sdk-ruby/blob/master/LICENSE).**

Copyright 2012-2014 LUXSTACK Inc. Razrbit is a trademark maintained by LUXSTACK Inc.

# Razrbit Bitcoin SDKs for other platforms

* [Android](https://github.com/LUXSTACK/razrbit-sdk-android)
* [iOS](https://github.com/LUXSTACK/razrbit-sdk-ios)
* [Javascript](https://github.com/LUXSTACK/razrbit-sdk-javascript)
* [PHP](https://github.com/LUXSTACK/razrbit-sdk-php)
* Ruby