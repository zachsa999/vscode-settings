import fetch from 'node-fetch'
const tokenURL = 'https://github.com/login/oath/access_token'

const clientId = import.meta.env.VITE_CLIENT_ID
const secret = import.meta.env.VITE_CLIENT_SECRET

export async function GET(req) {
    const code = req.query.get('code')
    const accessToken = await getAccessToken(code)


    return {
        body: JSON.stringify(accessToken)
    }
}

function getAccessToken(code) {
    return fetch(tokenURL, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', Accept: 'application/json' },
        body: JSON.stringify({
            clientId: clientId,
            client_secret: secret,
            code
        })
    }).then(r => r.json())
        .then(r => r.access_token)
}