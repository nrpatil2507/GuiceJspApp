package com.main.person;

import com.google.inject.Guice;
import com.google.inject.Injector;

public class Main {

	public static void main(String[] args) {

		Injector injector = Guice.createInjector(new PersonModule());
		@SuppressWarnings("unused")
		Persistanceinit ps = injector.getInstance(Persistanceinit.class);
		PersonService ps1 = injector.getInstance(PersonService.class);

		Person p = new Person();
		p.setFname("nutan");
		p.setLname("patil");
		p.setEmail("nutan@gmail.com");
		p.setAdd("surat");
		p.setContactno("9714256465");
		ps1.InsertData(p);

		Person p1 = new Person();
		p1 = ps1.FindPerson(5);
		ps1.DeleteData(p1);

		ps1.DisplayData();

		Person p2 = new Person();
		p2 = ps1.FindPerson(7);
		p2.setFname("riya");
		p2.setLname("patel");

		ps1.UpdateData(p2);

		ps1.DisplayData();

	}

}
