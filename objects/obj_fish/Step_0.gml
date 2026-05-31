if (alarm[0] >= 0) {
    
    image_alpha = 0.7;
}

if (alarm[0] <= 0) {
    image_alpha = clamp(image_alpha - 0.01, 0, 1);
}