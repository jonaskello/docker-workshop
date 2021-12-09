main();

async function main() {
    const { Pool, Client } = require('pg')
    // pools will use environment variables
    // for connection information
    const pool = new Pool()
    // you can also use async/await
    const res = await pool.query('SELECT * from customer')
    console.log("res",res.rows)
    await pool.end()
    // clients will also use environment variables
}
