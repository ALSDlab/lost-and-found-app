import 'package:flutter/material.dart';
import 'package:lost_and_found_app/ui/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final searchTextController = TextEditingController();
  final viewModel = MainViewModel();

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    await viewModel.searchItems();
    setState(() {
      viewModel.displayedItems;
    });
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: searchTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 4,
                      color: Colors.pink,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 4,
                      color: Colors.deepOrange,
                    ),
                  ),
                  hintText: '검색어를 입력하세요',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      viewModel.filterItems(searchTextController.text);
                      setState(() {
                        viewModel.displayedItems;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.displayedItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(viewModel.displayedItems[index].name),
                      subtitle:
                          Text(viewModel.displayedItems[index].getterComment),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
