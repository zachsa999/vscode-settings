import cookie from 'cookie'

export async function handle({ event, resolve }) {
    const cookies = cookie.parse(request.headers.cookie)

    request.locals.user = cookies.user
    console.log({ user: event.locals.user })

    const response = await resolve(event)

    response.headers['set-cookie'] = `user=${request.locals.user || ''}; Path=/; HttpOnly`
    return response
}

export async function getSession(request) {
    return {
        user: request.locals.user
    }
}