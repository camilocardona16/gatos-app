import 'package:flutter/material.dart';
import 'package:gatos_app/app/home/presentation/get/listado_page_controller.dart';
import 'package:get/get.dart';

class ListadoPage extends StatelessWidget {
  const ListadoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListadoPageController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Buscar',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.cats.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              controller.cats[index].name,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
