
import unittest
import input_pattern

class Test_test_(unittest.TestCase):
    def test_correct_name(self):
        list_name_cor = ["John Doe", "John", "Alice", "alice"]
        for name in list_name_cor:
                self.assertTrue(input_pattern.validate_name(name), name)
    def test_incorrect_name(self):
        list_name_incor = ["John 123", "John$%", "$%^"]
        for name in list_name_incor:
                self.assertFalse(input_pattern.validate_name(name), name)
    
                    
    def test_correct_phone(self):
        list_phone_cor = ["+79123456789", "+71234567890", "81234567890"]
        for number in list_phone_cor:
                self.assertTrue(input_pattern.validate_phone_number(number), number)

    def test_incorrect_phone(self):
        list_phone_incor = ["1234567890", "+7123456789012", "", "1", "71234567890", "-81234567890", "-71234567890"]
        for number in list_phone_incor:
                self.assertFalse(input_pattern.validate_phone_number(number), number)
    

if __name__ == '__main__':
    unittest.main()
