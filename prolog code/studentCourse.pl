%....student facts....

student(rahim).
student(karim).
student(sakib).
student(nadia).

%....course facts....
course(cse101).
course(cse102).
course(math101).

%....enrollment facts...
enrolled(rahim,cse101).
enrolled(rahim,math101).

enrolled(karim,cse101).
enrolled(karim,cse102).

enrolled(sakib,cse102).

enrolled(nadia,math101).
enrolled(nadia,cse101).

%....rules....
takes(student1,course):-
	enrolled(student1,course),
	enrolled(student2,course),
	student1 \=student2.
