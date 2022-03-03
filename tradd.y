%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
    #include<ctype.h>
%}

%union { char* s; int ent;}
%start  phrase
%token <s> ANA NTA NTI HNA NTUMA ADJF HIYA ANAPR SUBM PRADV SUBF SUBMP SUBFP ADJ QUEST TADV NADV NTIFF NTAF ANAF HOWAF HOMAN HIYAF HNAF HOMAF NTOMAF ANANTAN NTAPR NTIPR ADJMP HOWAPR ADJFP HIYAPR HNAPR HIYAP HOMAPR ANAP IMPF EXCL NTAP HNAP NTOMAPR NTOMAP HOMAP IMPP COMMA PINTERO PADV FADV VERBR HIYAN HNAN HOMA HOWA HOWAN NTOMA NTOMAN 
%token <ent> NUM 
%type <s> SVS
%type <s> AFF
%type <s> NEG
%type <s> QUES
%type <s> IMPE
%type <s> SA
%type <s> FUTUR
%type <s> PAST
%type <s> PRESENT
%type <s> SM
%type <s> SF S
%type <s> PF
%type <s> B
%type <s>SUBJ
%type <s> BE
%type <s> BEG
%type <s> E
%type <s> N
%type <s> A
%type <s> O


%% 
phrase: AFF {printf("yes");}
      |NEG {printf("yes");}
      |QUES {printf("yes");}
      |IMPE {printf("yes");}
       ; 

AFF: SVS
    |SA
    ;
SVS: FUTUR {printf("yes");}
   |PAST 
   |PRESENT
   ;
SM: HOWA|SUBM;
SF: HIYA|SUBF;
S: SM|SF;
PF: HOMA|SUBFP|SUBMP;
B: FADV COMMA; 
SUBJ: SUBF|SUBFP|SUBM|SUBMP; 
FUTUR: B ANA ANAF SUBJ 
      |B NTA NTAF SUBJ
      |B NTI NTIFF SUBJ
      |B SM HOWAF SUBJ
      |B SF HIYAF SUBJ
      |B PF HOMAF SUBJ
      |B HNA HNAF SUBJ
      |B NTUMA NTOMAF SUBJ
      |ANA ANAF SUBJ 
      |NTA NTAF SUBJ
      |NTI NTIFF SUBJ
      |SM HOWAF SUBJ
      |SF HIYAF SUBJ
      |PF HOMAF SUBJ
      |HNA HNAF SUBJ
      |NTUMA NTOMAF SUBJ
      ; 
BE: PADV COMMA
  ;
PAST: BE ANA ANAP SUBJ
      |BE NTI NTAP SUBJ
      |BE NTA NTAP SUBJ
      |BE S HIYAP SUBJ
      |BE HNA HNAP SUBJ
      |BE NTOMA NTOMAP SUBJ
      |BE PF HOMAP SUBJ
      |ANA ANAP SUBJ
      |NTI NTAP SUBJ
      |NTA NTAP SUBJ
      |S HIYAP SUBJ
      |HNA HNAP SUBJ
      |NTOMA NTOMAP SUBJ
      |PF HOMAP SUBJ
      ;
BEG: PRADV COMMA 
   ;
PRESENT:BEG ANA ANAPR SUBJ
      |BEG NTI NTAPR SUBJ
      |BEG NTA NTAPR SUBJ
      |BEG S HIYAPR SUBJ
      |BEG HNA HNAPR SUBJ
      |BEG NTOMA NTOMAPR SUBJ
      |BEG PF HOMAPR SUBJ 
      |ANA ANAPR SUBJ
      |NTI NTAPR SUBJ
      |NTA NTAPR SUBJ
      |S HIYAPR SUBJ
      |HNA HNAPR SUBJ
      |NTOMA NTOMAPR SUBJ
      |PF HOMAPR SUBJ
      ;       

N: NTUMA|HNA|SUBMP|SUBFP;
A: ADJF|ADJ|SUBM|SUBF;
O: ADJMP|ADJFP;
SA: ANA A
    |NTA ADJ
    |NTI ADJF
    |N O
     ;
E: NADV
 ;     
NEG: ANA ANANTAN  E
      |NTA ANANTAN  E
      |NTI ANANTAN  E
      |SM HOWAN  E
      |SF HIYAN  E
      |PF HOMAN  E
      |HNA HNAN  E
      |NTOMA NTOMAN  E
      |ANA ANANTAN SUBJ 
      |NTA ANANTAN SUBJ 
      |NTI ANANTAN SUBJ 
      |SM HOWAN SUBJ 
      |SF HIYAN SUBJ 
      |PF HOMAN SUBJ 
      |HNA HNAN SUBJ 
      |NTOMA NTOMAN SUBJ 
      ;       
QUES: QUEST VERBR SUBJ PINTERO ;
IMPE: IMPF SUBJ EXCL|IMPP SUBJ EXCL|VERBR SUBJ EXCL;          

%%

int main()

{printf("veuillez entrer votre phrase en darija :");
 int a=yyparse();
  if(a==1)
		printf("\n Parsing complete \n ");
	else
		printf("\n votre phrase est incorrecte syntaxiquement veuillez la corriger \n");
		
   system("pause");  
   return 0;
}
   yyerror(char *s) {
	fprintf(stderr,"%s\n", s );
}         
  



