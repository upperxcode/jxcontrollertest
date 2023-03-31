// import 'package:cma/controllers/pais_controller.dart';
// import 'package:cma/domain/models/pais_model.dart';
// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//    State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   late List<PaisModel>? _model = [];
//   final contoller = PaisController();

//   @override
//   void initState() {
//     super.initState();

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('REST API Example'),
//       ),
//       body: _model == null || _model!.isEmpty
//           ? const Center(
//               child: CircularProgressIndicator(),
//             )
//           : ListView.builder(
//               itemCount: _model!.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(_model![index].id.toString()),
//                           Text(_model![index].nome.toString()),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 20.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text(_model![index].nomePt.toString()),
//                           Text(_model![index].bacen.toString()),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }
