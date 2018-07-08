@default_foreground ||= @foreground
@default_background ||= @background
@default_shadow_color ||= @shadow_color

@default_font          = 'Noto Sans CJK JP'
@font_family           = find_font_family(@default_font)
@bold_font             = @default_font
@bold_font_family      = find_font_family(@bold_font)
@monospace_font        = 'Cica'
@monospace_font_family = find_font_family(@monospace_font)

@xxxx_large_font_size = screen_size(10 * Pango::SCALE)
@xxx_large_font_size  = screen_size(8 * Pango::SCALE)
@xx_large_font_size   = screen_size(6 * Pango::SCALE)
@x_large_font_size    = screen_size(5 * Pango::SCALE)
@large_font_size      = screen_size(4.5 * Pango::SCALE)
@normal_font_size     = screen_size(3.5 * Pango::SCALE)
@small_font_size      = screen_size(3.2  * Pango::SCALE)
@x_small_font_size    = screen_size(3 * Pango::SCALE)
@xx_small_font_size   = screen_size(2.8 * Pango::SCALE)
@xxx_small_font_size  = screen_size(2.5 * Pango::SCALE)
@script_font_size            = @x_small_font_size
@large_script_font_size      = @small_font_size
@x_large_script_font_size    = @large_font_size
@title_slide_title_font_size = @xxx_large_font_size

@block_quote_fill_color = "#f8f8f8"
@preformatted_fill_color = "#f8f8f8"

set_foreground(@default_foreground)
set_background(@default_background)

add_image_path("ruby-images")
include_theme("default-icon")
include_theme("default-title-text")
include_theme("default-text")
include_theme("default-title-slide")
include_theme("default-slide")
include_theme("default-item-mark")
include_theme("default-method-list")
include_theme("default-preformatted")
include_theme("default-block-quote")
include_theme("default-foot-text")
include_theme("default-description")
include_theme("image")
include_theme("table")
include_theme("newline-in-slides")
include_theme("per-slide-background-color")
include_theme("background-image-toolkit")
include_theme("per-slide-background-image")
include_theme("body-background-image")
include_theme("tag")
include_theme("syntax-highlighting")
include_theme("default-comment")

match(TitleSlide, Title) do |titles|
  titles.padding_bottom = @space * 2
  titles.prop_set("weight", "SemiBold")
end
