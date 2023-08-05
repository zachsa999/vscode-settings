
const ghAuthURL = 'https://github.com/login/oauth/authorize'
const clientId = import.meta.env.VITE_CLIENT_ID


export async function get(req) {
    return {
        body: 'Hello'
    }
}