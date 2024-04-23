const express = require('express');

const app = express()
const PORT = 3000;

app.get('/', (req, res)=>{ 
    res.set('Content-Type', 'text/html'); 
    res.status(200).send("<h1>Welcome to web-app!</h1>"); 
}); 


app.get('/health', (req, res)=>{ 
    res.status(200); 
    res.send("Health OK"); 
}); 

app.listen(PORT, (error) =>{
    if(!error)
        console.log("Server is Sucessfully Running, and App is listening on port "+ PORT)
    else
        console.log("Error occurred, server can't start", error);
    }
);