import 'package:flutter/material.dart';

void main() {
  runApp(const LacteaConectApp());
}

class LacteaConectApp extends StatelessWidget {
  const LacteaConectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Láctea Conect',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B4F8C)),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
      ),
      home: const LoginPage(),
    );
  }
}

// ============================================================
// LOGIN
// ============================================================

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  void entrar() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Logo
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFF1B4F8C),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    'LC',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Láctea Conect',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B4F8C),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Conectando vidas através da doação',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),

              const SizedBox(height: 45),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail ou CPF',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 8),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Esqueci minha senha'),
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: entrar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1B4F8C),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastroPage(),
                      ),
                    );
                  },
                  child: const Text('CRIAR MINHA CONTA'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// CADASTRO
// ============================================================

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criar cadastro')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(Icons.favorite, size: 60, color: Color(0xFF1B4F8C)),

            const SizedBox(height: 10),

            const Text(
              'Seja uma doadora',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome completo',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            const TextField(
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Data de nascimento',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Telefone',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            const TextField(
              decoration: InputDecoration(
                labelText: 'CEP',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B4F8C),
                  foregroundColor: Colors.white,
                ),
                child: const Text('CONTINUAR'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// HOME
// ============================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B4F8C),
        foregroundColor: Colors.white,
        title: const Text('Láctea Conect'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Olá, Maria!',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              'Pronta para ajudar hoje?',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 25),

            // STATUS
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1B4F8C),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seu status de doadora',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '✓ DOADORA ATIVA',
                    style: TextStyle(
                      color: Color(0xFFFFC800),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Próxima coleta: 15 Jun 2026 às 09:00',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Seu impacto',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                _estatistica('12', 'Doações'),
                _estatistica('8,5 L', 'Litros'),
                _estatistica('32', 'Bebês'),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'Ações rápidas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: _botaoAcao(
                    context,
                    Icons.location_on,
                    'Bancos de leite',
                    const BancosPage(),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _botaoAcao(
                    context,
                    Icons.calendar_month,
                    'Agendamentos',
                    const AgendamentosPage(),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF4C7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.lightbulb_outline, color: Color(0xFF806500)),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Dica: beba bastante água antes da doação para ajudar na produção de leite.',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _estatistica(String valor, String titulo) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(
              valor,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B4F8C),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              titulo,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botaoAcao(
    BuildContext context,
    IconData icon,
    String titulo,
    Widget pagina,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagina),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Icon(icon, color: const Color(0xFF1B4F8C), size: 35),
            const SizedBox(height: 8),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// BANCOS DE LEITE
// ============================================================

class BancosPage extends StatelessWidget {
  const BancosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B4F8C),
        foregroundColor: Colors.white,
        title: const Text('Bancos de Leite'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _banco(
            context,
            'Hospital das Clínicas SP',
            'Cerqueira César',
            '0,8 km',
            '4,9',
          ),
          _banco(context, 'Banco HC Perdizes', 'Perdizes', '2,1 km', '4,7'),
          _banco(
            context,
            'Maternidade Santa Joana',
            'Vila Nova Conceição',
            '4,6 km',
            '4,8',
          ),
          _banco(
            context,
            'Amparo Maternal',
            'Vila Clementino',
            '5,3 km',
            '4,6',
          ),
        ],
      ),
    );
  }

  Widget _banco(
    BuildContext context,
    String nome,
    String bairro,
    String distancia,
    String avaliacao,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DetalheBancoPage(nome: nome, bairro: bairro),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xFFE7EFF8),
                    child: Icon(Icons.local_hospital, color: Color(0xFF1B4F8C)),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      nome,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    distancia,
                    style: const TextStyle(
                      color: Color(0xFF1B4F8C),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(bairro, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star, color: Color(0xFFFFC800), size: 18),
                  Text(' $avaliacao'),
                  const Spacer(),
                  const Text(
                    'ABERTO',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// DETALHE DO BANCO
// ============================================================

class DetalheBancoPage extends StatelessWidget {
  final String nome;
  final String bairro;

  const DetalheBancoPage({super.key, required this.nome, required this.bairro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B4F8C),
        foregroundColor: Colors.white,
        title: const Text('Detalhes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.local_hospital,
              size: 65,
              color: Color(0xFF1B4F8C),
            ),

            const SizedBox(height: 15),

            Text(
              nome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            _informacao(
              Icons.location_on,
              'Endereço',
              'Av. Principal, 255 - $bairro',
            ),

            _informacao(
              Icons.access_time,
              'Horário',
              'Segunda a sexta: 07h às 18h',
            ),

            _informacao(Icons.phone, 'Telefone', '(11) 2661-8000'),

            _informacao(Icons.star, 'Avaliação', '4,9 estrelas'),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AgendarPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B4F8C),
                  foregroundColor: Colors.white,
                ),
                child: const Text('AGENDAR COLETA'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _informacao(IconData icon, String titulo, String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF1B4F8C)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(texto),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// AGENDAMENTO
// ============================================================

class AgendarPage extends StatefulWidget {
  const AgendarPage({super.key});

  @override
  State<AgendarPage> createState() => _AgendarPageState();
}

class _AgendarPageState extends State<AgendarPage> {
  String dataSelecionada = '12 Jun';
  String horarioSelecionado = '09:00';

  @override
  Widget build(BuildContext context) {
    final datas = ['12 Jun', '13 Jun', '14 Jun', '15 Jun', '16 Jun'];

    final horarios = ['08:00', '09:00', '10:00', '11:00', '14:00'];

    return Scaffold(
      appBar: AppBar(title: const Text('Agendar coleta')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Escolha a data',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 8,
              children: datas.map((data) {
                return ChoiceChip(
                  label: Text(data),
                  selected: data == dataSelecionada,
                  onSelected: (selecionado) {
                    setState(() {
                      dataSelecionada = data;
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            const Text(
              'Escolha o horário',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 8,
              children: horarios.map((horario) {
                return ChoiceChip(
                  label: Text(horario),
                  selected: horario == horarioSelecionado,
                  onSelected: (selecionado) {
                    setState(() {
                      horarioSelecionado = horario;
                    });
                  },
                );
              }).toList(),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Agendamento confirmado!'),
                        content: Text(
                          'Data: $dataSelecionada\n'
                          'Horário: $horarioSelecionado',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B4F8C),
                  foregroundColor: Colors.white,
                ),
                child: const Text('CONFIRMAR AGENDAMENTO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// AGENDAMENTOS
// ============================================================

class AgendamentosPage extends StatelessWidget {
  const AgendamentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B4F8C),
        foregroundColor: Colors.white,
        title: const Text('Meus Agendamentos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _agendamento(
            'Hospital das Clínicas SP',
            '15 Jun 2026',
            '09:00',
            'AGENDADO',
          ),
          _agendamento(
            'Banco HC Perdizes',
            '02 Mai 2026',
            '10:00',
            'CONCLUÍDO',
          ),
          _agendamento(
            'Maternidade Santa Joana',
            '14 Abr 2026',
            '14:00',
            'CONCLUÍDO',
          ),
        ],
      ),
    );
  }

  Widget _agendamento(
    String banco,
    String data,
    String horario,
    String status,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    banco,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  status,
                  style: TextStyle(
                    color: status == 'AGENDADO'
                        ? const Color(0xFF1B4F8C)
                        : Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text('$data • $horario'),

            const SizedBox(height: 8),

            const Text(
              'Av. Principal, 255',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
