import fetch from 'node-fetch'
const tokenURL = 'https://github.com/login/oath/access_token'

const clientId = import.meta.env.VITE_CLIENT_ID
const secret = import.meta.env.VITE_CLIENT_SECRET


export async function GET(req) {
    const code = req.url.searchParams.get('code')
    const accessToken = await getAccessToken(code)
    const user = await getUser(accessToken)

    req.locals.user = user.login

    return {
        status: 302,
        headers: {
            location: '/'
        }
    }

    return {
        body: JSON.stringify(user)
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

const userURL = 'https://api.github.com/user'

function getUser(accessToken) {
    return fetch(userURL, {
        headers: {
            Accept: 'application/json',
            Authorization: `Bearer ${accessToken}`
        }
    })
        .then(r => r.json())

}
