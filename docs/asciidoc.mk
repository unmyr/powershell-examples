IMAGES_DIR=images
CP_OPTS=-n -l
ROUGE_STYLE=monokai_sublime

AD_OPTS_HTML5_COMMON=\
--backend=html5 \
-a imagesdir=$(IMAGES_DIR)

AD_OPTS_HTML5_ROUGE=\
$(AD_OPTS_HTML5_COMMON) \
-r asciidoctor-diagram \
-a source-highlighter=rouge \
-a rouge-style=$(ROUGE_STYLE)

AD_OPTS_HTML5_STEM=\
$(AD_OPTS_HTML5_COMMON)