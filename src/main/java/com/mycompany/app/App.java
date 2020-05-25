package com.mycompany.app;

/**
 * Hello world!
 */
public class App
{
    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().calculate(args));
    }

    private final String calculate(String[] args) {
		int first = Integer.parseInt(args[0]);
		char operator = args[1].charAt(0);
		int second = Integer.parseInt(args[2]);
        switch(operator) {
			case('+'):
				System.out.println(first + second);
				break;
			case('-'):
				System.out.println(first - second);
				break;
			default:
				System.out.println("Incorrect entry");
		}
    }

}
