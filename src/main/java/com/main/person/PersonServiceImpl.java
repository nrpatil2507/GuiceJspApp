package com.main.person;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.google.inject.Inject;
import com.google.inject.Provider;

public class PersonServiceImpl implements PersonService {

	@Inject
	Provider<EntityManager> em;

	@Override
	public void InsertData(Person person) {
		em.get().getTransaction().begin();
		em.get().persist(person);
		em.get().getTransaction().commit();

	}

	@Override
	public void DisplayData() {
		Query q = em.get().createQuery("from Person");
		@SuppressWarnings("unchecked")
		List<Person> p = q.getResultList();
		System.out.println("fname\tlname");
		for (Person person : p) {
			System.out.print(person.getFname() + "\t");
			System.out.println(person.getLname());
		}
	}

	@Override
	public void DeleteData(Person per) {

		em.get().getTransaction().begin();
		em.get().remove(per);
		em.get().getTransaction().commit();
	}

	@Override
	public Person FindPerson(int pid) {
		Person p = em.get().find(Person.class, pid);
		return p;
	}

	@Override
	public void UpdateData(Person p) {
		em.get().getTransaction().begin();
		em.get().merge(p);
		em.get().getTransaction().commit();

	}

	@Override
	public List<Person> Getallperson() {
		Query q = em.get().createQuery("from Person");
		@SuppressWarnings("unchecked")
		List<Person> p = q.getResultList();
		return p;
	}

}
