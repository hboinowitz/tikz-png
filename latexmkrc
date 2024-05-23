END { 
    system('magick -density 300 test.pdf test.png')
}