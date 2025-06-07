// Reduce alpha (opacity) gradually
image_alpha -= 0.01; // adjust speed of fade by changing this value

// When fully transparent, destroy the instance
if (image_alpha <= 0) {
    instance_destroy();
}
