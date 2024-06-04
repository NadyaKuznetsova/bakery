import unittest
import novelty
from novelty import check_date_format, check_category_format, check_description_format

class TestDateFormat(unittest.TestCase):
    def test_invalid_dates(self):
        invalid_dates = ["2022-02-30", 
                         "2021/05/20", 
                         "2023-13-20", 
                         "10-05-2024",
                         "2020-00-01", 
                         "2021-4-15", 
                         "2022-10-5", 
                         "2023-05-00",
                         "16 θών 2024"]
        for date_str in invalid_dates:
            self.assertFalse(check_date_format(date_str), date_str)

    def test_valid_dates(self):
        valid_dates = ["2024-06-04"]
        for date_str in valid_dates:
            self.assertTrue(check_date_format(date_str), date_str)

class TestCategoryFormat(unittest.TestCase):
    def test_invalid_categories(self):
        invalid_categories = ["categor23", 
                              "123", 
                              "abcdefg123456789012345",
                              "%category", 
                              "special category!", 
                              "category&name", 
                              "invalidcategory123",
                              "category123", 
                              "special_Category", 
                              "category-test", 
                              "123Category"]
        for category in invalid_categories:
            self.assertFalse(check_category_format(category), category)

    def test_valid_categories(self):
        valid_categories = ["category", 
                            "Test", 
                            "longCategoryName"]
        for category in valid_categories:
            self.assertTrue(check_category_format(category), category)

class TestDescriptionFormat(unittest.TestCase):
    def test_invalid_descriptions(self):
        invalid_descriptions = ["Short desc", 
                                "12345678901234567890123456789012345678901234567890", 
                                "%Special characters *&^%$#@!",
                                "Description with~special characters%", 
                                "!@#$%^&*()Description", 
                                "Desc with"]
        for description in invalid_descriptions:
            self.assertFalse(check_description_format(description), description)

    def test_valid_descriptions(self):
        valid_descriptions = ["this is a valid description", 
                              "A long description with at least 20 characters", 
                              "Special characters allowed"]
        for description in valid_descriptions:
            self.assertTrue(check_description_format(description), description)

if __name__ == '__main__':
    unittest.main()

