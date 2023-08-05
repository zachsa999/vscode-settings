import cookie from 'cookie'

export async function handle({ request, resolve }) {
    const cookies = cookie.parse(request.headers.cookie)

    response.headers['set-cookie'] = `user=${request.locals.user || ''}; Path=/; HttpOnly`
    return response
}