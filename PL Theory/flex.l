/*
 * Sample Scanner1:
 * Description: Replace the string "name" from standard input
 *              with the user's login name (e.g. lgao)
 * Usage: (1) $ flex flex.l
 *        (2) $ gcc lex.yy.c -lfl
 *        (3) $ ./a.out
 *            stdin> name
 *     	      stdin> Ctrl-D
 */



%%
name	printf("%s\n", "Dima");
%%

int main()
{
  yylex();
}
