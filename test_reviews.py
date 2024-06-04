import unittest
from reviews import is_valid_date, is_valid_email, has_only_latin_chars

class Test_test_reviews(unittest.TestCase):
    def test_valid_emails(self):
        list_mail_cor = ["m.m@mail.ru", "m1@gmail.com", "kuznechik18@mail.com", "kuz%11@gmail.com", "kuz-nechik13%n@mail.ru", "john.doe@example.com", "bob123@yahoo.co.jp", "nathan.miller@mydomain.org", "peter_parkinson123@gmail.com",
                         "emma-jones@example.net", "maria_garcia123@example.com", "alice.smith123@hotmail.com"]
        for email in list_mail_cor:
            with self.subTest(email=email):
                self.assertTrue(is_valid_email(email))

    def test_invalid_emails(self):
        list_mail_uncor = ["", "1", "m1@", "m1@@mail.com", "mail.com", "m@mail.", "m@.com", "m@com", "m1@.mail.com", "m@mail.com", "m@mail..com", "m@mail..com", 
                           "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm@mail.com", ".@mail.ru"]
        for email in list_mail_uncor:
            with self.subTest(email=email):
                self.assertFalse(is_valid_email(email))

    def test_valid_date(self):
        list_date_cor = ["2024-06-04"]
        for date in list_date_cor:
            with self.subTest(date=date):
                self.assertFalse(is_valid_date(date))
    
    def test_invalid_date(self):
        list_date_uncor = ["2024-06-01, 06.04.2024, 06/04/2024, 24-06-04, 2024-13-02"]
        for date in list_date_uncor:
            with self.subTest(date=date):
                self.assertFalse(is_valid_date(date))

    def test_valid_comment(self):
        list_comment_cor = ["Thank you", "everything is fine", "I liked everything"]
        for comment in list_comment_cor:
            with self.subTest(comment=comment):
                self.assertFalse(has_only_latin_chars(comment))

    def test_valid_comment(self):
        list_comment_cor = ["—пасибо", "все хорошо", "всЄ понравилось"]
        for comment in list_comment_cor:
            with self.subTest(comment=comment):
                self.assertFalse(has_only_latin_chars(comment))

