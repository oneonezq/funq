/ emma
emma.f:"158.txt"
emma.b:"https://www.gutenberg.org/files/158/old/"
-1"[down]loading emma text";
.ut.download[emma.b;;"";""] emma.f;
emma.txt:{x where not x like "VOLUME*"} read0 `$emma.f
emma.chapters:1_"CHAPTER" vs "\n" sv 39_-373_emma.txt
emma.s:{(3+first x ss"\n\n\n")_x} each emma.chapters
