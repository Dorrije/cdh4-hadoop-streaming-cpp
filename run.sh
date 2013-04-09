./build.sh
hadoop fs -put src/string_split.cc input.txt 2> /dev/null 1> /dev/null
hadoop fs -rm -r output 2> /dev/null 1> /dev/null
hadoop jar /usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-*.jar -file ./src/word_count_mapper -mapper ./word_count_mapper -file ./src/word_count_reducer -reducer ./word_count_reducer -input input.txt -output output
