%{
int count = 0;

int print_count() {
    printf("%d\n", count);
}

int increase_count() {
    count++;
}

%}

%%
inc         {increase_count();}
get         {print_count();}
%%



int main()
{
  yylex();
}
