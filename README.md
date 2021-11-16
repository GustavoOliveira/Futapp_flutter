# Futapp
FutAPP é um aplicativo Android onde é possível visualizar a tabela de campeonatos de
futebol, o login e o registro de usuários é feito através do Firebase Authentication. O
aplicativo consome uma API RESTful que é responsável por fornecer esses dados, e como
o projeto utiliza a versão free da API, no modo “Live” é possível visualizar apenas o
campeonato Brasileiro Série A com o limite de 100 requisições por dia, e no modo “Teste”
temos uma Série B fantasiosa com requisições ilimitadas.
Doc. da API utilizada: https://www.api-futebol.com.br/documentacao
Pacotes adicionados no projeto:
● dio: ^4.0.0
○ Um cliente Http poderoso para Dart
○ https://pub.dev/packages/dio
● get_storage: 2.0.3
○ Um valor-chave rápido, leve e síncrono na memória, que faz backup dos
dados no disco a cada operação.
○ https://pub.dev/packages/get_storage
● fluttertoast: ^8.0.8
○ Biblioteca Toast para Flutter, crie facilmente mensagens de notificação em
uma única linha de código
○ https://pub.dev/packages/fluttertoast
● firebase_core: "^1.3.0"
○ Um plug-in Flutter para usar a API Firebase Core, que permite a conexão
com vários aplicativos Firebase.
○ https://pub.dev/packages/firebase_core
● firebase_auth: "^2.0.0"
○ Um plug-in Flutter para usar a API Firebase Authentication.
○ https://pub.dev/packages/firebase_auth
● flutter_launcher_icons: "^0.9.2"
○ Uma ferramenta de linha de comando que simplifica a tarefa de atualizar o
ícone do iniciador do aplicativo Flutter.
○ https://pub.dev/packages/flutter_launcher_icons
Telas
● Login
● Registro
● Ligas
● Tabela
Persistência de dados
Para persistência de dados foi utilizado um banco chave-valor que guarda a liga favorita do
usuário localmente no dispositivo.

Membros: Luiz Gustavo de Oliveira
