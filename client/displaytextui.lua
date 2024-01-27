local isShowing = false

function Show(texto)
    isShowing = true
    SendNUIMessage({
        type = 'show',
        texto = texto
    })
end

function Hide()
    if not isShowing then return end
    isShowing = false
    SendNUIMessage({
        type = 'hide'
    })
end

exports('Show', Show)
exports('Hide', Hide)
