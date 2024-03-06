import 'package:animations/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  const AnimatedListView({super.key, required this.listSlidePosition});

  final Animation<EdgeInsets> listSlidePosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 7,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 6,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 5,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 4,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Com alguns cursos",
          image: const AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
