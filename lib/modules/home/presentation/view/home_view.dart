import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/components/add_or_edit_task_modal.dart';
import 'package:todo_app/components/circle_filter.dart';
import 'package:todo_app/modules/home/domain/usecases/home.usecases.dart';

import '../bloc/home_bloc.dart';
import '../widgets/task_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => HomeBloc(
        homeUseCases: HomeUseCases.instance,
      )..add(HomeEvent.getTask()),
      child: const _HomeContent(title: 'TODO APP'),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      builder: (context, state) {
        return Scaffold(
            body: Stack(
          children: [
            PositionedCircleFilter(
              positionedTop: -450,
              positionedLeft: -200,
              positionedWidth: MediaQuery.of(context).size.width * 0.8,
              positionedHeight: MediaQuery.of(context).size.height * 0.8,
              sigmaX: 50,
              sigmaY: 50,
              sizeHeight: 500,
              sizeWidth: 500,
            ),
            PositionedCircleFilter(
              positionedRight: -150,
              positionedHeight: MediaQuery.of(context).size.height * 0.9,
              sigmaX: 50,
              sigmaY: 50,
              sizeHeight: 250,
              sizeWidth: 250,
            ),
            PositionedCircleFilter(
              positionedBottom: -100,
              positionedLeft: -350,
              positionedWidth: MediaQuery.of(context).size.width * 0.8,
              sigmaX: 50,
              sigmaY: 50,
              sizeHeight: 300,
              sizeWidth: 300,
            ),
            const PositionedCircleFilter(
              positionedBottom: -200,
              positionedRight: -100,
              sigmaX: 200,
              sigmaY: 200,
              sizeHeight: 300,
              sizeWidth: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 32, right: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 48),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  SegmentedButton(
                    segments: [
                      ButtonSegment(
                        value: 'all',
                        label: Text(
                          'All',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ButtonSegment(
                        value: 'completed',
                        label: Text(
                          'Completed',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ButtonSegment(
                        value: 'incomplete',
                        label: Text(
                          'Pendings',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                    onSelectionChanged: (newSelection) {
                      homeBloc.add(HomeEvent.filterTasks(newSelection.first));
                    },
                    selected: {homeBloc.state.filter},
                  ),
                  const SizedBox(height: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'All todos',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext _) {
                                  return AddOrEditTaskModal(
                                    onCreate: (task) {
                                      homeBloc.add(HomeEvent.createTask(task));
                                    },
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Add Task'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: state.filter == 'all'
                          ? state.tasks.length
                          : state.tasksFiltered.length,
                      itemBuilder: (context, index) {
                        final task = state.filter == 'all'
                            ? state.tasks[index]
                            : state.tasksFiltered[index];
                        return TaskCard(
                          task: task,
                          onEdit: (editTask) {
                            homeBloc.add(HomeEvent.editTask(editTask));
                          },
                          onDelete: (id) {
                            homeBloc.add(HomeEvent.deleteTask(id));
                          },
                          onCompleted: (task) {
                            homeBloc.add(HomeEvent.editTask(task));
                            homeBloc.add(HomeEvent.filterTasks(state.filter));
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
      },
    );
  }
}
