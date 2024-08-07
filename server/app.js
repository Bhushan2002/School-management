const express = require('express')
const authRoute = require("./routers/auth.router")

const app = express();

app.use(express.json());

app.use("/api/auth",authRoute);

app.listen(3000,()=>{
    console.log("successfully connected!")
})