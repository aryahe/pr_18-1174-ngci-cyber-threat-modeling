FILES=README.md \
	术语表.md \
	缩略语列表.md \
	01介绍.md \
	02威胁建模框架和方法.md \
	03特定威胁模型.md \
	04分析与评估.md \
	05初始网络威胁模型.md \
	06结论.md \
	术语表.md \
	参考清单.md


.PHONY: epub

all: epub


epub:
	mkdir -p out
	pandoc -f markdown+smart -t markdown-smart --to epub3 -o out/ngci-cyber-threat-modeling.epub --file-scope --toc --epub-chapter-level=2 --data-dir=epub --template=epub/template.html  $(FILES)
	# pandoc -f markdown+smart -t markdown-smart --to epub3 -o out/ngci-cyber-threat-modeling.epub --file-scope --toc --epub-chapter-level=2 --data-dir=epub --template=epub/template.html README.md 术语表.md 缩略语列表.md  01介绍.md  02威胁建模框架和方法.md  03特定威胁模型.md  04分析与评估.md  05初始网络威胁模型.md  06结论.md  术语表.md  参考清单.md

	