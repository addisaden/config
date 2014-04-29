echo "" | gs -dNOPAUSE -sDEVICE=jpeggray -r144 -dBatch -sOutputFile=$1_%03d.jpg -q $1
