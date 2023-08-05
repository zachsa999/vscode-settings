import cookie from 'cookie'

export async function handle({ request, resolve }) {
    const cookies = cookie.parse(request.headers.cookie)

    request.locals.user = cookies.user
    console.log({ user: request.locals.user })

    const response = await resolve(request)

    response.headers['set-cookie'] = `user=${request.locals.user || ''}; Path=/; HttpOnly`
    return response
}

export async function getSession(request) {
    return {
        user: request.locals.user
    }
}