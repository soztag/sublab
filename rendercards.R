# making cards

concourse <- readxl::read_xlsx(path = "concourse.xlsx", sheet = 1)
for (i in concourse$handle) {
  item_text <- as.character(concourse[concourse$handle == i, "german"])
  item_handle <- as.character(concourse[concourse$handle == i, "kurz"])
  pensieve:::make_cards(item_text = item_text,
                        item_handle = item_handle,
                        output_dir = file.path(getwd(), "cards"),
                        fontsize = "Huge",
                        language = "ngerman",
                        paperwidth = 8.5,
                        paperheight = 4.9075,
                        top = 0,
                        bottom = 0,
                        left = 0.3,
                        right = 0.3)
}
