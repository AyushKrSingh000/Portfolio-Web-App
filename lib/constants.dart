import 'package:url_launcher/url_launcher.dart';

const double fontsize = 16;
const String resumeLink =
    "https://drive.google.com/file/d/1N3pM4lFXtehFQ-QUXuWhjRcdnZ8slA8A/view?usp=sharing";
List<String> skills = [
  'Flutter',
  'Firebase',
  'NodeJs',
  'C',
  'ExpressJS',
  'MongoDB',
  'MySQL',
  'C++',
  'JavaScript',
  'Python',
  'VsCode',
  'Git',
  'GitHub',
];
List<String> skilllinks = [
  flutter,
  firebase,
  nodejs,
  expressjs,
  mongodb,
  mysql,
  c,
  cpp,
  javascript,
  python,
  vscode,
  git,
  github,
];
List<String> items = ['HOME', 'ABOUT', 'PROJECTS', 'CONTACT'];
List<String> projects = [
  'Created as a learning tool to explore REST API, Socket.IO, and state management in app development',
  'Developed an one stop solution in the form of app and website to help parents in the overall development of their child.',
  'An App Developed to Track all Your Expenses, your current Balance and all.',
  'It Provides a unique authentication for events. It uses QR codes to verify attendance and ensure that only authorized individuals are able to access the event.'
];
void urlLauncher(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

List<String> projectName = [
  'Google Docs Clone',
  'Vriddhi SIH',
  'Expense Tracker App',
  'Event Invite System'
];

List<String> image = [
  'docs2.png',
  'vriddhi2.png',
  'expense2.png',
  'event2.png'
];

Map<int, List<String>> tech = {
  0: [
    'Flutter',
    'ExpressJS',
    'NodeJS',
    'MongoDB',
    'JavaScript',
    'SocketIO',
    'RiverPod'
  ],
  1: ['Flutter', 'Firebase', 'GETX', 'DJango', 'WebDevTools'],
  2: ['Flutter', 'Firebase', 'GETX', 'WebDevTools'],
  3: ['Flutter', 'ExpressJS', 'NodeJS', 'MongoDB', 'JavaScript']
};
Map<int, List<String>> techLinks = {
  0: [flutter, expressjs, nodejs, mongodb, javascript, socketio, riverpodw],
  1: [flutter, firebase, getx, django, webdevtools],
  2: [flutter, firebase, getx, webdevtools],
  3: [flutter, expressjs, nodejs, mongodb, javascript]
};
const String flutter = 'https://flutter.dev/';
const String firebase = 'https://firebase.google.com/';
const String nodejs = 'https://nodejs.org/en/';
const String mongodb = 'https://www.mongodb.com/home';
const String javascript = 'https://www.w3schools.com/js/';
const String socketio = 'https://socket.io/';
const String riverpodw = 'https://riverpod.dev/';
const String getx = 'https://pub.dev/packages/get'; //
const String django = 'https://www.djangoproject.com/'; //
const String webdevtools = 'https://www.w3schools.com/whatis/'; //
const String expressjs = 'https://expressjs.com/';
const String mysql = 'https://www.mysql.com/';
const String c = 'https://www.w3schools.com/c/';
const String cpp = 'https://www.w3schools.com/cpp/';
const String python = 'https://www.python.org/';
const String git = 'https://git-scm.com/';
const String github = 'https://github.com/';
const String vscode = 'https://code.visualstudio.com/';
List<String> content = [
  "The Google Docs Clone project was a unique and valuable learning opportunity that allowed the individual to dive into important concepts such as REST API, Socket.io, and state management in an app. By building a clone of the popular document editing and collaboration platform, practical experience and a deeper understanding of these concepts were gained. \n\nThe project likely required significant research and development as key features and functionality were replicated, providing a hands-on learning experience that will be valuable as the individual continues to grow as a developer. \n\nWhether just starting out in their career or with significant experience, this project was a great way to improve skills and knowledge in a practical and meaningful way.",
  "Vriddhi SIH is a comprehensive and innovative solution for parents looking to support the overall development of their children. This one-stop app and website provides a wealth of resources and features to help parents stay informed and involved in their child's growth.\n\nVriddhi offers educational content, progress tracking, and opportunities to connect with other parents and experts in the field. Whether you are a seasoned parent seeking new ways to support your child's development or a new parent looking for guidance and support. \n\nVriddhi is a valuable resource that can help you navigate the challenges of parenting and ensure that your child has the best possible start in life. With Vriddhi, you can feel confident in your ability to support your child's growth and development every step of the way.",
  "The Expense Tracker App is a useful and practical tool for keeping track of all transactions. Whether managing personal finances, this app can help stay organized and on top of expenses. \n\nOne standout feature of the Expense Tracker App is the split function, which allows for easy division of expenses between multiple people or categories. This can be particularly helpful when sharing expenses with a group or tracking spending in different categories. \n\nIn addition to these convenient features, the app also has cloud backup, ensuring data is secure and can be accessed from any device. Overall, the Expense Tracker App is a valuable resource that can help stay on top of finances and make better financial decisions.",
  "The Event Invite System App is a unique and innovative solution for managing event attendance. The app provides a secure authentication system using QR codes to verify attendance and ensure that only authorized individuals are able to access the event. \n\nThis is a convenient and effective way to manage guest lists and prevent unauthorized access. QR codes can only be scanned once, providing an extra layer of security and preventing any potential misuse. \n\nThis app is a valuable resource for event planners and organizers who want to ensure that their events are secure and well-managed. Whether hosting a small gathering or a large-scale event, the Event Invite System App is a reliable and efficient way to manage attendance and keep the event running smoothly.",
];
