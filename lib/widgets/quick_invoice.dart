import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custome_container_background.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainerBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
