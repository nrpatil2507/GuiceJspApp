package com.main.person;

import java.util.List;

public interface PersonService {

	void InsertData(Person person);

	void DisplayData();

	void DeleteData(Person p);

	Person FindPerson(int pid);

	void UpdateData(Person p);

	List<Person> Getallperson();
}
