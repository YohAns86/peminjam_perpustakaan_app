import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: Column(children: [
          TextFormField(
            controller: controller.namaController,
            decoration: InputDecoration(hintText: "Masukkan nama anda"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Nama harus diisi!";
              }
              return null;
            },
          ),
          TextFormField(
            controller: controller.usernameController,
            decoration: InputDecoration(hintText: "Masukkan username"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Username tidak boleh kosong";
              }
              return null;
            },
          )   ,
          TextFormField(
            controller: controller.telpController,
            decoration: InputDecoration(hintText: "Masukkan nomor telepon"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Nomor telepon tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: controller.alamatController,
            decoration: InputDecoration(hintText: "Masukkan alamat"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Alamat harus diisi";
              }
              return null;
            },
          )   ,
          TextFormField(
            controller: controller.passwordController,
            decoration: InputDecoration(hintText: "Masukkan password"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Password harus diisi";
              }
              return null;
            },
          )   ,
          Obx(() =>
          controller.loadingRegister.value?
          CircularProgressIndicator():
          ElevatedButton(onPressed: () {
            controller.addRegister();
          }, child: Text("Add")))
        ]),
      ),
    );
  }
}
