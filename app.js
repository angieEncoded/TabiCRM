require('dotenv').config()
const express = require('express');
const User = require('./models/User');
const cors = require('cors');
const logger = require('./util/logger');


const app = express();


app.use(cors({
    origin: "http://localhost:3000"
}))




app.get("/users", async (req, res, next) => {
    const [users] = await User.selectAll();
    res.send(users)
})








if (process.env.INDEV) {
    app.listen(8080, function () {
        console.log(`http fired up on 8080`);
    });
} else {
    // https.createServer(sslOptions, app).listen(process.env.PORT || 443, function () {
    //     console.log(`https fired up on ${process.env.PORT}`);
    // });
    console.log("HTTP LOADED")
}
