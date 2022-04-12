import 'package:json_annotation/json_annotation.dart';

part 'crypto_model.g.dart';

@JsonSerializable()
class CryptoModel {
  CryptoModel({
    this.symbol,
    this.priceChange,
    this.priceChangePercent,
    this.weightedAvgPrice,
    this.prevClosePrice,
    this.lastPrice,
    this.lastQty,
    this.bidPrice,
    this.bidQty,
    this.askPrice,
    this.askQty,
    this.openPrice,
    this.highPrice,
    this.lowPrice,
    this.volume,
    this.quoteVolume,
    this.openTime,
    this.closeTime,
    this.firstId,
    this.lastId,
    this.count,
  });

  String? symbol;
  String? priceChange;
  String? priceChangePercent;
  String? weightedAvgPrice;
  String? prevClosePrice;
  String? lastPrice;
  String? lastQty;
  String? bidPrice;
  String? bidQty;
  String? askPrice;
  String? askQty;
  String? openPrice;
  String? highPrice;
  String? lowPrice;
  String? volume;
  String? quoteVolume;
  int? openTime;
  int? closeTime;
  int? firstId;
  int? lastId;
  int? count;

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return _$CryptoModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CryptoModelToJson(this);
  }
}
