# making cards

concourse <- readxl::read_xlsx(path = "concourse.xlsx", sheet = 1)

# for webtool
for (i in concourse$handle) {
  item_text <- as.character(concourse[concourse$handle == i, "german"])
  item_handle <- i
  pensieve:::make_cards(item_text = item_text,
                        item_handle = item_handle,
                        output_dir = file.path(getwd(), "zaw17app/www/cards"),
                        fontsize = "huge",
                        language = "ngerman",
                        paperwidth = 8.5,
                        paperheight = 4.9075,
                        top = 0.3,
                        bottom = 0,
                        left = 0.5,
                        right = 0.5,
                        extra_preamb_args = c(
                          "\\usepackage[sfdefault]{universalis}"
                        ),
                        alignment = "justified")
}

# on paper
devtools::install_github(repo = "maxheld83/qmethod")
library(qmethod)
c4print <- matrix(data = concourse$german, dimnames = list(item = concourse$handle, language = "german"))
qmethod::make.cards(q.set = c4print, study.language = "german", output.pdf = TRUE, duplex.double = TRUE, wording.font.size = "\\large", show.handles = TRUE)

