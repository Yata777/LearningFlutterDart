import 'package:advicer/application/advicer/advicer_bloc.dart';
import 'package:advicer/presentation/advicer/widgets/advice_field.dart';
import 'package:advicer/presentation/advicer/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../application/theme/theme_service.dart';
import 'widgets/custom_button.dart';

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
   
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          actions: [
            Switch(
              value: Provider.of<ThemeService>(context).isDarkModeOn,
              onChanged: (_){
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              },)
          ],
          title: Text("Advicer", style: themeData.textTheme.headlineLarge)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: BlocBuilder<AdvicerBloc, AdvicerState>(
                    bloc: BlocProvider.of<AdvicerBloc>(context),
                    builder: ((context, adviceState) {
                      if (adviceState is AdvicerInitial){
                        return Text(
                          "Your advice is waiting for you!",
                          style: themeData.textTheme.headlineLarge,
                        );
                      }else if (adviceState is AdvicerStateLoading){
                        return CircularProgressIndicator(color: themeData.colorScheme.secondary);
                      }else if (adviceState is AdvicerStateLoaded){
                        return AdviceField(advice: adviceState.advice);
                      }else if(adviceState is AdvicerStateError){
                        return ErrorMessage(message: adviceState.message,);
                      }
                      return Placeholder();
                    }),
                  )
                ),
              ),
              SizedBox(
                height: 200,
                child: Center(
                  child: CustomButton(
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
