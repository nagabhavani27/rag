function sendMessage() {
    var userInput = document.getElementById("user-input").value;
    if (userInput.trim() !== "") {
        var chatBox = document.getElementById("chat-box");
        var userMessage = document.createElement("div");
        userMessage.className = "message";
        userMessage.innerHTML = "<strong>You:</strong> " + userInput;
        chatBox.appendChild(userMessage);

        fetch("/api/chat?query=" + encodeURIComponent(userInput))
            .then(response => response.text())
            .then(data => {
                var botMessage = document.createElement("div");
                botMessage.className = "message";
                botMessage.innerHTML = "<strong>Bot:</strong> " + data;
                chatBox.appendChild(botMessage);
            })
            .catch(error => console.error('Error:', error));

        document.getElementById("user-input").value = "";
    }
}
