// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoModel _$CryptoModelFromJson(Map<String, dynamic> json) => CryptoModel(
      symbol: json['symbol'] as String?,
      priceChange: json['priceChange'] as String?,
      priceChangePercent: json['priceChangePercent'] as String?,
      weightedAvgPrice: json['weightedAvgPrice'] as String?,
      prevClosePrice: json['prevClosePrice'] as String?,
      lastPrice: json['lastPrice'] as String?,
      lastQty: json['lastQty'] as String?,
      bidPrice: json['bidPrice'] as String?,
      bidQty: json['bidQty'] as String?,
      askPrice: json['askPrice'] as String?,
      askQty: json['askQty'] as String?,
      openPrice: json['openPrice'] as String?,
      highPrice: json['highPrice'] as String?,
      lowPrice: json['lowPrice'] as String?,
      volume: json['volume'] as String?,
      quoteVolume: json['quoteVolume'] as String?,
      openTime: json['openTime'] as int?,
      closeTime: json['closeTime'] as int?,
      firstId: json['firstId'] as int?,
      lastId: json['lastId'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$CryptoModelToJson(CryptoModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'priceChange': instance.priceChange,
      'priceChangePercent': instance.priceChangePercent,
      'weightedAvgPrice': instance.weightedAvgPrice,
      'prevClosePrice': instance.prevClosePrice,
      'lastPrice': instance.lastPrice,
      'lastQty': instance.lastQty,
      'bidPrice': instance.bidPrice,
      'bidQty': instance.bidQty,
      'askPrice': instance.askPrice,
      'askQty': instance.askQty,
      'openPrice': instance.openPrice,
      'highPrice': instance.highPrice,
      'lowPrice': instance.lowPrice,
      'volume': instance.volume,
      'quoteVolume': instance.quoteVolume,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'firstId': instance.firstId,
      'lastId': instance.lastId,
      'count': instance.count,
    };
