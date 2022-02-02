# def to_camel_case(text):
#     for item,value in enumerate(text):
#         if text[item] == '-':
#             text[item+1]=text[item+1]
#         elif text[item] == '_':
#             text[item+1]=text[item+1]
#         else:
#             continue
            
#     return text

# to_camel_case("the_cat_is_black")

# def to_camel_case(text):
#     if '_' in text:
#         the_list = text.split('_')
#         the_string = the_list[0]
#         for word in range(1,len(the_list)):
#             the_string+=the_list[word].title()
#         print(the_string)
#     elif '-' in text:
#         the_list = text.split('-')
#         the_string = the_list[0]
#         for word in range(1,len(the_list)):
#             the_string+=the_list[word].title()
#         print(the_string)

     
# to_camel_case("the_cat_is_black")
# to_camel_case("the-dog-is-blue")

s = 23%2

print(s)