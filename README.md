# chiperapps

The Flutter application that implements cryptography with the Caesar Cipher or Vigenere Cipher algorithms, uses the ASCII (American Standard Code for Information Interchange) character representation in the encryption and decryption process.

The formula ((ascii - 97 - 3 + 26) % 26) + 97 used in the code is part of the Caesar Cipher algorithm implementation in Flutter. The formula is used to shift the ASCII integer value of a text message character 3 characters to the left (in alphabetical order) or 3 characters to the right (in alphabetical order) depending on whether the text message is being encrypted or decrypted.

The explanation of each part of the formula is as follows:

1.) (ascii - 97 - 3 + 26): Decreases the ASCII integer value by 97 to move the ASCII value from alphabetical order to an integer between 0 to 25, then decreases  the value by 3 to shift 3 characters to the left (if it's being encrypted) or to the right (if it's being decrypted), and incremented by 26 to ensure the operation remains positive.

2.) % 26: The result of the previous operation is then taken by modulus 26 to ensure that the value is in the integer range between 0 to 25.

3.) + 97: The result of the modulus operation is then added to 97 again to return the ASCII values to their original alphabetical order.

By using this formula, each character of a text message in the Caesar Cipher algorithm can be easily encrypted or decrypted by simply shifting as many as n characters in alphabetical order, where n is the given encryption or decryption key.
