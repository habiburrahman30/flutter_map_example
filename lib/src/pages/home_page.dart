import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../helpers/hex_color.dart';
import '../helpers/global_helper.dart';
import '../helpers/k_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Map Example'),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KText(
                    text: 'Version 1.0.0',
                    color: hexToColor('#9FB3BE'),
                  ),
                  SizedBox(height: 5),
                  KText(
                    text: '© 2022 Habibur Rahman',
                    color: hexToColor('#9FB3BE'),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                  ),
                  child: Center(child: FlutterLogo(size: 50)),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: KText(
                    text: 'Flutter Map',
                    fontSize: 18,
                    bold: true,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        title: KText(text: 'Map'),
                        leading: Icon(Icons.map_outlined),
                        onTap: () {},
                        dense: true,
                      ),
                      ListTile(
                        title: KText(text: 'Map'),
                        leading: Icon(Icons.map_outlined),
                        onTap: () {},
                        dense: true,
                      ),
                      ListTile(
                        title: KText(text: 'Map'),
                        leading: Icon(Icons.map_outlined),
                        onTap: () {},
                        dense: true,
                      ),
                      ListTile(
                        leading: Icon(Icons.map_outlined),
                        title: KText(text: 'Map'),
                        onTap: () {},
                        dense: true,
                      ),
                      ListTile(
                        title: KText(text: 'Map'),
                        leading: Icon(Icons.map_outlined),
                        onTap: () {},
                        dense: true,
                      ),
                      ListTile(
                        title: KText(text: 'Map'),
                        leading: Icon(Icons.map_outlined),
                        onTap: () {},
                        dense: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // FlutterMap(
          // //   // mapController: siteLocationsC.kMapControllerSiteLocation,
          // //   options: MapOptions(
          // //     center: LatLng(23.5414747089055, 90.78792035579683),
          // //     zoom: 13,
          // //     maxZoom: 90,
          // //   ),
          // //   children: [
          // //     // ---------------google Satellite Map view -------------------
          // //     // 'http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',
          // //     // 'http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}',
          // //     TileLayer(
          // //       urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          // //       // urlTemplate: siteLocationsC.isSateliteViewEnable.value
          // //       //     ? 'http://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}'
          // //       //     : 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          // //       userAgentPackageName: 'com.ctrendssoftware.workforce',
          // //     ),

          // //     //================== Draw area polygon =====================

          // //     PolygonLayer(
          // //       polygonCulling: false,
          // //       polygons: [
          // //         Polygon(
          // //           points: [],
          // //           // color: Colors.blue,
          // //           borderStrokeWidth: 3,
          // //           borderColor: Colors.red,
          // //           // color: hexToColor('#e6f2d9').withOpacity(.8),
          // //           // isFilled: true,
          // //         ),
          // //       ],
          // //     ),

          // //     // MarkerLayer(markers: siteLocationsC.markers),
          // //   ],
          // // ),
        ],
      ),
    );
  }
}
