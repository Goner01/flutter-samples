class Message {
  final String name;
  final String img;
  final String message;
  final String time;
  final bool isConnected;

  const Message(
      {required this.name,
      required this.img,
      required this.message,
      required this.time,
      required this.isConnected});
}

const messages = [
  Message(
      name: 'Francisco Cid 🧐',
      img: 'assets/WhatsApp/user1.png',
      message: '¡Hola Omar! ¿Nos vemos después del trabajo?',
      time: '11.00 am',
      isConnected: true),
  Message(
      name: 'Andres Delgado',
      img: 'assets/WhatsApp/user2.png',
      message: '¡Hola Omar! ¿Nos vemos después del trabajo?',
      time: '10.00 am',
      isConnected: true),
  Message(
      name: 'Claire Kumas',
      img: 'assets/WhatsApp/user3.png',
      message: '¡Hola Omar! ¿Nos vemos después del trabajo?',
      time: '1 hour ago',
      isConnected: false),
  Message(
      name: 'Barbara Espino',
      img: 'assets/WhatsApp/user4.png',
      message: '¡Hola Omar! ¿Nos vemos después del trabajo?',
      time: '3 hour ago',
      isConnected: false),
  Message(
      name: 'Camilo Fuentes',
      img: 'assets/WhatsApp/user5.png',
      message: '¡Hola Omar! ¿Nos vemos después del trabajo?',
      time: '1 day ago',
      isConnected: true),
  Message(
      name: 'Cristobal Sánchez',
      img: 'assets/WhatsApp/user6.png',
      message: '¡Hola Omar! ¿Nos vemos después del trabajo?',
      time: '2 day ago',
      isConnected: false),
];

class Stories {
  final String userName;
  final String userImg;
  final String imgStorie;

  const Stories(
      {required this.userName,
      required this.userImg,
      required this.imgStorie});
}

const stories = [
  Stories(
      userName: 'Diego',
      imgStorie: 'assets/WhatsApp/storie6.jpg',
      userImg: 'assets/WhatsApp/user6.png',),
  Stories(
      userName: 'Francisco',
      imgStorie: 'assets/WhatsApp/storie1.jpg',
      userImg: 'assets/WhatsApp/user1.png',),
  Stories(
      userName: 'Camilo',
      imgStorie: 'assets/WhatsApp/storie2.jpg',
      userImg: 'assets/WhatsApp/user2.png',),
  Stories(
      userName: 'Javier',
      imgStorie: 'assets/WhatsApp/storie3.jpg',
      userImg: 'assets/WhatsApp/user3.png',),
  Stories(
      userName: 'Estefania',
      imgStorie: 'assets/WhatsApp/storie4.jpg',
      userImg: 'assets/WhatsApp/user4.png',),
  Stories(
      userName: 'Pablo',
      imgStorie: 'assets/WhatsApp/storie5.jpg',
      userImg: 'assets/WhatsApp/user5.png',),
  Stories(
      userName: 'Alejandro',
      imgStorie: 'assets/WhatsApp/storie6.jpg',
      userImg: 'assets/WhatsApp/user6.png',),
];


class Groups {
  final String name;
  final String img;
  final String members;
  final String lastMessage;
  final String memberLasTMessage;
  final String numberMessages;
  final List<String> membersImg;

  const Groups(
      {required this.name,
      required this.img,
      required this.members,
      required this.lastMessage,
      required this.memberLasTMessage,
      required this.numberMessages,
      required this.membersImg});
}

const groups = [
  Groups(
      name: 'Comunidad Flutter Español',
      img: 'assets/WhatsApp/grupo1.png',
      members: '60',
      lastMessage: 'Alguen quiere que le pase el código?',
      memberLasTMessage: 'Francisco Cid',
      numberMessages: '5',
      membersImg: [
        'assets/WhatsApp/user4.png',
        'assets/WhatsApp/user1.png',
        'assets/WhatsApp/user6.png',
        '+57'
      ]),
  Groups(
      name: 'Comunidad Vue.js Español',
      img: 'assets/WhatsApp/grupo2.jpg',
      members: '54',
      lastMessage: 'Alguen quiere que le pase el código?',
      memberLasTMessage: 'Javier Perez',
      numberMessages: '6',
      membersImg: [
        'assets/WhatsApp/user2.png',
        'assets/WhatsApp/user6.png',
        'assets/WhatsApp/user1.png',
        '+51'
      ]),
  Groups(
      name: 'Comunidad React Español',
      img: 'assets/WhatsApp/grupo3.png',
      members: '70',
      lastMessage: 'Alguen quiere que le pase el código?',
      memberLasTMessage: 'Pedro Sánchez',
      numberMessages: '8',
      membersImg: [
        'assets/WhatsApp/user3.png',
        'assets/WhatsApp/user5.png',
        'assets/WhatsApp/user4.png',
        '+67'
      ]),
  Groups(
      name: 'Comunidad Angular Español',
      img: 'assets/WhatsApp/grupo4.png',
      members: '66',
      lastMessage: 'Alguen quiere que le pase el código?',
      memberLasTMessage: 'Antonio Pinto',
      numberMessages: '9',
      membersImg: [
        'assets/WhatsApp/user2.png',
        'assets/WhatsApp/user3.png',
        'assets/WhatsApp/user6.png',
        '+63'
      ]),
];

class ChatMessage {
  final String text;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.isSender,
  });
}

List chatMessages = [
  ChatMessage(
    text: "Hola, Omar estas libre el sabado? 👀",
    isSender: false,
  ),
  ChatMessage(
    text: "Hey Francisco, Claro veamos que podemos hacer",
    isSender: true
  ),
  ChatMessage(
    text: "Entonces te aviso la hora",
    isSender: false,
  ),
  ChatMessage(
    text: "Okey, quedo pendiente",
    isSender: true,
  ),
  ChatMessage(
    text: "Dale flaco",
    isSender: false,
  ),
  ChatMessage(
    text: "Nos vemos!!!",
    isSender: true,
  ),
  ChatMessage(
    text: "Ok 😎",
    isSender: false,
  ),
];

