if (document.querySelector('#glideImages')) {
    new Glide('#glideImages', {
        type: 'carousel',
        startAt: 0,
        perView: 3,
        gap: 100,
        keyboard: true,
        focusAt: 'center',
        peek: 100,
    }).mount()
}
if (document.querySelector('#glideSpeakers')) {
    new Glide('#glideSpeakers', {
        type: 'carousel',
        startAt: 0,
        perView: 3,
        gap: 100,
        keyboard: true,
        focusAt: 'center',
        peek: 100,
    }).mount()
}
