using System;
using System.Collections.Generic;
using System.Linq;

namespace RandomApp
{
    // A simple enum to demonstrate basic usage
    enum WeekDays
    {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    // A random class to represent a person with some basic properties
    class Person
    {
        public string Name { get; set; }
        public int Age { get; set; }

        // Constructor
        public Person(string name, int age)
        {
            Name = name;
            Age = age;
        }

        // A method that prints details of the person
        public void Greet()
        {
            Console.WriteLine($"Hello! My name is {Name} and I am {Age} years old.");
        }

        // A random method to simulate a birthday
        public void CelebrateBirthday()
        {
            Age++;
            Console.WriteLine($"{Name} is now {Age} years old! Happy Birthday!");
        }
    }

    // Main program class
    class Program
    {
        static void Main(string[] args)
        {
            // Create a list of random people
            List<Person> people = new List<Person>()
            {
                new Person("Alice", 25),
                new Person("Bob", 30),
                new Person("Charlie", 22)
            };

            // Use a loop to make each person greet
            foreach (var person in people)
            {
                person.Greet();
            }

            // Simulate random birthdays
            Random random = new Random();
            int randomIndex = random.Next(people.Count);
            people[randomIndex].CelebrateBirthday();

            // Enum example
            WeekDays today = (WeekDays)random.Next(7);
            Console.WriteLine($"Today is: {today}");

            // LINQ example: Find all people older than 25
            var olderThan25 = people.Where(p => p.Age > 25).ToList();
            Console.WriteLine("People older than 25:");
            foreach (var person in olderThan25)
            {
                Console.WriteLine(person.Name);
            }

            // A random function to demonstrate recursion (calculating factorial)
            Console.WriteLine($"Factorial of 5 is: {Factorial(5)}");

            // Exit program
            Console.WriteLine("Program ended. Press any key to exit.");
            Console.ReadKey();
        }

        // Recursive method to calculate factorial
        static int Factorial(int n)
        {
            if (n <= 1)
                return 1;
            else
                return n * Factorial(n - 1);
        }
    }
}
