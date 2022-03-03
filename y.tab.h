/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ANA = 258,
     NTA = 259,
     NTI = 260,
     HNA = 261,
     NTUMA = 262,
     ADJF = 263,
     HIYA = 264,
     ANAPR = 265,
     SUBM = 266,
     PRADV = 267,
     SUBF = 268,
     SUBMP = 269,
     SUBFP = 270,
     ADJ = 271,
     QUEST = 272,
     TADV = 273,
     NADV = 274,
     NTIFF = 275,
     NTAF = 276,
     ANAF = 277,
     HOWAF = 278,
     HOMAN = 279,
     HIYAF = 280,
     HNAF = 281,
     HOMAF = 282,
     NTOMAF = 283,
     ANANTAN = 284,
     NTAPR = 285,
     NTIPR = 286,
     ADJMP = 287,
     HOWAPR = 288,
     ADJFP = 289,
     HIYAPR = 290,
     HNAPR = 291,
     HIYAP = 292,
     HOMAPR = 293,
     ANAP = 294,
     IMPF = 295,
     EXCL = 296,
     NTAP = 297,
     HNAP = 298,
     NTOMAPR = 299,
     NTOMAP = 300,
     HOMAP = 301,
     IMPP = 302,
     COMMA = 303,
     PINTERO = 304,
     PADV = 305,
     FADV = 306,
     VERBR = 307,
     HIYAN = 308,
     HNAN = 309,
     HOMA = 310,
     HOWA = 311,
     HOWAN = 312,
     NTOMA = 313,
     NTOMAN = 314,
     NUM = 315
   };
#endif
/* Tokens.  */
#define ANA 258
#define NTA 259
#define NTI 260
#define HNA 261
#define NTUMA 262
#define ADJF 263
#define HIYA 264
#define ANAPR 265
#define SUBM 266
#define PRADV 267
#define SUBF 268
#define SUBMP 269
#define SUBFP 270
#define ADJ 271
#define QUEST 272
#define TADV 273
#define NADV 274
#define NTIFF 275
#define NTAF 276
#define ANAF 277
#define HOWAF 278
#define HOMAN 279
#define HIYAF 280
#define HNAF 281
#define HOMAF 282
#define NTOMAF 283
#define ANANTAN 284
#define NTAPR 285
#define NTIPR 286
#define ADJMP 287
#define HOWAPR 288
#define ADJFP 289
#define HIYAPR 290
#define HNAPR 291
#define HIYAP 292
#define HOMAPR 293
#define ANAP 294
#define IMPF 295
#define EXCL 296
#define NTAP 297
#define HNAP 298
#define NTOMAPR 299
#define NTOMAP 300
#define HOMAP 301
#define IMPP 302
#define COMMA 303
#define PINTERO 304
#define PADV 305
#define FADV 306
#define VERBR 307
#define HIYAN 308
#define HNAN 309
#define HOMA 310
#define HOWA 311
#define HOWAN 312
#define NTOMA 313
#define NTOMAN 314
#define NUM 315



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{
/* Line 2058 of yacc.c  */
#line 8 "tradd.y"
 char* s; int ent;

/* Line 2058 of yacc.c  */
#line 180 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
