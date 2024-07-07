import 'package:flutter/material.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  double loanAmount = 0; // เงินกู้
  double interestRate = 0; // อัตราดอกเบี้ย
  double result = 0; // ผลการคำนวน

  void calculate() {
    setState(() {
      result = loanAmount + (loanAmount * interestRate) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำนวณ')),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text('จำนวนเงินที่ต้องจ่าย ${result.toStringAsFixed(2)} บาท'),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'วงเงินกู้',
                      ),
                      onChanged: (value) {
                        setState(() {
                          loanAmount = double.parse(value);
                        });
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'อัตราดอกเบี้ย (%)',
                      ),
                      onChanged: (value) {
                        setState(() {
                          interestRate = double.parse(value);
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: calculate,
                      label: const Text('คำนวณ'),
                      icon: const Icon(
                        Icons.calculate,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
