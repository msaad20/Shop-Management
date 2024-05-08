part of 'daily_editor_view.dart';

class DailyEditorAdaptive extends HookWidget {
  final DailyEditorViewModel model;
  const DailyEditorAdaptive({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = useTextEditingController();
    return Scaffold(
      appBar: SlAppBar(
        title: SlText(
          SlRoutes.home.data.title,
          textType: TextType.title,
        ),
        leading: buildLeading(context),
      ),
floatingActionButton:buildFab(),
      body: PageWrapper(
        child: buildBody(controller),
      ),
    );
  }

  Widget? buildLeading(BuildContext context) {
    if (context.canPop()) {
      return IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {
            context.pop();
          });
    } else {
      return null;
    }
  }

  Widget buildBody(
    TextEditingController controller,
  ) {
    return Column(
      children: [
        SlText('pages.home.sales'),
        ConfigConstant.sizedBoxH1,
        SlTextField.price(
          controller: controller,
        ),
        ConfigConstant.sizedBoxH3,
        SlText("pages.home.expenses"),
        buildExpensesTitle(),
      ],
    );
  }

  Widget buildExpensesTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SlText("pages.home.expenses"),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ), 
      ],
    );
  }

  Widget buildFab(){
    return FloatingActionButton.extended(onPressed: (){}, label: SlText(tr('button.save'),),);
  }

  Widget buildExpensesBody() {
    if (model.showExpenses) {
      return ListView.builder(
          itemCount: model.expenses.length,
          itemBuilder: (context, index) {
            final ExpenseModel expense = model.expenses[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: ConfigConstant.padding0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SlText(expense.name ?? ''),
                  SlText.price(
                    price: expense.price,
                    type: TextType.normal,
                  ),
                ],
              ),
            );
          });
    }
    return const SizedBox.shrink();
  }

  Widget buildExpensesTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SlText(
          'field.total',
          textType: TextType.title,
        ),
        SlContainer(
          content: SlText.price(
            price: model.totalPrice,
          ),
        ),
      ],
    );
  }
}
