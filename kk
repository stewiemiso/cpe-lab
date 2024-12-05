def factorial(n):
    """Calculate the factorial of a positive integer n."""
    if n == 0 or n == 1:
        return 1
    result = 1
    for i in range(2, n + 1):
        result *= i
    return result

def main():
    for _ in range(3):  # Repeat the process 3 times
        try:
            user_input = int(input("Please enter a positive integer: "))
            if user_input < 0:
                print("Error: The number entered is negative. Please enter a positive integer.")
                break  # Stop the program if a negative number is entered
            else:
                fact = factorial(user_input)
                print(f"The factorial of {user_input} is {fact}.")
        except ValueError:
            print("Error: Invalid input. Please enter a valid positive integer.")

if __name__ == "__main__":
    main()