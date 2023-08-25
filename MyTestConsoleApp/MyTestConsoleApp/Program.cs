global using MyTestConsoleApp.Models;

// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

// get the name
Console.WriteLine("What is your name?");
var name = Console.ReadLine();
var currentDate = DateTime.Now;
Console.WriteLine($"{Environment.NewLine}Hello, {name}, on {currentDate:d}");

// generate a list of random numbers
var randomNumberList = new List<int>();
for (int i = 0; i < 100; i++)
    randomNumberList.Add(Random.Shared.Next(1, 1000));

// get index of greatest number
var greatestNumberValue = randomNumberList.Max();
var greatestNumberIndex = randomNumberList.IndexOf(greatestNumberValue);
Console.WriteLine($"Greatest Value: {greatestNumberValue}");
Console.WriteLine($"Index: {greatestNumberIndex}");

// create mymodel
var mymodel = new MyModel { Id = 1 };
Console.WriteLine($"mymodel: {mymodel.Id}");

Console.ReadKey();