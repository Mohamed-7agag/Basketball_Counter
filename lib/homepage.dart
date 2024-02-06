import 'package:basketball_app/cubit/cubit/counter_cubit.dart';
import 'package:basketball_app/cubit/cubit/counter_state.dart';
import 'package:basketball_app/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              "Basketball Counter",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 28),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                          style: const TextStyle(
                            fontSize: 110,
                          ),
                        ),
                        CustomButton(
                          text: "Add 1 point",
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: "A", buttonNumber: 1);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          text: "Add 2 point",
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: "A", buttonNumber: 2);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          text: "Add 3 point",
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: "A", buttonNumber: 3);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 28),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                          style: const TextStyle(
                            fontSize: 110,
                          ),
                        ),
                        CustomButton(
                          text: "Add 1 point",
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: "B", buttonNumber: 1);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          text: "Add 2 point",
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: "B", buttonNumber: 2);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          text: "Add 3 point",
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(team: "B", buttonNumber: 3);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "   Reset   ",
                  onpressed: () {
                    BlocProvider.of<CounterCubit>(context).reset();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
