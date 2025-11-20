:- module(grade_school, [create_school/1, add_student/4, roster/2, grade/3]).

create_school(school([])).

add_student(school(Students), Name, Grade, school([student(Name, Grade)|Students])) :-
    \+ member(student(Name, _), Students).

roster(school(Students), Roster) :-
    findall((Grade, Name)-Name, member(student(Name, Grade), Students), Keyed),
    keysort(Keyed, Sorted),
    findall(Name, member(_-Name, Sorted), Roster).

grade(school(Students), GradeNum, Names) :-
    findall(Name, member(student(Name, GradeNum), Students), UnsortedNames),
    sort(UnsortedNames, Names).