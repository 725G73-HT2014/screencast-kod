//  main.c

#include "Book.h"

int main(int argc, const char * argv[])
{
    
    struct Book lotr;

    lotr.title = "The Lord of the Rings";
    lotr.author = "J.R.R. Tolkien";
    
    /** Print adresses */
    printf("Struct Address: %p\n", &lotr);
    printf("Title Adress:   %p\n", &lotr.title);
    printf("Author Adress:  %p\n", &lotr.author);
    
    /** Print actual content */
    printf("Title Content:  '%s'\n", lotr.title);
    printf("Author Content: '%s'\n", lotr.author);
    
    
    return 0;
}