#!/bin/bash

# This generates a PDF with slides. While the presentation itself is done as live demo without the
# slides, having the PDF as a backup is useful and provides something to publish afterward.
#
# Unfortunately, the screenshots are in a 16:9 aspect ratio, not 4:3. Additionally, ImageMagick
# only includes 17 of the intended files in the PDF for some unknown reason. Rather than continuing
# to troubleshoot, I'll simply merge the PDFs manually.

# You may need to allow writing permissons for PDF:
# https://stackoverflow.com/a/53180170/859591


convert \
    ugly-surprise.jpg                          \
    ugly-surprise-with-title.png               \
    mandelbrot.png                             \
    mandelbrot-wiht-text.png                   \
                                               \
    -units PixelsPerInch                       \
    -density 96                                \
    -resize 2000x1500                          \
    -gravity center                            \
    -extent 2000x1500                          \
                                               \
    slides.pdf


convert \
    screenshots/Screenshot_from_2025-04-09_15-39-33.png         \
    screenshots/Screenshot_from_2025-04-09_15-40-01.png         \
    screenshots/Screenshot_from_2025-04-09_15-40-08.png         \
    screenshots/Screenshot_from_2025-04-09_15-40-20.png         \
    screenshots/Screenshot_from_2025-04-09_15-40-27.png         \
    screenshots/Screenshot_from_2025-04-09_15-40-47.png         \
    screenshots/Screenshot_from_2025-04-09_15-40-54.png         \
    screenshots/Screenshot_from_2025-04-09_15-41-01.png         \
    screenshots/Screenshot_from_2025-04-09_15-41-18.png         \
    screenshots/Screenshot_from_2025-04-09_15-41-53.png         \
    screenshots/Screenshot_from_2025-04-09_15-42-02.png         \
    screenshots/Screenshot_from_2025-04-09_15-42-09.png         \
    screenshots/Screenshot_from_2025-04-09_15-42-17.png         \
    screenshots/Screenshot_from_2025-04-09_15-42-24.png         \
    screenshots/Screenshot_from_2025-04-09_15-42-50.png         \
    screenshots/Screenshot_from_2025-04-09_15-43-31.png         \
                                                                \
    -units PixelsPerInch                                        \
    -density 96                                                 \
    -resize 1600x900                                            \
    -gravity center                                             \
    -extent 1600x900                                            \
                                                                \
    slides-screenshots1.pdf

convert \
    screenshots/Screenshot_from_2025-04-09_15-43-36.png         \
    screenshots/Screenshot_from_2025-04-09_15-43-44.png         \
    screenshots/Screenshot_from_2025-04-09_15-43-56.png         \
    screenshots/Screenshot_from_2025-04-09_15-44-10.png         \
    screenshots/Screenshot_from_2025-04-09_15-44-17.png         \
    screenshots/Screenshot_from_2025-04-09_15-44-44.png         \
    screenshots/Screenshot_from_2025-04-09_15-44-52.png         \
    screenshots/Screenshot_from_2025-04-09_15-45-00.png         \
    screenshots/Screenshot_from_2025-04-09_15-45-25.png         \
    screenshots/Screenshot_from_2025-04-09_15-45-38.png         \
    screenshots/Screenshot_from_2025-04-09_15-45-43.png         \
    screenshots/Screenshot_from_2025-04-09_15-46-17.png         \
    screenshots/Screenshot_from_2025-04-09_15-46-24.png         \
    screenshots/Screenshot_from_2025-04-09_15-46-32.png         \
                                                                \
    -units PixelsPerInch                                        \
    -density 96                                                 \
    -resize 1600x900                                            \
    -gravity center                                             \
    -extent 1600x900                                            \
                                                                \
    slides-screenshots2.pdf

convert \
    screenshots/Screenshot_from_2025-04-09_15-46-38.png         \
    screenshots/Screenshot_from_2025-04-09_15-46-41.png         \
    screenshots/Screenshot_from_2025-04-09_15-46-58.png         \
    screenshots/Screenshot_from_2025-04-09_15-47-06.png         \
    screenshots/Screenshot_from_2025-04-09_15-47-11.png         \
    screenshots/Screenshot_from_2025-04-09_15-47-13.png         \
    screenshots/Screenshot_from_2025-04-09_15-47-19.png         \
    screenshots/Screenshot_from_2025-04-09_15-47-24.png         \
    screenshots/Screenshot_from_2025-04-09_15-47-26.png         \
    screenshots/Screenshot_from_2025-04-09_16-22-41.png         \
                                                                \
    -units PixelsPerInch                                        \
    -density 96                                                 \
    -resize 1600x900                                            \
    -gravity center                                             \
    -extent 1600x900                                            \
                                                                \
    slides-screenshots3.pdf
