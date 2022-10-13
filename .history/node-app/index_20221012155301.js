const express = require('express')
const redis = require('redis')

const app = express()
const port = process.env.PORT || 8080

const client = redis.createClient()

client.set('visits', 0)

app.get('/', (req, res) => {
    client.get('/visits', (err, visits) => {
        visits = parseInt(visits) + 1
        res.send('Visitantes', + visits)
        client.set('visits', + parseInt(visits))
    })
})

app.listen(port, () => {
    console.log(`Server listening on port ${port}`)
})