import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/routes/app_pages.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddPeminjamanView'),
        centerTitle: true,
      ),
      body: Form(
          key: controller.formKey,
          child: Column(children: [
            TextFormField(
            controller: controller.tglpinjamController,
            decoration: InputDecoration(hintText: "Masukkan Tanggal Pinjam"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Halaman harus diisi!";
              }
              return null;
            },
          ),
          TextFormField(
            controller: controller.tglkembaliController,
            decoration: InputDecoration(hintText: "Masukkan Tanggal Kembali"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Halaman harus diisi";
              }
              return null;
            },
          ),
          Obx(() =>
      controller.loading.value?
      CircularProgressIndicator():
      ElevatedButton(onPressed: () => controller.post(), child: Text("Pinjam"))),
    ])
    )
    );
  }
}
