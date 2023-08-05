const today = new Date(Date.UTC())
const yesterday = new Date(today.getDate() -1)
yesterday

function red() {  
    
    // yesterday.setDate(yesterd>ay.getDate() - 1)
    
    
    let end = (
    ((yesterday.getDate() * 86400) % 2678400) +
    ((yesterday.getMonth() * 2678400) % 32140800) +
    ((yesterday.getFullYear() % 100) * 32140800)
    ) - 21600
    
    let start = end - 90000
    let dateString = `${yesterday.toString()}`
    let data = [
        { start, end, dateString }
    ]

return data
}