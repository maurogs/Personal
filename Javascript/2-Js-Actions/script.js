function changeImage() {
    var image = document.getElementById('myImage');
    if (image.src.match("google")) {
        image.src = "google-clean.jpg";
    } else {
        image.src = "google-draw.jpg";
    }
}

