import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Scaffold(
        body: Flex(
          direction: Axis.horizontal,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.library_books, 'My Documents', () {}),
                botton(Icons.edit_note, 'Draft Notes', () {}),
                botton(Icons.group_work, 'Team Space', () {}),
                const Spacer(),
                botton(Icons.tune, 'Preferences', () {}),
                botton(Icons.group_add, 'Add Team', () {}),
                botton(Icons.note_add, 'Create Note', () {}),
                botton(Icons.add_to_photos, 'Add Folder', () {}),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Workspace',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 35,
                          color: Colors.deepPurple,
                        ),
                        Spacer(),
                        Icon(Icons.share, color: Colors.deepPurple),
                        SizedBox(width: 20),
                        Text('Collaborate'),
                        SizedBox(width: 20),
                        Icon(Icons.settings, color: Colors.deepPurple),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(
                        6,
                        (index) => nota(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Task x',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Updated content for task description. Easy to read and attractive style.',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon, color: Colors.deepPurple),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}