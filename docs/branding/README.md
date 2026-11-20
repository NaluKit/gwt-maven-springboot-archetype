# GWT Spring Boot Archetype branding

The gecko assembles three modules, representing a ready-to-use foundation for a modular
GWT and Spring Boot application. The artwork follows the Paniolo and Pololei color palette.

## Files

| File | Use |
| --- | --- |
| `gwt-springboot-banner.svg` / `.png` | Horizontal logo for light backgrounds, including a README |
| `gwt-springboot-banner-dark.svg` / `.png` | Horizontal logo for dark backgrounds |
| `gwt-springboot-logo.svg` / `.png` | Stacked logo for light backgrounds |
| `gwt-springboot-logo-dark.svg` / `.png` | Stacked logo for dark backgrounds |
| `gwt-springboot-icon.svg` / `.png` | Gecko and modules, square canvas, light backgrounds |
| `gwt-springboot-icon-dark.svg` / `.png` | Gecko and modules, square canvas, dark backgrounds |
| `gwt-springboot-mark.svg` / `.png` | Simplified three-module mark for small sizes |
| `gwt-springboot-mark-dark.svg` / `.png` | Small mark for dark backgrounds |
| `gwt-springboot-favicon.svg` | Pale and turquoise module mark on a rounded navy tile |
| `gwt-springboot-favicon-32.png` | Browser favicon, 32 × 32 px |
| `gwt-springboot-favicon-180.png` | Apple touch icon, 180 × 180 px |
| `gwt-springboot-favicon-512.png` | App icon, 512 × 512 px |
| `favicon.ico` | Browser favicon containing 16, 32 and 48 px images |

## Colors and construction

- Navy: `#01244F`
- Turquoise: `#019ABC`
- Pale blue for dark backgrounds: `#E2ECF5`

SVGs use solid vector shapes with exactly these colors. There are no embedded bitmap images,
fonts, filters, gradients, opacity effects or external resources. The original gecko and
wordmark contours were cleaned and traced to smooth paths. The three blocks were redrawn
as rounded rectangles. The turquoise tail is a separate vector shape. Lettering is outlined,
so it displays consistently without installing a font.

Logos, banners, icons and marks have transparent backgrounds. Dark variants replace navy
with pale blue and retain turquoise; they do not add a background. Favicons have a navy tile
with transparent corners. Use the three-module mark at 16–32 px; the complete gecko is
intended for larger sizes.

PNGs are rendered from the matching SVGs: banner 900 × 289 px, stacked logo 640 × 707 px,
icon 256 × 256 px and mark 512 × 512 px. Fully covered PNG pixels use the exact brand colors;
edge smoothing uses partial alpha. The original concept is kept outside this repository.

## README usage

```html
<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="docs/branding/gwt-springboot-banner-dark.svg">
    <img src="docs/branding/gwt-springboot-banner.svg" alt="GWT Spring Boot Maven Archetype" width="480">
  </picture>
</p>
```

## Favicons

When the files are served from the same directory as the page:

```html
<link rel="icon" href="gwt-springboot-favicon.svg" type="image/svg+xml">
<link rel="icon" href="favicon.ico" sizes="16x16 32x32 48x48">
<link rel="apple-touch-icon" href="gwt-springboot-favicon-180.png">
```

## Use of the logo

This logo identifies the NaluKit GWT Spring Boot Maven Archetype project. As with the
Paniolo branding, the logo is not offered under the code's Apache License 2.0. Use it
unchanged to refer to this project; do not use it to identify other products or imply
endorsement by NaluKit or Frank Hossfeld.
