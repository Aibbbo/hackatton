function t_throttle(fn, threshhold, scope) {
    var last;
    var deferTimer;
    threshhold || (threshhold = 250);
    return function() {
        var context = scope || this;
        var now = +new Date();
        var args = arguments;
        if (last && now < last + threshhold) {
            clearTimeout(deferTimer);
            deferTimer = setTimeout(function() {
                last = now;
                fn.apply(context, args)
            }, threshhold)
        } else {
            last = now;
            fn.apply(context, args)
        }
    }
}
function t486_setHeight(recId) {
    var rec = document.getElementById('rec' + recId);
    if (!rec)
        return;
    var textWrapper = rec.querySelector('.t486__textwrapper');
    if (!textWrapper)
        return;
    var images = rec.querySelectorAll('.t486__blockimg');
    var imageContainer = rec.querySelector('.t486__imgcontainer');
    var imageHeight = images[0].clientWidth;
    if (window.innerWidth > 980) {
        for (var i = 0; i < images.length; i++) {
            images[i].style.height = imageHeight + 'px'
        }
        textWrapper.style.height = imageContainer.clientWidth + 'px'
    } else {
        var imageStyle = getComputedStyle(images[0], null);
        var imagePaddingLeft = parseInt(imageStyle.paddingLeft) || 0;
        var imagePaddingRight = parseInt(imageStyle.paddingRight) || 0;
        var imageWidth = images[0].clientWidth - (imagePaddingLeft + imagePaddingRight);
        for (var i = 0; i < images.length; i++) {
            images[i].style.height = imageWidth + 'px'
        }
        textWrapper.style.height = 'auto'
    }
}
function t1016_onSuccess(form) {
    t_onFuncLoad('t_forms__onSuccess', function() {
        t_forms__onSuccess(form)
    })
}
