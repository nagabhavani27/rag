<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chat with RAG Chatbot</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Chat with RAG Chatbot</h1>
    <div id="chat-container">
        <div id="chat-window"></div>
        <textarea id="user-input" rows="4" cols="50" placeholder="Enter your message..."></textarea><br>
        <button onclick="sendMessage()">Send</button>
    </div>
    <script>
        function sendMessage() {
            const userInput = document.getElementById('user-input').value;
            fetch('/api/chat', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'query=' + encodeURIComponent(userInput)
            })
            .then(response => response.text())
            .then(data => {
                const chatWindow = document.getElementById('chat-window');
                chatWindow.innerHTML += '<div>User: ' + userInput + '</div>';
                chatWindow.innerHTML += '<div>Bot: ' + data + '</div>';
            });
        }
    </script>
</body>
</html>
