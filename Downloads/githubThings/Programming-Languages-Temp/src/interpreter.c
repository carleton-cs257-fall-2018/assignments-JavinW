#include <stdio.h>
#include <string.h>
#include "value.h"
#include "interpreter.h"
#include "talloc.h"
#include "assert.h"
#include "linkedlist.h"
#include "parser.h"


Value *lookUpSymbol(Value *symbol, Frame *frame) {
    Value *bindingList = frame->bindings;
    while (bindingList->type != NULL_TYPE) {
        if (car(car(bindingList))->s == symbol->s) {
            return car(cdr(car(bindingList)));
        }
        bindingList = cdr(bindingList);
    }
    printf("Symbol called before declaration");
    texit(1);
}


void evaluationError() {

}


Value *evalIf(Value *args, Frame *frame) {
    switch (car(args)->type) {
        case SYMBOL_TYPE:
            //Incomplete probably
            if (lookUpSymbol(args, frame)->type == BOOL_TYPE){
                if (lookUpSymbol(args, frame)->i == 1){
                    return car(cdr(args));
                }
                else{
                    return car(cdr(cdr(args)));
                }
            }
            else{
                printf("Error. Invalid if statement");
            }
        case BOOL_TYPE:
            if (car(args)->i == 1) {
                return car(cdr(args));
            }
            else {
                return car(cdr(cdr(args)));
            }
        default:
            printf("Error: Invalid if statement format");
    }
}


void interpret(Value *tree) {
    //create global frame
    Frame *frame = talloc(sizeof(Frame));
    frame->bindings = makeNull();
    frame->parent = NULL;
    while (tree->type != NULL_TYPE) {
        Value *evalResult = eval(car(tree), frame);
        tree = cdr(tree);
        //display result (TEMPORARY)
        switch (evalResult->type) {
            case INT_TYPE:
                printf("%i\n", evalResult->i);
                break;
            case DOUBLE_TYPE:
                printf("%f\n", evalResult->d);
                break;
            case STR_TYPE:
                printf("%s\n", evalResult->s);
                break;
            case BOOL_TYPE:
                if (evalResult->i == 1) {
                    printf("#t\n");
                } else {
                    printf("#f\n");
                }
            default:
                printf("\n\ndefault case error\n\n");
                tfree();
        }
    }
}


Value *eval(Value *tree, Frame *frame) {
    switch (tree->type)  {
        case INT_TYPE:
            return tree;
        case DOUBLE_TYPE:
            return tree;
        case SYMBOL_TYPE:
            return lookUpSymbol(tree, frame);
        case BOOL_TYPE:
            return tree;
        case STR_TYPE:
            return tree;
        case CONS_TYPE: {
            Value *first = car(tree);
            Value *args = cdr(tree);

            // Sanity and error checking on first...

            if (!strcmp(first->s, "if")) {
                printTree(args);
                Value *result = evalIf(args, frame);
                return result;
            }
            else if (!strcmp(first->s, "let")) {
                Frame *e = frame;
                Frame *f = talloc(sizeof(Frame));
                f->parent = e;
                f->bindings = makeNull();
                Value *argListHead = car(cdr(tree));
                //Make bindings
                while (argListHead->type != NULL_TYPE) {
                    Value *vari = talloc(sizeof(Value));
                    Value *vali = talloc(sizeof(Value));
                    vali = cons(eval(car(cdr(car(argListHead))), frame), makeNull());
                    vari = cons(car(car(argListHead)), vali);
                    f->bindings = cons(vari, f->bindings);
                    argListHead = cdr(argListHead);
                }
            }
            break;
        }
        default:
            printf("invalid input\n");
    }
}
