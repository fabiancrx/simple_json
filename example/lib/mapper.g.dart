// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated and consumed by 'simple_json' 

import 'package:simple_json_mapper/simple_json_mapper.dart';
import 'package:simple_json_example/product.dart';
import 'package:simple_json_example/account.dart';
import 'package:simple_json_example/test.dart';
import 'package:simple_json_example/converters/special_datetime.dart';

final _productMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => Product(
    name: mapper.applyFromJsonConverter(json['name']),
    type: mapper.applyFromJsonConverter(ProductType.values.firstWhere(
        (item) => item.toString().split('.')[1].toLowerCase() == json['type']?.toLowerCase(),
        orElse: () => null)),
    expiry: mapper.applyFromJsonConverter(json['expiry']),
    sizes: (json['sizes'] as List)?.cast<double>()?.map((item) => mapper.applyFromJsonConverter<double>(item))?.toList(),
    tests: (json['tests'] as List)?.cast<Map<String, dynamic>>()?.map((item) => mapper.deserialize<Test>(item))?.toList(),
    attributes: (json['attributes'] as Map<String, dynamic>)?.cast<String, String>(),
    parent: mapper.deserialize<Product>(json['parent'] as Map<String, dynamic>),
  ),
  (CustomJsonMapper mapper, Product instance) => <String, dynamic>{
    'name': mapper.applyFromInstanceConverter(instance.name),
    'type': mapper.applyFromInstanceConverter(instance.type.toString().split('.')[1]),
    'expiry': mapper.applyFromInstanceConverter(instance.expiry),
    'sizes': mapper.applyFromInstanceConverter(instance.sizes),
    'tests': instance.tests?.map((item) => mapper.serializeToMap(item))?.toList(),
    'attributes': mapper.applyFromInstanceConverter(instance.attributes),
    'parent': mapper.serializeToMap(instance.parent),
  },
);


final _accountMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => Account(
    id: mapper.applyFromJsonConverter(json['id']),
    type: mapper.applyFromJsonConverter(AccountType.values.firstWhere(
        (item) => ({0: 25, 1: 10}[item.index] ?? item.index) == json['type'],
        orElse: () => null)),
    name: mapper.applyFromJsonConverter(json['name']),
    number: mapper.applyFromJsonConverter(json['number']),
    amount: mapper.applyFromJsonConverter(json['amount']),
    transactionCount: mapper.applyFromJsonConverter(json['tranCount']) ?? 11,
    isActive: mapper.applyFromJsonConverter(json['isActive']),
    product: mapper.deserialize<Product>(json['product'] as Map<String, dynamic>),
    closedDate: mapper.applyFromJsonConverter(json['closedDate'], SpecialDateTimeConverter(true)),
    openDate: mapper.applyFromJsonConverter(json['openingDate']),
  ),
  (CustomJsonMapper mapper, Account instance) => <String, dynamic>{
    'id': mapper.applyFromInstanceConverter(instance.id),
    'type': mapper.applyFromInstanceConverter(({0: 25, 1: 10}[instance.type.index] ?? instance.type.index)),
    'name': mapper.applyFromInstanceConverter(instance.name),
    'number': mapper.applyFromInstanceConverter(instance.number),
    'amount': mapper.applyFromInstanceConverter(instance.amount),
    'tranCount': mapper.applyFromInstanceConverter(instance.transactionCount ?? 11),
    'isActive': mapper.applyFromInstanceConverter(instance.isActive),
    'product': mapper.serializeToMap(instance.product),
    'closedDate': mapper.applyFromInstanceConverter(instance.closedDate, SpecialDateTimeConverter(true)),
    'openingDate': mapper.applyFromInstanceConverter(instance.openDate),
  },
);



final _testMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => Test(
    name: mapper.applyFromJsonConverter(json['name']),
    nestedTest: mapper.deserialize<NestedTest>(json['nestedTest'] as Map<String, dynamic>),
  ),
  (CustomJsonMapper mapper, Test instance) => <String, dynamic>{
    'name': mapper.applyFromInstanceConverter(instance.name),
    'nestedTest': mapper.serializeToMap(instance.nestedTest),
  },
);



final _nestedtestMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => NestedTest(
    ze: mapper.applyFromJsonConverter(json['ze']),
  ),
  (CustomJsonMapper mapper, NestedTest instance) => <String, dynamic>{
    'ze': mapper.applyFromInstanceConverter(instance.ze),
  },
);

void init() {
  JsonMapper.register(_productMapper);
  JsonMapper.register(_accountMapper);
  JsonMapper.register(_testMapper);
  JsonMapper.register(_nestedtestMapper); 

  JsonMapper.registerListCast((value) => value?.cast<Product>()?.toList());
  JsonMapper.registerListCast((value) => value?.cast<Account>()?.toList());
  JsonMapper.registerListCast((value) => value?.cast<ProductType>()?.toList());
  JsonMapper.registerListCast((value) => value?.cast<Test>()?.toList());
  JsonMapper.registerListCast((value) => value?.cast<AccountType>()?.toList());
  JsonMapper.registerListCast((value) => value?.cast<NestedTest>()?.toList());
}
    