# Láctea Conect — Sprint 3 (Flutter)

## 1. Identificação do projeto

**Nome:** Láctea Conect  
**Equipe:** Láctea Conect  
**Integrantes:**
- Felipe Gasparetto Ohara Sato — RM554315
- Gabriel de Lima — RM99659
- Arthur Queiroz Nascimento — RM555205

### Objetivo

O **Láctea Conect** conecta doadoras de leite humano a Bancos de Leite Humano, facilitando a descoberta de locais próximos, consulta das informações e agendamento de coleta.

Esta versão atende ao escopo da Sprint 3 com **Flutter**, navegação funcional e **dados mockados em memória**. Não utiliza API, Firebase, banco de dados local ou backend.

## 2. Link do GitHub

> **Preencher após criar/subir o repositório:**  
> `https://github.com/SEU_USUARIO/lactea-conect`

## 3. Fluxos implementados

- Splash → Login
- Login → Home
- Login → Cadastro → Home
- Home → Mapa/Listagem de Bancos
- Banco → Detalhes → Agendar
- Agendar → confirmação → Meus Agendamentos
- Meus Agendamentos → cancelar agendamento
- Bottom Navigation: Início, Mapa, Agendar e Perfil
- Perfil → Sair

## 4. Telas principais

> **IMPORTANTE:** o professor exige prints reais do aplicativo rodando. Depois de executar o projeto no emulador/dispositivo, salve os prints na pasta `screenshots/` usando os nomes abaixo. Não foram inventados prints nesta entrega.

### 01 — Splash
Apresenta a identidade visual do Láctea Conect durante o carregamento inicial.

![Splash](screenshots/01-splash.png)

### 02 — Login
Permite preencher e-mail/CPF e senha. A autenticação é simulada nesta Sprint.

![Login](screenshots/02-login.png)

### 03 — Cadastro
Formulário para nome, CPF, nascimento, telefone, e-mail e CEP.

![Cadastro](screenshots/03-cadastro.png)

### 04 — Home
Dashboard da doadora com status, próxima coleta, estatísticas, ações rápidas e dica da semana.

![Home](screenshots/04-home.png)

### 05 — Mapa / Bancos
Lista mockada de Bancos de Leite com busca, distância, avaliação e status de funcionamento.

![Mapa](screenshots/05-mapa.png)

### 06 — Detalhe do Banco
Mostra endereço, horário, telefone, avaliação e condições de doação.

![Detalhe](screenshots/06-detalhe-banco.png)

### 07 — Agendar Coleta
Permite selecionar uma data e horário mockados e confirmar o agendamento.

![Agendar](screenshots/07-agendar.png)

### 08 — Meus Agendamentos
Exibe agendamentos futuros e concluídos e permite cancelar um agendamento futuro.

![Agendamentos](screenshots/08-agendamentos.png)

### 09 — Perfil
Exibe dados da doadora, informações pessoais e opções de segurança, suporte e saída.

![Perfil](screenshots/09-perfil.png)

## 5. Como executar

### Pré-requisitos

- Flutter SDK instalado
- Android Studio ou VS Code
- Emulador Android ou aparelho Android configurado

Verifique a instalação:

```bash
flutter doctor
```

### Instalação

Na pasta raiz do projeto:

```bash
flutter pub get
flutter run
```

Para executar no Chrome, se necessário:

```bash
flutter run -d chrome
```

Para gerar APK:

```bash
flutter build apk --release
```

O APK será gerado em:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## 6. Tecnologias

- Flutter
- Dart
- Material 3
- Navegação nativa do Flutter
- Dados mockados em memória

## 7. Observação sobre o escopo

A Sprint não exige integração com API, Firebase, banco de dados local ou backend. Portanto, todos os dados apresentados pelo aplicativo são mockados e as ações principais alteram apenas o estado em memória durante a execução.
