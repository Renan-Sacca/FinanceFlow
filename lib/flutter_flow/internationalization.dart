import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'pt'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String enText = '',
    String ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'daame22z': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    'u5bgh2j1': {
      'en': 'Create your account below.',
      'pt': 'Crie sua conta abaixo.',
    },
    '5lzfd9w8': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'yn9gf4u8': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'osbdal41': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '6aad5tjs': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    'zmmgqnh3': {
      'en': 'Forgot Password?',
      'pt': 'Esqueceu sua senha?',
    },
    'vnienurm': {
      'en': 'Login',
      'pt': 'Conecte-se',
    },
    'xgw9it6n': {
      'en': 'Don\'t have an account?',
      'pt': 'Não tem uma conta?',
    },
    '3n175dub': {
      'en': 'Create',
      'pt': 'Criar',
    },
    'xt2q742w': {
      'en': 'Sign in with Google',
      'pt': 'Faça login no Google',
    },
    'u687jos6': {
      'en': 'Home',
      'pt': 'Home',
    },
  },
  // registerAccount
  {
    'a3sc5rvq': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    '3x93a5oz': {
      'en': 'Create your account below.',
      'pt': 'Crie sua conta abaixo.',
    },
    '9p65dujq': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    '97biw0r3': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'vwtmj1y0': {
      'en': 'Password',
      'pt': 'Senha',
    },
    'lglg5rne': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    '2k9tvm2r': {
      'en': 'Confirm Password',
      'pt': 'Confirme sua senha',
    },
    'd3nxlihq': {
      'en': 'Enter your password...',
      'pt': 'Coloque sua senha...',
    },
    '9dbh4cjh': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'gr7yccjn': {
      'en': 'Login',
      'pt': 'Conecte-se',
    },
    '1cu052pv': {
      'en': 'Already have an account?',
      'pt': 'já tem uma conta?',
    },
    'c6q19wp6': {
      'en': 'Continue as Guest',
      'pt': 'Continuar como convidado',
    },
    '4k990vnz': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // forgotPassword
  {
    'x55x8dj8': {
      'en': 'Forgot Password',
      'pt': 'Esqueceu sua senha',
    },
    'buhe3hvf': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'pt':
          'Digite o e-mail associado à sua conta e nós lhe enviaremos um código de verificação.',
    },
    'pifjd1s9': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'l6bosjvr': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'kr779po1': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    '4567vlu2': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // completeProfile
  {
    'feuf3q5p': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    '7e8efv50': {
      'en': 'Upload a photo for us to easily identify you.',
      'pt': 'Carregue uma foto para que possamos identificá-lo facilmente.',
    },
    '5hfuacgd': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    '27zia2h0': {
      'en': 'Your Age',
      'pt': 'Sua idade',
    },
    'cppb47f4': {
      'en': 'i.e. 34',
      'pt': 'ou seja, 34',
    },
    'fowmkibw': {
      'en': 'Your Title',
      'pt': 'Seu título',
    },
    'qzt24vui': {
      'en': 'What is your position?',
      'pt': 'Qual é a sua posição?',
    },
    '9bwakmuu': {
      'en': 'Complete Profile',
      'pt': 'Perfil completo',
    },
    'tx5ztak4': {
      'en': 'Skip for Now',
      'pt': 'Pular por enquanto',
    },
    'wogbdmhr': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // onboarding
  {
    '5gay810l': {
      'en': 'Create Budgets',
      'pt': 'Criar orçamentos',
    },
    'y2gfy1co': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'pt':
          'Crie orçamentos que você também possa vincular transações para facilitar o rastreamento.',
    },
    '7m2gs9re': {
      'en': 'Keep Track of Spending',
      'pt': 'Acompanhe os gastos',
    },
    'y2bn7f7y': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'pt':
          'Adicione transações facilmente e associe-as aos orçamentos que foram criados.',
    },
    '0tb7z5qj': {
      'en': 'Budget Analysis',
      'pt': 'Análise de orçamento',
    },
    'yqa401vb': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'pt': 'Saiba onde estão seus orçamentos e como eles podem ser ajustados.',
    },
    '74c8y07e': {
      'en': 'Create Your Budget',
      'pt': 'Crie seu orçamento',
    },
    '0awg1evj': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // createBudgetBegin
  {
    'av9d4ro5': {
      'en': 'Create Budget',
      'pt': 'Criar orçamento',
    },
    'qq2a7thi': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    'abc2soxv': {
      'en': 'Budget Name',
      'pt': 'Nome do orçamento',
    },
    'a1lzpyqb': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    '0fqh6qc6': {
      'en': 'Create Budget',
      'pt': 'Criar orçamento',
    },
    'lfluu97p': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    '1vc2s2ub': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '5i3iy8oq': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // MY_Budgets
  {
    '6v8zovsi': {
      'en': 'My Budget',
      'pt': 'Meu orçamento',
    },
    'vrh3bchh': {
      'en': 'Income',
      'pt': 'Renda',
    },
    '7xa17gf6': {
      'en': '+\$12,402',
      'pt': '+\$ 12.402',
    },
    '94o8lo7k': {
      'en': '4.5% ',
      'pt': '4,5%',
    },
    'b8qtaqct': {
      'en': 'Income',
      'pt': 'Renda',
    },
    '1k5wy6wa': {
      'en': '-\$8,392',
      'pt': '-\$ 8.392',
    },
    'poqkkq28': {
      'en': '4.5% ',
      'pt': '4,5%',
    },
    'k4ttyuw3': {
      'en': 'Total Spent',
      'pt': 'Total gasto',
    },
    'tueqxh26': {
      'en': 'Advertising Budget',
      'pt': 'Orçamento publicitário',
    },
    'bkpku84s': {
      'en': '\$3,000',
      'pt': '\$ 3.000',
    },
    'rlhhs2pe': {
      'en': '4 Days Left',
      'pt': 'restam 4 dias',
    },
    'zfbpuuzt': {
      'en': 'Total Spent',
      'pt': 'Total gasto',
    },
    'pmyp30wp': {
      'en': '\$2,502',
      'pt': '\$ 2.502',
    },
    'exeg80ax': {
      'en': 'Advertising Budget',
      'pt': 'Orçamento publicitário',
    },
    'atxlak0g': {
      'en': '\$3,000',
      'pt': '\$ 3.000',
    },
    'mc87tlur': {
      'en': '4 Days Left',
      'pt': 'restam 4 dias',
    },
    '5nxbpg8i': {
      'en': 'Total Spent',
      'pt': 'Total gasto',
    },
    'x5n9dz4s': {
      'en': '\$2,502',
      'pt': '\$ 2.502',
    },
    'j2c6s71g': {
      'en': '•',
      'pt': '•',
    },
  },
  // MY_profilePage
  {
    '9lstyllj': {
      'en': 'My Account',
      'pt': 'Minha conta',
    },
    'ahj4p50t': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'n7x9mmcq': {
      'en': 'Change Password',
      'pt': 'Mudar senha',
    },
    'lt7vsj70': {
      'en': 'Notification Settings',
      'pt': 'Configurações de notificação',
    },
    's96hwh9o': {
      'en': 'Tutorial',
      'pt': 'Tutorial',
    },
    'wdf67kcl': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    '38nhuqxh': {
      'en': '•',
      'pt': '•',
    },
  },
  // paymentDetails
  {
    'z04a4lms': {
      'en': 'Details',
      'pt': 'Detalhes',
    },
    'rdvnf8vn': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    'jxm10sac': {
      'en':
          'Convulsive disorder that does something and extra content goes here because that is where it goes okay, don’t question.',
      'pt':
          'Convulsive disorder that does something and extra content goes here because that is where it goes okay, don’t question.',
    },
    'oe62ae6e': {
      'en': 'Vendor',
      'pt': 'Fornecedor',
    },
    'q148cycf': {
      'en': 'When',
      'pt': 'Quando',
    },
    'ax66v5eq': {
      'en': 'Reason',
      'pt': 'Razão',
    },
    'epiwe0yx': {
      'en': 'Spent by',
      'pt': 'Gasto por',
    },
    'v2zh8jou': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // budgetDetails
  {
    '9u2ediu3': {
      'en': 'Transactions',
      'pt': 'Transações',
    },
    '91a0rufy': {
      'en': 'Income',
      'pt': 'Renda',
    },
    'tdm4e07j': {
      'en': '\$50.00',
      'pt': '\$50.00',
    },
    '02gkmuw4': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // transferFunds
  {
    'ei0zqv6k': {
      'en': 'Transações',
      'pt': 'Transferir fundos',
    },
    'szn90p63': {
      'en': 'Create Bank',
      'pt': 'Criar banco',
    },
    's2t1euqo': {
      'en': 'Create Type',
      'pt': 'Criar tipo',
    },
    'udiuxdqv': {
      'en': 'Name Transaction ',
      'pt': 'Valor \$',
    },
    'dz024ew3': {
      'en': 'Debito',
      'pt': '',
    },
    '864b1mss': {
      'en': 'Debito',
      'pt': 'Débito',
    },
    'lc584qfk': {
      'en': 'Credito',
      'pt': 'Crédito',
    },
    '32toaa70': {
      'en': 'Amount',
      'pt': 'Valor \$',
    },
    '90dohliv': {
      'en': 'x Times',
      'pt': 'Valor \$',
    },
    '8x0lcyqd': {
      'en': 'Send Transfer',
      'pt': 'Enviar transferência',
    },
    'htyccdvp': {
      'en': 'Tap above to complete transfer',
      'pt': 'Toque acima para concluir a transferência',
    },
    'y9ilil1l': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // transferComplete
  {
    'xhgpk9js': {
      'en': 'Transfer Complete',
      'pt': 'Transferência Completa',
    },
    'gpde0hbj': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'pt':
          'Ótimo trabalho, você transferiu fundos com sucesso. Pode levar alguns dias para que os fundos saiam de sua conta.',
    },
    'jxe7pjro': {
      'en': 'Okay',
      'pt': 'Ok',
    },
    'epxcpl3w': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // requestFunds
  {
    '6pfbwda8': {
      'en': 'Request Funds',
      'pt': 'Requer fundos',
    },
    'ci4ps5mq': {
      'en': '\$ Amount',
      'pt': 'Valor \$',
    },
    'jislkk06': {
      'en': 'Office Budget',
      'pt': 'Orçamento do escritório',
    },
    'xguvuxmq': {
      'en': 'External Transfer',
      'pt': 'Transferência externa',
    },
    'jnyllndo': {
      'en': 'ACH Payment',
      'pt': 'Pagamento ACH',
    },
    'up8ndbyc': {
      'en': 'Reason',
      'pt': 'Razão',
    },
    'wq6zkwh6': {
      'en': 'Request Funds',
      'pt': 'Requer fundos',
    },
    'd65vkkyp': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'g03zn0hz': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // transaction_ADD
  {
    '2shmnc7g': {
      'en': 'Add Transaction',
      'pt': 'Adicionar transação',
    },
    'uqkh3d2p': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    's3f6xvj7': {
      'en': 'Spent At',
      'pt': 'Gasto em',
    },
    'z1dsuruk': {
      'en': 'Office Budget',
      'pt': 'Orçamento do escritório',
    },
    'gz3wlz3q': {
      'en': 'External Transfer',
      'pt': 'Transferência externa',
    },
    'j3a111dw': {
      'en': 'ACH Payment',
      'pt': 'Pagamento ACH',
    },
    'skl930iw': {
      'en': 'Reason',
      'pt': 'Razão',
    },
    'u26e1r98': {
      'en': 'Add Transaction',
      'pt': 'Adicionar transação',
    },
    '7kkvhvf1': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'nx5i09t1': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '3934cxuu': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // transaction_EDIT
  {
    'rzm555w5': {
      'en': 'Edit Transaction',
      'pt': 'Editar transação',
    },
    '9nuj3w94': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    'oskn2d36': {
      'en': 'Spent At',
      'pt': 'Gasto em',
    },
    'pp7y5hj2': {
      'en': 'Office Budget',
      'pt': 'Orçamento do escritório',
    },
    'v7uxdrp0': {
      'en': 'External Transfer',
      'pt': 'Transferência externa',
    },
    'qrosp1oi': {
      'en': 'ACH Payment',
      'pt': 'Pagamento ACH',
    },
    'wjipoggj': {
      'en': 'Reason',
      'pt': 'Razão',
    },
    '8kxi3al7': {
      'en': 'Update Transaction',
      'pt': 'Atualizar transação',
    },
    'l97l2560': {
      'en': 'Tap above to save your changes.',
      'pt': 'Toque acima para salvar suas alterações.',
    },
    '4zekl2i9': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'ma8tavfo': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // editProfile
  {
    '0bkpaf04': {
      'en': 'Edit Profile',
      'pt': 'Editar Perfil',
    },
    'ol6kgb2m': {
      'en': 'Change Photo',
      'pt': 'Mudar foto',
    },
    '9e2zqbeh': {
      'en': 'Your Name',
      'pt': 'Seu nome',
    },
    'wnsqrvfv': {
      'en': 'Please enter a valid number...',
      'pt': 'Por favor insira um número válido...',
    },
    '8wzxttpc': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'buj6glhz': {
      'en': 'Your email',
      'pt': 'Seu email',
    },
    '2v8f9dzp': {
      'en': 'Your Age',
      'pt': 'Sua idade',
    },
    'vp5qezug': {
      'en': 'i.e. 34',
      'pt': 'ou seja, 34',
    },
    '4fkhjvq8': {
      'en': 'Your Title',
      'pt': 'Seu título',
    },
    '74br6kbe': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    'ji2q4ejb': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // changePassword
  {
    'aikm32ei': {
      'en': 'Change Password',
      'pt': 'Mudar senha',
    },
    '1iuev85t': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'pt':
          'Digite o e-mail associado à sua conta e enviaremos um link para redefinir sua senha.',
    },
    '2jvuu673': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'beloeqz5': {
      'en': 'Enter your email...',
      'pt': 'Digite seu e-mail...',
    },
    'ulxcbu2w': {
      'en': 'Send Reset Link',
      'pt': 'Enviar link de redefinição',
    },
    '361tm6hc': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // createBudget
  {
    'ncibf75x': {
      'en': 'Create Budget',
      'pt': 'Criar orçamento',
    },
    '06kpt9hj': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    '64s5v1nu': {
      'en': 'Budget Name',
      'pt': 'Nome do orçamento',
    },
    'jpp0cq1g': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'ry65eprs': {
      'en': 'Create Budget',
      'pt': 'Criar orçamento',
    },
    '3zzz8kxj': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'xzhemtfq': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    'og0eyc04': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // notificationsSettings
  {
    'kb41oxb8': {
      'en': 'Notifications',
      'pt': 'Notificações',
    },
    '845711ep': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'pt':
          'Escolha abaixo quais notificações você deseja receber e atualizaremos as configurações.',
    },
    'qcy2pu8s': {
      'en': 'Push Notifications',
      'pt': 'Notificações via push',
    },
    'qvbf4v4c': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'pt':
          'Receba notificações Push do nosso aplicativo de forma semi-regular.',
    },
    'u6eld1ro': {
      'en': 'Email Notifications',
      'pt': 'Notificações por e-mail',
    },
    'u4ceus4f': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'pt':
          'Receba notificações por e-mail de nossa equipe de marketing sobre novos recursos.',
    },
    't1bckz3o': {
      'en': 'Location Services',
      'pt': 'Serviços de localização',
    },
    'z29bq1x7': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'pt':
          'Permita-nos rastrear sua localização, isso ajuda a acompanhar os gastos e mantém você seguro.',
    },
    'nqgvaazx': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
    'xrrmd02d': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // privacyPolicy
  {
    'rkys1nc0': {
      'en': 'Privacy Policy',
      'pt': 'Política de Privacidade',
    },
    'c4t4297h': {
      'en': 'How we use your data',
      'pt': 'Como usamos seus dados',
    },
    'z3cjduzm': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla.\n\nEuismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit.\n\nEt malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'pt':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis em erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia em quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam mecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia em quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et maleuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra mecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus em hac habitasse. Sente-se amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
    },
    'y48p1h7s': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // tutorial_PROFILE
  {
    'ck23tovt': {
      'en': 'Tutorial',
      'pt': 'Tutorial',
    },
    'df4zjez2': {
      'en': 'Create Budgets',
      'pt': 'Criar orçamentos',
    },
    'kcrvi330': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'pt':
          'Crie orçamentos que você também possa vincular transações para facilitar o rastreamento.',
    },
    '8zndl8ft': {
      'en': 'Keep Track of Spending',
      'pt': 'Acompanhe os gastos',
    },
    '987jzma1': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'pt':
          'Adicione transações facilmente e associe-as aos orçamentos que foram criados.',
    },
    'lw5sb5lw': {
      'en': 'Budget Analysis',
      'pt': 'Análise de orçamento',
    },
    'cv7fzm3m': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'pt': 'Saiba onde estão seus orçamentos e como eles podem ser ajustados.',
    },
    'uawrtdop': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // homePage
  {
    'cvj0lwzq': {
      'en': 'Welcome,',
      'pt': 'Bem vindo,',
    },
    '37q49pv2': {
      'en': 'Your latest updates are below.',
      'pt': 'Suas atualizações mais recentes estão abaixo.',
    },
    'yy6cr3ao': {
      'en': 'Balance',
      'pt': 'Equilíbrio',
    },
    'jnhvqopg': {
      'en': '**** 0149',
      'pt': '**** 0149',
    },
    'uzibwmm0': {
      'en': '05/25',
      'pt': '25/05',
    },
    'gee0ru2x': {
      'en': 'Quick Service',
      'pt': 'Serviço rápido',
    },
    're52qw8k': {
      'en': 'Payment',
      'pt': 'Pagamento',
    },
    '2e07yq94': {
      'en': 'Activity',
      'pt': 'Atividade',
    },
    'zyh7fkl9': {
      'en': 'My Bank',
      'pt': 'Meu banco',
    },
    '1sr28d7w': {
      'en': 'Transaction',
      'pt': 'Transação',
    },
    'c876uhqi': {
      'en': '',
      'pt': 'Home',
    },
  },
  // budget_DELETE
  {
    'c4gxfnlj': {
      'en': 'Delete Budget',
      'pt': 'Excluir orçamento',
    },
    'qyz4e6ls': {
      'en':
          'If you delete this budget, your transactions will no longer be associated with it.',
      'pt':
          'Se você excluir este orçamento, suas transações não serão mais associadas a ele.',
    },
    'zzx6hs6a': {
      'en': 'Delete Budget',
      'pt': 'Excluir orçamento',
    },
    'pdjqtszw': {
      'en': 'Tap above to remove this bude',
      'pt': 'Toque acima para remover este bude',
    },
    '148hq2q7': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // createbanco
  {
    'kz7p6ojn': {
      'en': 'Create Bank',
      'pt': 'Criar banco',
    },
    '13o37a6q': {
      'en': 'Bank Name',
      'pt': 'Nome do banco',
    },
    'xeklaz4k': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    'len9zpkz': {
      'en': 'Amount',
      'pt': 'Resultar',
    },
    'eo6i1kvm': {
      'en': 'Limit credit',
      'pt': 'Limitar crédito',
    },
    '4k7db47b': {
      'en': 'Description',
      'pt': 'Descrição',
    },
    'jpj8kio4': {
      'en': 'Create Bank',
      'pt': 'Criar banco',
    },
    'vh0g92bn': {
      'en': 'Tap above to complete request',
      'pt': 'Toque acima para concluir a solicitação',
    },
    'qkmf27qx': {
      'en': 'Please enter an amount',
      'pt': 'Por favor, insira um valor',
    },
    '9h9ea2ke': {
      'en': 'Home',
      'pt': 'Casa',
    },
  },
  // MY_banks
  {
    'fr6us5wm': {
      'en': 'My Banks',
      'pt': 'Meus Bancos',
    },
    'vl1tbog1': {
      'en': '•',
      'pt': '•',
    },
  },
  // bookAppointment
  {
    '3f9lkwux': {
      'en': 'Book Appointment',
      'pt': 'Anotação de livro',
    },
    'lcx6u3yo': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'pt':
          'Preencha os dados abaixo para agendar sua consulta em nosso escritório.',
    },
    'ycxnt50w': {
      'en': 'Emails will be sent to:',
      'pt': 'Os e-mails serão enviados para:',
    },
    'adpm4k15': {
      'en': 'Booking For',
      'pt': 'Reserva para',
    },
    'crtqlzi7': {
      'en': 'Type of Appointment',
      'pt': 'Tipo de nomeação',
    },
    'h11ola3a': {
      'en': 'Doctors Visit',
      'pt': 'Visita de médicos',
    },
    'r9v2tox0': {
      'en': 'Routine Checkup',
      'pt': 'Checagem de rotina',
    },
    '55nfo9k6': {
      'en': 'Scan/Update',
      'pt': 'Digitalizar/atualizar',
    },
    'zjqehg9a': {
      'en': 'What\'s the problem?',
      'pt': 'Qual é o problema?',
    },
    'cf7uc2ks': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    '3ufjl3kf': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    '53qqh6wy': {
      'en': 'Book Now',
      'pt': 'Agende agora',
    },
  },
  // bookingOld
  {
    '751kwfqg': {
      'en': 'Book Appointment',
      'pt': 'Anotação de livro',
    },
    'gjknnz8o': {
      'en':
          'Fill out the information below in order to book your appointment with our office.',
      'pt':
          'Preencha os dados abaixo para agendar sua consulta em nosso escritório.',
    },
    'jyqr0fmq': {
      'en': 'Email Address',
      'pt': 'Endereço de email',
    },
    'k1hs1lk6': {
      'en': 'Booking For',
      'pt': 'Reserva para',
    },
    '5ezlis5w': {
      'en': 'Type of Appointment',
      'pt': 'Tipo de nomeação',
    },
    'rlrdvf3f': {
      'en': 'Doctors Visit',
      'pt': 'Visita de médicos',
    },
    'awvws38b': {
      'en': 'Routine Checkup',
      'pt': 'Checagem de rotina',
    },
    'd21iadma': {
      'en': 'Scan/Update',
      'pt': 'Digitalizar/atualizar',
    },
    '85iuhqj0': {
      'en': 'What\'s the problem?',
      'pt': 'Qual é o problema?',
    },
    'ftkaqav2': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    'u8w590m2': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    '7pudl308': {
      'en': 'Book Now',
      'pt': 'Agende agora',
    },
  },
  // editBooking
  {
    'c2gnaxbj': {
      'en': 'Edit Appointment',
      'pt': 'Editar compromisso',
    },
    'u99sjqqn': {
      'en': 'Edit the fields below in order to change your appointment.',
      'pt': 'Edite os campos abaixo para alterar seu agendamento.',
    },
    'qye0gm3s': {
      'en': 'Emails will be sent to:',
      'pt': 'Os e-mails serão enviados para:',
    },
    'jq5cz7vq': {
      'en': 'Booking For',
      'pt': 'Reserva para',
    },
    'wdbteh3y': {
      'en': 'Type of Appointment',
      'pt': 'Tipo de nomeação',
    },
    'dnkvgal2': {
      'en': 'Doctors Visit',
      'pt': 'Visita de médicos',
    },
    'n44oyvua': {
      'en': 'Routine Checkup',
      'pt': 'Checagem de rotina',
    },
    'ozm6kjjc': {
      'en': 'Scan/Update',
      'pt': 'Digitalizar/atualizar',
    },
    'wzmfonvj': {
      'en': 'What\'s the problem?',
      'pt': 'Qual é o problema?',
    },
    '6vclkrok': {
      'en': 'Choose Date',
      'pt': 'Escolha a data',
    },
    'i2046ao6': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'y199h80j': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
  },
  // pauseCard
  {
    'di3idgjj': {
      'en': 'Pause Card',
      'pt': 'Pausar cartão',
    },
    'vptzkts9': {
      'en': 'Are you sure you want to pause your card?',
      'pt': 'Tem certeza de que deseja pausar seu cartão?',
    },
    'tiwcnkmn': {
      'en': 'Nevermind',
      'pt': 'Esquece',
    },
    '5pdd1jm4': {
      'en': 'Yes, Pause',
      'pt': 'Sim, pausa',
    },
  },
  // createType
  {
    'f56xuqg2': {
      'en': 'Create type',
      'pt': 'Criar tipo',
    },
    'iqyi65kk': {
      'en': 'Create a transaction type :',
      'pt': 'Crie um tipo de transação:',
    },
    'xlntkwog': {
      'en': 'Name type:',
      'pt': 'Tipo de nome:',
    },
    'g8law0hd': {
      'en': 'Type',
      'pt': 'Reserva para',
    },
    'g3p2bgkv': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'tlwqv8in': {
      'en': 'Save Changes',
      'pt': 'Salvar alterações',
    },
  },
  // Miscellaneous
  {
    'vnnxs8hd': {
      'en': '',
      'pt': '',
    },
    'dqu3nnal': {
      'en': '',
      'pt': '',
    },
    'o52u0jvq': {
      'en': '',
      'pt': '',
    },
    'nhygbs81': {
      'en': '',
      'pt': '',
    },
    'q4dkz67f': {
      'en': '',
      'pt': '',
    },
    'ubmjgang': {
      'en': '',
      'pt': '',
    },
    '0n4lck1t': {
      'en': '',
      'pt': '',
    },
    'kt74n3a3': {
      'en': '',
      'pt': '',
    },
    'wfv4wcd2': {
      'en': '',
      'pt': '',
    },
    'j9mv07y5': {
      'en': '',
      'pt': '',
    },
    'zaoeys3w': {
      'en': '',
      'pt': '',
    },
    'anu5ry0q': {
      'en': '',
      'pt': '',
    },
    'knlic694': {
      'en': '',
      'pt': '',
    },
    'kyq1vcnj': {
      'en': '',
      'pt': '',
    },
    '5cpse4ay': {
      'en': '',
      'pt': '',
    },
    'qu7h2ubi': {
      'en': '',
      'pt': '',
    },
    'y2pvdy94': {
      'en': '',
      'pt': '',
    },
    '32sths5e': {
      'en': '',
      'pt': '',
    },
    'oxwsja97': {
      'en': '',
      'pt': '',
    },
    '8tb5hq8i': {
      'en': '',
      'pt': '',
    },
    'wow81vzz': {
      'en': '',
      'pt': '',
    },
    'zamnwi0d': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
