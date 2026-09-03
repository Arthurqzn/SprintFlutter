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

https://github.com/Arthurqzn/SprintFlutter

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
<img width="1365" height="681" alt="image" src="https://github.com/user-attachments/assets/b79e76c2-92bd-4d36-9c63-4a4a7a2c73e1" />



### 02 — Login
Permite preencher e-mail/CPF e senha. A autenticação é simulada nesta Sprint.

<img width="1365" height="386" alt="image" src="https://github.com/user-attachments/assets/601d111b-277b-4926-89ad-cca48af36848" />


### 03 — Cadastro
Formulário para nome, CPF, nascimento, telefone, e-mail e CEP.

<img width="1361" height="628" alt="image" src="https://github.com/user-attachments/assets/4cb9caa8-4772-4ffd-b9c1-f6cdd13b5163" />


### 04 — Home
Dashboard da doadora com status, próxima coleta, estatísticas, ações rápidas e dica da semana.

<img width="1363" height="634" alt="image" src="https://github.com/user-attachments/assets/d58cce09-1af7-44f7-9dda-7d60279ff9c3" />


### 05 — Mapa / Bancos
Lista mockada de Bancos de Leite com busca, distância, avaliação e status de funcionamento.

<img width="1364" height="639" alt="image" src="https://github.com/user-attachments/assets/1eb72cbf-d79c-4bc1-a533-bb943dc1c15a" />


### 06 — Detalhe do Banco
Mostra endereço, horário, telefone, avaliação e condições de doação.

<img width="1365" height="628" alt="image" src="https://github.com/user-attachments/assets/b85c4c6a-1578-40f5-9026-fd08b4d86ede" />


### 07 — Agendar Coleta
Permite selecionar uma data e horário mockados e confirmar o agendamento.

<img width="1363" height="631" alt="image" src="https://github.com/user-attachments/assets/24c3abeb-aa45-4d8a-a425-04778ab33c98" />


### 08 — Meus Agendamentos
Exibe agendamentos futuros e concluídos e permite cancelar um agendamento futuro.

<img width="1365" height="624" alt="image" src="https://github.com/user-attachments/assets/c2d0e220-a06c-4021-a5bc-f9aff63abd32" />


### 09 — Perfil
Exibe dados da doadora, informações pessoais e opções de segurança, suporte e saída.

<img width="295" height="119" alt="image" src="https://github.com/user-attachments/assets/16ec7e4e-2d74-4944-91ef-c49eb1274eca" />


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
