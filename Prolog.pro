
% Prolog to read .txt file in terminal.
% commands to use: 
%   swipl
%   ['Prolog.pro'].
%   read_file_line_by_line('puzzle_0.txt').

read_file_line_by_line('puzzle_0.txt') :-
    open('puzzle_0.txt', read, Stream, [encoding(utf8)]), % Specify utf-8 encoding.
    read_lines(Stream),
    close(Stream).

read_lines(Stream) :-
    \+ at_end_of_stream(Stream),  % Check if end of file is not reached
    read_line_to_string(Stream, Line),  % Read a line as a string
    writeln(Line),  % Print the line
    read_lines(Stream).  % Recurse to the next line

read_lines(_). 
