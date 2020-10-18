#include <string>
#include "gtest/gtest.h"
#include "Greetings.h"

using namespace example; 

TEST(Greetings, constructor) {
	// Arrange
	Greetings *greet = new Greetings();

	// Act

	// Assert
	ASSERT_TRUE(greet);
}

TEST(Greetings, hello) {
	// Arrange
	string expected = "Hello, World!"; 
	Greetings *greet = new Greetings();

	// Act
	string actual = greet->hello();  

	// Assert
	EXPECT_EQ(expected, actual);
}