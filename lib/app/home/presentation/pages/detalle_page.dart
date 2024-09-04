import 'package:flutter/material.dart';
import 'package:gatos_app/app/home/presentation/get/listado_page_controller.dart';
import 'package:get/get.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final name = Get.parameters['name']!;
    ListadoPageController controller = Get.find();
    controller.onSelectCat(name);
    return GetBuilder<ListadoPageController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              controller.catSelected = null;
              Get.back();
            },
          ),
        ),
        body: controller.catSelected != null
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        controller.catSelected?.name ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'foto-gato',
                    child:
                        Image.network(controller.catSelected?.image?.url ?? ''),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(controller.catSelected?.description ?? ''),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                                'Temperamento: ${controller.catSelected?.temperament ?? ''}'),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Inteligencia:',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value:
                                        controller.catSelected!.intelligence /
                                            10,
                                    backgroundColor: Colors.grey,
                                    color: Colors.blue,
                                    minHeight: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Adaptabilidad:',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value:
                                        controller.catSelected!.adaptability /
                                            10,
                                    backgroundColor: Colors.grey,
                                    color: Colors.blue,
                                    minHeight: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Nivel de afección:',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value:
                                        controller.catSelected!.affectionLevel /
                                            10,
                                    backgroundColor: Colors.grey,
                                    color: Colors.blue,
                                    minHeight: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Amigle con los ninos:',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value:
                                        controller.catSelected!.childFriendly /
                                            10,
                                    backgroundColor: Colors.grey,
                                    color: Colors.blue,
                                    minHeight: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Amigo de los perros:',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value: controller.catSelected!.dogFriendly /
                                        10,
                                    backgroundColor: Colors.grey,
                                    color: Colors.blue,
                                    minHeight: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 150,
                                  child: Text(
                                    'NIvel de energia:',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value: controller.catSelected!.dogFriendly /
                                        10,
                                    backgroundColor: Colors.grey,
                                    color: Colors.blue,
                                    minHeight: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
