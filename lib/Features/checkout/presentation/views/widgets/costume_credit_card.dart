import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CostumeCreditCard extends StatefulWidget {
  const CostumeCreditCard({super.key,required this.formKey, required this.autoValidateMode});

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autoValidateMode ;


  @override
  State<CostumeCreditCard> createState() => _CostumeCreditCardState();
}

class _CostumeCreditCardState extends State<CostumeCreditCard> {
  String cardNumber = '', cardHolderName = '', expiryDate = '', cvvCode = '';

  bool showBackView = false;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          height: 192,
          animationDuration: const Duration(milliseconds: 600),
          enableFloatingCard: true,
          isHolderNameVisible: true,
          cardBgColor: Colors.brown.shade300,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          isChipVisible: true,
          obscureCardCvv: false,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autoValidateMode ,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              cardNumber = creditCardModel.cardNumber;
              expiryDate = creditCardModel.expiryDate;
              cardHolderName = creditCardModel.cardHolderName;
              cvvCode = creditCardModel.cvvCode;
              showBackView = creditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey)
      ],
    );
  }
}
