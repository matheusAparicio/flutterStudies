/*
class HomePage extends StatefulWidget {
  HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

    void decrement() {
    setState(() {
      count--;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controle de clientes"),
        backgroundColor: Colors.red[900],
      ),
      drawer: const Drawer(),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? "Lotado." : "Pode entrar!",
            style: TextStyle(
              fontSize: 25,
              color: isFull ? Colors.red : Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
            count.toString(),
            style: const TextStyle(
              fontSize:60,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isFull ? null : increment,
                child: const Text("Entrou"),
                style: TextButton.styleFrom(
                  backgroundColor: isFull ? Colors.black12.withOpacity(0.1) : Colors.black12,
                  fixedSize: const Size(65, 65),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: isEmpty ? null : decrement,
                child: const Text("Saiu"),
                style: TextButton.styleFrom(
                  backgroundColor: isEmpty ? Colors.black12.withOpacity(0.1) : Colors.black12,
                  fixedSize: const Size(65, 65),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //padding: const EdgeInsets.fromLTRB(20, 35, 20, 35),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
*/