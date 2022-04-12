import 'package:dio/dio.dart';
import 'package:dio_slivergridview/dio_service/service.dart';
import '../model/crypto_model.dart';
import 'package:kartal/kartal.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CryptoModel>? _cryptoModel;
  final Services _services = Services();
  bool loading = false;
  Future<void> getInit() async {
    _cryptoModel = await _services.getCryptoList();
    changeLoading();
  }

  void changeLoading() {
    setState(() {
      loading = !loading;
    });
  }

  @override
  void initState() {
    getInit();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: grid());
  }

  GridView grid() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: _cryptoModel?.length,
        itemBuilder: (BuildContext context, index) {
          var coin = _cryptoModel?[index];
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(coin?.symbol ?? ''),
                SizedBox(
                  height: context.dynamicHeight(0.01),
                ),
                Text("Last Price =  ${coin?.lastPrice ?? ""}"),
                Text("High Price =  ${coin?.highPrice ?? ""}"),
              ],
            ),
          );
        });
  }
}
