# SQL String Functions Practice Questions

This file contains 30 SQL practice questions covering string functions such as CONCAT, SUBSTR, LEFT, RIGHT, LENGTH, UPPER, LOWER, TRIM, REPLACE, POSITION, and more.

---

## 1. CONCAT, CONCAT_WS
1. Concatenate first_name and last_name of all employees.
2. Concatenate first_name, last_name, and email separated by commas.
3. Create a full address string by concatenating street, city, and state with a comma separator.

## 2. SUBSTR
4. Get the first 5 characters of each employee's email.
5. Extract the domain from each employee's email.
6. Show the last 4 characters of employee phone numbers.

## 3. LEFT, RIGHT
7. Get the LEFT 3 characters of first_name.
8. Get the RIGHT 2 characters of last_name.
9. Show the RIGHT 5 characters of postal codes.

## 4. LENGTH
10. Find the length of each employee's email.
11. Show employees whose first_name length > 5.
12. Get the average length of last_name.

## 5. UPPER, LOWER
13. Convert all first_name values to UPPERCASE.
14. Convert all last_name values to lowercase.
15. Show emails in uppercase where department_id = 2.

## 6. TRIM, LTRIM, RTRIM
16. Remove spaces from both sides of address field.
17. Remove spaces from the left side of city names.
18. Remove spaces from the right side of state names.

## 7. REPLACE
19. Replace 'gmail.com' with 'company.com' in emails.
20. Replace '-' with '' in phone numbers.
21. Replace spaces with underscores in last_name.

## 8. POSITION
22. Find the position of '@' in each email.
23. Find the position of 'son' in last_name.
24. Find the first occurrence position of 'a' in first_name.

## 9. Mixed String Functions
25. Extract domain from email and convert to uppercase.
26. Show employees whose email domain contains 'yahoo'.
27. Get first_name initials (first letter only) + '.' + last_name.
28. Mask all but last 4 digits of phone number with '*', e.g., '******1234'.
29. Show first 3 letters of last_name in uppercase + last 3 letters in lowercase.
30. Reverse the email string.

---

💡 **Tip:** Try using combinations of these functions in a single query for advanced practice.
