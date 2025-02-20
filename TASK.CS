using System;
namespace calculator
{
    class program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("enter first num");
            int num1 = int.Parse(Console.ReadLine());
            Console.WriteLine("enter second num");
            int num2 = int.Parse(Console.ReadLine());
            Console.WriteLine("enter operator");
            char op = Console.ReadLine()[0];
            switch (op)
            {
                case '*':
                    Console.WriteLine("product of nums = " + (num1 * num2));
                    break;
                case '+':
                    Console.WriteLine("sum of nums= " + (num1 + num2));
                    break;
                case '-':
                    Console.WriteLine("differnce of nums= " + (num1 - num2));
                    break;
                case '/':
                    Console.WriteLine("divison of nums= " + (num1 / num2));
                    break;

                default:
                    Console.WriteLine("invalid operator");
                    break;
            }

        }

    }
}