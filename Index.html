
<html lang="pt-br">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Chat-Livre</title>
<!-- Fonte do Instagram -->
<link href="https://fonts.googleapis.com/css2?family=Instagram&display=swap" rel="stylesheet" />
<style>
  * { margin: 0; padding: 0; box-sizing: border-box; }
  body { font-family: Arial, sans-serif; background-color: #000; color: #fff; display: flex; flex-direction: column; min-height: 100vh; padding: 10px; }

  header { padding: 20px 10px; text-align: center; }
  h1 { font-family: 'Instagram', sans-serif; font-size: 2rem; color: #fff; }

  .promo-img { width: 100%; max-width: 400px; height: auto; display: block; margin: 20px auto; border-radius: 10px; }

  p { text-align: center; margin: 20px; font-size: 1.2rem; }

  button { display: block; margin: 20px auto; padding: 12px 24px; font-size: 1rem; font-weight: bold; background-color: #fff; color: #000; border: none; border-radius: 4px; cursor: pointer; transition: background 0.3s; max-width: 90%; }
  button:hover { background-color: #ddd; }

  /* Modal login/cadastro */
  .modal { display: none; position: fixed; top:0; left:0; width:100%; height:100%; background: rgba(0,0,0,0.7); justify-content: center; align-items: center; z-index: 999; }
  .modal-content { background:#222; padding:20px; border-radius:8px; width:90%; max-width:400px; position: relative; }
  .close-btn { position: absolute; top:10px; right:10px; font-size:1.2rem; cursor:pointer; color:#fff; }
  h2 { margin-bottom:15px; text-align:center; }
  input { width:100%; padding:10px; margin:8px 0; border-radius:4px; border:none; }

  /* Aba troca entre login/cadastro */
  .tab-buttons { display:flex; justify-content:space-around; margin-bottom:15px; }
  .tab-buttons button { flex:1; margin:0 5px; padding:10px; background:#444; color:#fff; border:none; border-radius:4px; cursor:pointer; }
  .tab-buttons button.active { background:#fff; color:#000; }

  /* Chat estilo WhatsApp */
#chatWhatsApp {
  display: none; flex-direction: column; height:100vh; background:#202C33; color:#000; font-family:Arial, sans-serif;
}
#chatWhatsApp header {
  padding:10px; background:#075E54; display:flex; justify-content:space-between; align-items:center; color:#fff;
}
#chatWhatsApp header span { font-weight:bold; font-size:1.2rem; }
#closeChat { background:none; border:none; font-size:1.5rem; cursor:pointer; color:#fff; }
#wppMessages {
  flex:1; padding:10px; overflow-y:auto; display:flex; flex-direction:column-reverse;
}
#wppMessages .message {
  margin:5px 0; padding:10px; border-radius:10px; max-width:70%; font-size:0.9rem; word-wrap:break-word;
}
#wppMessages .own { background:#DCF8C6; align-self:flex-end; }
#wppMessages .other { background:#fff; color:#000; align-self:flex-start; }
#chatInputArea {
  padding:10px; display:flex; align-items:center; background:#111; position:relative;
}
#emojiBtn { background:none; border:none; font-size:1.5rem; cursor:pointer; color:#fff; }
#emojiPicker { display:none; position:absolute; bottom:60px; background:#fff; border-radius:8px; padding:10px; flex-wrap:wrap; max-width:200px; box-shadow:0 0 10px rgba(0,0,0,0.5); z-index:1000; }
#emojiPicker span { font-size:1.5rem; margin:5px; cursor:pointer; }
#wppInput { flex:1; margin:0 10px; padding:10px 20px; border-radius:20px; border:none; outline:none; font-size:1rem; }
#sendWpp { background:none; border:none; font-size:1.5rem; cursor:pointer; color:#fff; }

@media(max-width:600px){
  #wppInput { font-size:1rem; }
  #emojiBtn, #sendWpp { font-size:1.5rem; }
}
</style>
</head>
<body>

<header>
  <h1>Chat-Livre</h1>
</header>

<!-- Imagem promocional -->
<img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Promo" class="promo-img" />

<!-- Texto -->
<p>Conecte-se com seus amigos em tempo real no Chat-Livre!</p>

<!-- Botão Entrar -->
<button id="openModalBtn">Entrar</button>

<!-- Modal login/cadastro -->
<div class="modal" id="authModal">
  <div class="modal-content">
    <span class="close-btn" id="closeModal">&times;</span>
    <h2>Bem-vindo ao Chat-Livre</h2>
    <div class="tab-buttons">
      <button id="loginTab" class="active">Login</button>
      <button id="registerTab">Cadastro</button>
    </div>
    <div id="loginForm">
      <input type="text" id="loginUser" placeholder="Usuário" />
      <input type="password" id="loginPass" placeholder="Senha" />
      <button id="loginBtn" style="width:100%; padding:10px; margin-top:10px;">Entrar</button>
    </div>
    <div id="registerForm" style="display:none;">
      <input type="text" id="regName" placeholder="Nome" />
      <input type="text" id="regUser" placeholder="Usuário" />
      <input type="password" id="regPass" placeholder="Senha" />
      <input type="text" id="regNumber" placeholder="Número" />
      <button id="registerBtn" style="width:100%; padding:10px; margin-top:10px;">Cadastrar</button>
    </div>
  </div>
</div>

<!-- Área do chat estilo WhatsApp -->
<div id="chatWhatsApp">
  <header>
    <span>Chat ao Vivo</span>
    <button id="closeChat">✖️</button>
  </header>
  <div id="wppMessages"></div>
  <div id="chatInputArea">
    <button id="emojiBtn">😊</button>
    <div id="emojiPicker"></div>
    <input type="text" id="wppInput" placeholder="Digite uma mensagem" />
    <button id="sendWpp">➡️</button>
  </div>
</div>

<!-- Firebase SDKs -->
<script type="module">
  // Importa Firebase SDK
  import { initializeApp } from "https://www.gstatic.com/firebasejs/12.2.1/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.2.1/firebase-analytics.js";
  import { getDatabase, ref, push, onChildAdded } from "https://www.gstatic.com/firebasejs/12.2.1/firebase-database.js";

  // Sua configuração Firebase
  const firebaseConfig = {
    apiKey: "AIzaSyCD9v8TRJUtyHcLnDxlId9J-ysSo0PediM",
    authDomain: "chat-livre-10eca.firebaseapp.com",
    projectId: "chat-livre-10eca",
    storageBucket: "chat-livre-10eca.firebasestorage.app",
    messagingSenderId: "1020309588279",
    appId: "1:1020309588279:web:0de54b4807da4ac9cf72b2",
    measurementId: "G-YWRNWK3BS5"
  };

  // Inicializa Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
  const database = getDatabase();

  // Variáveis de controle
  let currentUser = null; // será definido após login
  
  // Elementos do DOM
  const authModal = document.getElementById('authModal');
  const openModalBtn = document.getElementById('openModalBtn');
  const closeModalBtn = document.getElementById('closeModal');
  const loginTabBtn = document.getElementById('loginTab');
  const registerTabBtn = document.getElementById('registerTab');
  const loginUserInput = document.getElementById('loginUser');
  const loginPassInput = document.getElementById('loginPass');
  const loginBtn = document.getElementById('loginBtn');
  const regNameInput = document.getElementById('regName');
  const regUserInput = document.getElementById('regUser');
  const regPassInput = document.getElementById('regPass');
  const regNumberInput = document.getElementById('regNumber');
  const registerBtn = document.getElementById('registerBtn');

  const chatDiv = document.getElementById('chatWhatsApp');
  const messagesDiv = document.getElementById('wppMessages');
  const inputMsg = document.getElementById('wppInput');
  const sendBtn = document.getElementById('sendWpp');
  const emojiBtn = document.getElementById('emojiBtn');
  const emojiPicker = document.getElementById('emojiPicker');

  // Lista de usuários local
  let users = JSON.parse(localStorage.getItem('users')) || [];

  // Função para iniciar o chat após login
  function startChat() {
    document.querySelector('header').style.display='none';
    document.querySelector('.promo-img').style.display='none';
    document.querySelector('p').style.display='none';
    document.getElementById('openModalBtn').style.display='none';
    document.getElementById('chatWhatsApp').style.display='flex';
    loadMessages();
  }

  // Abrir modal
  document.getElementById('openModalBtn').onclick = () => { authModal.style.display='flex'; };
  document.getElementById('closeModal').onclick= () => { authModal.style.display='none'; };
  window.onclick= (e) => { if(e.target==authModal) authModal.style.display='none'; }

  // Trocar abas
  document.getElementById('loginTab').onclick= () => {
    document.getElementById('loginTab').classList.add('active');
    document.getElementById('registerTab').classList.remove('active');
    document.getElementById('loginForm').style.display='block';
    document.getElementById('registerForm').style.display='none';
  };
  document.getElementById('registerTab').onclick= () => {
    document.getElementById('registerTab').classList.add('active');
    document.getElementById('loginTab').classList.remove('active');
    document.getElementById('loginForm').style.display='none';
    document.getElementById('registerForm').style.display='block';
  };

  // Login
  document.getElementById('loginBtn').onclick= () => {
    const user = document.getElementById('loginUser').value.trim();
    const pass = document.getElementById('loginPass').value.trim();
    const foundUser= users.find( u => u.username===user && u.password===pass );
    if(foundUser) {
      currentUser=foundUser;
      authModal.style.display='none';
      startChat();
      alert('Bem-vindo, ' + currentUser.name);
    } else {
      alert('Usuário ou senha incorretos');
    }
  };

  // Cadastro
  document.getElementById('registerBtn').onclick= () => {
    const nome= document.getElementById('regName').value.trim();
    const user= document.getElementById('regUser').value.trim();
    const pass= document.getElementById('regPass').value.trim();
    const num= document.getElementById('regNumber').value.trim();
    if(!nome || !user || !pass || !num){ alert('Preencha todos os campos'); return; }
    if(users.some( u => u.username===user )){ alert('Usuário já existe'); return; }
    const novo= { name: nome, username: user, password: pass, number: num };
    users.push(novo);
    localStorage.setItem('users', JSON.stringify(users));
    alert('Cadastro realizado! Faça login.');
    document.getElementById('loginTab').click();
  };

  // Enviar mensagem
  document.getElementById('sendWpp').onclick= () => {
    const texto= document.getElementById('wppInput').value.trim();
    if(!texto || !currentUser) return;
    // Ver se é menção (@nome)
    const mentionMatch= texto.match(/@(\w+)/);
    const isMention= mentionMatch!==null;
    const mentionName= isMention ? mentionMatch[1] : null;

    // Enviar ao Firebase
    push(ref(database, 'mensagens'), {
      texto, nome: currentUser.name, timestamp: Date.now()
    });
    document.getElementById('wppInput').value='';
  };

  // Ouvir mensagens do Firebase
  onChildAdded(ref(database, 'mensagens'), (snapshot) => {
    const msg= snapshot.val();
    // Criar elementos na tela
    const divMsg= document.createElement('div');
    divMsg.className= 'message';
    if(msg.nome===currentUser?.name){
      divMsg.style.alignSelf='flex-end';
      divMsg.style.background='#DCF8C6';
    } else {
      divMsg.style.alignSelf='flex-start';
      divMsg.style.background='#fff';
    }
    const nomeDiv= document.createElement('div');
    nomeDiv.style.fontWeight='bold';
    nomeDiv.style.fontSize='0.9rem';
    nomeDiv.style.marginBottom='3px';
    nomeDiv.innerText= msg.nome;
    const textoDiv= document.createElement('div');
    textoDiv.innerText= msg.texto;
    divMsg.appendChild(nomeDiv);
    divMsg.appendChild(textoDiv);
    document.getElementById('wppMessages').prepend(divMsg);
  });

  // Enviar mensagem ao apertar Enter
  document.getElementById('wppInput').onkeydown= (e) => {
    if(e.key==='Enter'){ e.preventDefault(); document.getElementById('sendWpp').click(); }
  };

  // Fechar chat
 document.getElementById('closeChat').onclick= () => {
    document.getElementById('chatWhatsApp').style.display='none';
    document.querySelector('header').style.display='block';
    document.querySelector('.promo-img').style.display='block';
    document.querySelector('p').style.display='block';
    document.getElementById('openModalBtn').style.display='block';
  };

  // Emojis
  const emojis= ['😊','😂','😍','👍','🎉','🔥','🤔','🤗','👏','💖'];
  emojis.forEach( e => {
    const span= document.createElement('span');
    span.innerText=e; span.style.fontSize='24px'; span.style.margin='5px'; span.style.cursor='pointer';
    span.onclick= ()=> { document.getElementById('wppInput').value+=e; }
    document.getElementById('emojiPicker').appendChild(span);
  });
  document.getElementById('emojiBtn').onclick= ()=> {
    const p= document.getElementById('emojiPicker');
    p.style.display= (p.style.display==='flex')?'none':'flex';
  };

</script>
</body>
</html>
