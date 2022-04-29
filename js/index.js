const axios = require('axios');

let reps = 0
const startTime = Date.now()

console.log('starting')

async function sendRequest(){
    await axios.get('https://google.com/')

    console.log(`${ (reps / Math.abs(startTime - Date.now()))*1000 } requests per second`)
    reps++
    sendRequest()
}

sendRequest()
