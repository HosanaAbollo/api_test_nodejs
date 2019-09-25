// Imports
var express = require('express');

// Instanciation du serveur 
var server = express();

// Configuration des routes
server.get('/', function(req,res){

    // Mettre en place l'en tête de la réponse de ma requête HTTP
    res.setHeader('Content-Type', 'text/html');
    // Corps de ma réponse
    res.status(200).send('<h1>Bonjour sur mon seveur<h1/>');

});

// Port d'écoute du serveur et message a logger 
server.listen(8080, function(){
    console.log('Serveur en écoute du port 8080');
});
