FROM rocker/verse:3.5.2

RUN install2.r \
  GGally \
  ggridges \
  ggrepel
RUN installGithub.r \
  maxheld83/pensieve@e36a32f02ec364183197214f9c18c61cc2df1cee \
  maxheld83/qmethod@d85ad649f09a591b9468b8b236d26e8ec6f66cda
