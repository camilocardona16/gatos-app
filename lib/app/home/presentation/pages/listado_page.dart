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
                  children: [
                    Expanded(
                      child: TextField(
                        onSubmitted: (value) {
                          controller.onSearchTextChange(value);
                        },
                        decoration: const InputDecoration(
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.cats[index].name,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                controller.cats[index].image?.url != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          controller.cats[index].image!.url,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          fit: BoxFit.cover,
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    : Image.asset(
                                        'assets/images/not-found.jpg',
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      ),
                                const SizedBox(height: 5),
                                Text(
                                  'Pais de origen: ${controller.cats[index].origin}',
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Inteligencia:',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: controller
                                                .cats[index].intelligence /
                                            10,
                                        backgroundColor: Colors.grey,
                                        color: Colors.blue,
                                        minHeight: 10,
                                      ),
                                    ),
                                  ],
                                )
                              ],
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
