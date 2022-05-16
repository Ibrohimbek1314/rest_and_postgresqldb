import express from "express"
const PORT = process.env.PORT || 5000
const app = express()

import UserModule from './routes/user.js'
app.use(UserModule)


app.listen(PORT, () =>  console.log('server is running on localhost:' + PORT));
