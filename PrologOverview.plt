:- include('PrologOverview').
:- use_module(library(apply)).

:- begin_tests('PrologOverview').

test(exercise1, Output == "The sum is: 62790\n") :-
    with_output_to(string(Output), exercise1()).

test(limited_sum, [nondet]) :-
    \+ limited_sum(200, 1287, 62780),
    limited_sum(200, 1287, 62790),
    \+ limited_sum(15, 78, 300),
    limited_sum(15, 78, 260),
    \+ limited_sum(331, 1503, 82470),
    limited_sum(331, 1503, 82485).

test(exercise2, Output == "HB\nHB\na1\na1\na1\n1a\n") :-
    with_output_to(string(Output), exercise2()).

test(first_longer_shorter_no_output, Output == "") :-
    with_output_to(string(Output), first_longer_shorter("Hello","Bye","HB")).

test(first_longer_shorter, [nondet]) :-
    current_predicate(first_longer_shorter/3),
    \+ first_longer_shorter("Hello","Bye","BH"),
    first_longer_shorter("Hello","Bye","HB"),
    \+ first_longer_shorter("Bye","Hello","BH"),
    first_longer_shorter("Bye","Hello","HB"),
    \+ first_longer_shorter("1","abc","1a"),
    first_longer_shorter("1","abc","a1"),
    \+ first_longer_shorter("abc","1","1a"),
    first_longer_shorter("abc","1","a1"),
    \+ first_longer_shorter("abc","123","1a"),
    first_longer_shorter("abc","123","a1"),
    \+ first_longer_shorter("123","abc","a1"),
    first_longer_shorter("123","abc","1a"),
    \+ first_longer_shorter("x x x x x x x x x x x x x x x x x x x x x x x x s x s sdasf dsfsdf sdf sdf sdfewfasf fsakkkasdfkwa o93 2","sad","sx"),
    first_longer_shorter("x x x x x x x x x x x x x x x x x x x x x x x x s x s sdasf dsfsdf sdf sdf sdfewfasf fsakkkasdfkwa o93 2","sad","xs"),
    \+ first_longer_shorter("\taddasdad \n\n we","\n \t\n\n\n\t\tx x x x x x x x x x x x x x x x x x x x x x x x s x s sdasf dsfsdf sdf sdf sdfewfasf fsakkkasdfkwa o93 2","\t\n"),
    first_longer_shorter("\taddasdad \n\n we","\n \t\n\n\n\t\tx x x x x x x x x x x x x x x x x x x x x x x x s x s sdasf dsfsdf sdf sdf sdfewfasf fsakkkasdfkwa o93 2","\n\t").

test(first_longer_shorter_error1, [error(domain_error(non_empty_string, _))]) :-
    current_predicate(first_longer_shorter/3),
    first_longer_shorter("","Test",_).

test(first_longer_shorter_error2, [error(domain_error(non_empty_string, _))]) :-
    current_predicate(first_longer_shorter/3),
    first_longer_shorter("Test","",_).

test(exercise3, Output == "1, 2, 3, 4, 6, 7, 8, 9, 10, 5\n") :-
    with_output_to(string(Output), exercise3()).

test(moved_to_end_no_output, Output == "") :-
    with_output_to(string(Output), moved_to_end([1,2,3,4,5,6,7,8,9,10],1,[1,3,4,5,6,7,8,9,10,2])).

test(moved_to_end, [nondet]) :-
    current_predicate(moved_to_end/3),
    maplist(moved_to_end([1,2,3,4,5,6,7,8,9,10]),[0,1,2,3,4,5,6,7,8,9], [[2,3,4,5,6,7,8,9,10,1],[1,3,4,5,6,7,8,9,10,2],[1,2,4,5,6,7,8,9,10,3],[1,2,3,5,6,7,8,9,10,4],[1,2,3,4,6,7,8,9,10,5],[1,2,3,4,5,7,8,9,10,6],[1,2,3,4,5,6,8,9,10,7],[1,2,3,4,5,6,7,9,10,8],[1,2,3,4,5,6,7,8,10,9],[1,2,3,4,5,6,7,8,9,10]]),
    maplist(moved_to_end([10000,-243,32,367845]),[0,1,2,3], [[-243,32,367845,10000],[10000,32,367845,-243],[10000,-243,367845,32],[10000,-243,32,367845]]),
    maplist(moved_to_end([1,2,3,1,2,3,4,4,3,2]),[0,1,2,3,4,5,6,7,8], [[2,3,1,2,3,4,4,3,2,1],[1,3,1,2,3,4,4,3,2,2],[1,2,1,2,3,4,4,3,2,3],[1,2,3,2,3,4,4,3,2,1],[1,2,3,1,3,4,4,3,2,2],[1,2,3,1,2,4,4,3,2,3],[1,2,3,1,2,3,4,3,2,4],[1,2,3,1,2,3,4,3,2,4],[1,2,3,1,2,3,4,4,2,3]]),
    \+ moved_to_end([1,2,3,4,5,6,7,8,9,10],0,[1,2,3,4,5,6,7,8,9,10]),
    \+ moved_to_end([1,2,3,4,5,6,7,8,9,10],0,[1,3,4,5,6,7,8,9,10,2]),
    \+ moved_to_end([1,2,3,4,5,6,7,8,9,10],3,[1,2,3,5,6,7,8,9,10]).

test(exercise4, Output == "9\n9\n28\n28\n406\n406\n") :-
    with_output_to(string(Output), exercise4()).

test(recursive_seq, [nondet]) :-
    \+ recursive_seq(0,0),
    \+ recursive_seq(9,42),
    maplist(recursive_seq, [0,1,2,3,4,5,6,7,8,9,10,20,30], [1,2,3,4,6,9,13,19,28,41,60,2745,125491]).
    
test(recursive_seq_error1, [error(domain_error(not_less_than_zero, _))]) :-
    recursive_seq(-30,_).

test(recursive_seq_error2, [error(domain_error(not_less_than_zero, _))]) :-
    recursive_seq(-5,_).

test(recursive_seq_error3, [error(domain_error(not_less_than_zero, _))]) :-
    recursive_seq(-1,_).
    
test(dynamic_seq, [nondet]) :-
    \+ dynamic_seq(0,0),
    \+ dynamic_seq(9,42),
    findall(X,between(0,99,X), Numbers),
    maplist(dynamic_seq, Numbers, [1,2,3,4,6,9,13,19,28,41,60,88,129,189,277,406,595,872,1278,1873,2745,4023,5896,8641,12664,18560,27201,39865,58425,85626,125491,183916,269542,395033,578949,848491,1243524,1822473,2670964,3914488,5736961,8407925,12322413,18059374,26467299,38789712,56849086,83316385,122106097,178955183,262271568,384377665,563332848,825604416,1209982081,1773314929,2598919345,3808901426,5582216355,8181135700,11990037126,17572253481,25753389181,37743426307,55315679788,81069068969,118812495276,174128175064,255197244033,374009739309,548137914373,803335158406,1177344897715,1725482812088,2528817970494,3706162868209,5431645680297,7960463650791,11666626519000,17098272199297,25058735850088,36725362369088,53823634568385,78882370418473,115607732787561,169431367355946,248313737774419,363921470561980,533352837917926,781666575692345,1145588046254325,1678940884172251,2460607459864596,3606195506118921,5285136390291172,7745743850155768,11351939356274689,16637075746565861,24382819596721629,35734758952996318]).
    
test(dynamic_seq_error1, [error(domain_error(not_less_than_zero, _))]) :-
    dynamic_seq(-30,_).

test(dynamic_seq_error2, [error(domain_error(not_less_than_zero, _))]) :-
    dynamic_seq(-5,_).

test(dynamic_seq_error3, [error(domain_error(not_less_than_zero, _))]) :-
    dynamic_seq(-1,_).
    
test(exercise5, Output == "Maximum value: 201\nAverage value: 8.688525\n") :-
    with_output_to(string(Output), exercise5()).
    
test(exercise5_different_file, Output == "Maximum value: -3\nAverage value: -14144.250000\n") :-
    rename_file("numbers.txt","numbers.cpy"),
    open("numbers.txt",write,Stream),
    catch( (
            write(Stream,"-34\n-12312\n-200\n-3\n-145\n-57\n-9494\n-90909\n"),
            close(Stream),
            with_output_to(string(Output), exercise5()) 
           ), _, _),
    delete_file("numbers.txt"),
    rename_file("numbers.cpy","numbers.txt").
    
test(exercise5_no_file, Output == "The file \"numbers.txt\" does not exist. Exiting.\n") :-
    rename_file("numbers.txt","numbers.cpy"),
    catch( with_output_to(string(Output), (exercise5() ; true)), _, _),
    rename_file("numbers.cpy","numbers.txt").
    
:- end_tests('PrologOverview').
