cp numbers.txt backup.txt
swipl -t "load_test_files([]), run_tests." -s PrologOverview.pl
mv backup.txt numbers.txt
