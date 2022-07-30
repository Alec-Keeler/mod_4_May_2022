const bcrypt = require('bcryptjs');

async function generateHash(password) {
    const hash = await bcrypt.hash(password, 12)
    console.log(hash)
}

// generateHash('hunter2')

// $2a$12$j89rxnfuaixtKoPMSmsrc.6N7ecNQdbBbk1sgSat28udHyrAZpH3O
// $2a - algorithm
// $12 - cost factor
// 22 characters after last $ are salt
// remaining characters are the hash

async function comparePass(password, hash) {
    const isPass = await bcrypt.compare(password, hash)
    console.log(isPass)
}

comparePass('hunter2', '$2a$12$j89rxnfuaixtKoPMSmsrc.6N7ecNQdbBbk1sgSat28udHyrAZpH3O')