import unittest
from TestUtils import TestCodeGen
from AST import *


class CheckCodeGenSuite(unittest.TestCase):
    def test_print_1(self):
        input = """
            procedure MAIN();
            var a: integer;
                b: real;
                c: boolean;
            begin
                a := 1;
                b := 1.5e-2;
                c := FALSE;
                putInt(a);
                putFloat(b);
                putBool(c);
                putString("d");
            end
            """
        expect = "10.015falsed"
        self.assertTrue(TestCodeGen.test(input,expect,501))

    def test_print_global(self):
        input = """
            var a: integer;
                b: real;
                c: boolean;
            procedure Main();
            begin
                a := 0;
                b := 1.5;
                c := TRUE;
                putInt(a);
                putFLoat(b);
                putBOOL(c);
                putString("abc");
            end
            """
        expect = "01.5trueabc"
        self.assertTrue(TestCodeGen.test(input,expect,502))

    def test_global_variable(self):
        input = """
            var a: array[-1 .. 2] of integer;
                b: array[-1 .. 2] of real;
                c: array[0 .. 5] of boolean;
                d: array[-10 .. -2] of string;
            procedure MAIN();
            var i: integer;
            begin
                for i := 2 downto -1 do
                    putIntLn(a[i]);
                for i := 2 downto -1 do
                    putFloatLn(b[i]);
                for i := 0 to 2 do
                    putBoolLN(c[i]); 
                for i := -4 to -3 do
                    putStringLn(d[i]);
                for i := 2 to -1 do
                    putIntLn(a[i] - i);
                for i := 5 to 0 do
                    putStringLn("trong luan");
            end
            """
        expect = "0\n0\n0\n0\n0.0\n0.0\n0.0\n0.0\nfalse\nfalse\nfalse\nnull\nnull\n"
        self.assertTrue(TestCodeGen.test(input,expect,503))

    def test_global_procedure(self):
        input = """
            PROCEDURE main();
            begin
                foo();
            end

            procedure foo();
            begin
                putString("PPL 2018");
            end
            """
        expect = "PPL 2018"
        self.assertTrue(TestCodeGen.test(input, expect, 504))

    def test_global(self):
        input = """
            procedure main();
            begin
                my_var[0] := 0.5;
                my_var[1] := my_var[0];
                putFloat(my_var[1]);
            end
            var my_var: array[-2 .. 5] of real;
            """
        expect = "0.5"
        self.assertTrue(TestCodeGen.test(input,expect,505))

    def test_local_array(self):
        input = """
            procedure main();
            var x: array[0 .. 5] of integer;
            begin
                putIntLn(x[2]);
                x[0] := x[1] := x[2] := x[5] * 2 - x[4] + 4;
                for i:= 0 to 5 do
                    putIntLn(x[i]);
            end
            var i:integer;
            """
        expect = "0\n4\n4\n4\n0\n0\n0\n"
        self.assertTrue(TestCodeGen.test(input,expect,506))

    def test_assign_statement(self):
        input = """
            var my_arr: array[0 .. 5] of integer;
                my_arr_1: array[0 .. 5] of boolean;
            procedure MAIN();
            var foo: integer;
            begin
                foo := 1 - 2 + 3 * 4 div 5;
                my_arr[0] := foo - 7 * 5;
                my_arr[1] := my_arr[0] * -1;
                my_arr_1[0] := my_arr[0] > 0;
                my_arr_1[1] := my_arr[1] > 0;
                my_arr_1[2] := my_arr_1[0] and (not my_arr_1[1]);
                for foo := 2 downto 0 do
                    putBoolLn(my_arr_1[foo]);
                for foo := 2 downto 0 do
                    putIntLn(my_arr[foo]);
            end
            """
        expect = "false\ntrue\nfalse\n0\n34\n-34\n"
        self.assertTrue(TestCodeGen.test(input,expect,507))

    def test_assign_statement_2(self):
        input = """
            function foo(n: integer): integer;
            begin
                return n - 1;
            end

            procedure main();
            var x: array[0 .. 2] of real;
            begin
                x[0] := 2.5;
                t := -x[0];
                x[1] := foo(2);
                x[2] := x[1] := foo(5);
                putFloat(t);
                putFloat(x[0]);
                putFloat(x[1]);
                putFloat(x[2]);
            end

            var t: real;
            """
        expect = "-2.52.54.04.0"
        self.assertTrue(TestCodeGen.test(input,expect,508))     

    def test_assign_statement_3(self):
        input = """
            var l,u,a,n: boolean;
            procedure main();
            var x: integer;
                y: real;
            begin
                t[0] := t[1] := t[t[t[2]]] - 2;
                putIntLn(t[1]);
                x := t[0] mod 7;
                y := x div 2 + t[2] mod 3;
                putFloat(y);
                l := False and (y < 0);
                u := l or l;
                a := True and u;
                n := (x <= y) and not (t[0] <> t[1]);
                putBool(l);
                putBool(u);
                putBool(a);
                putBool(n);
            end

            var t: array[0 .. 2] of integer;
            """
        expect = "-2\n-1.0falsefalsefalsetrue"
        self.assertTrue(TestCodeGen.test(input,expect,509))    

    def test_assign_statement_4(self):
        input = """
            function foo(n: integer): integer;
            begin
                if n < 5 then
                    return n + 5;
                else
                    return n - 5;
            end
            var t: integer;
                x: real;
            procedure main();
            var y:array[-100 .. -0] of real;
            begin
                y[0] := 1.2;
                x := y[-1] := y[0] + foo(2);
                y[-2] := t := foo(0);
                y[-100] := foo(2) - foo(1) + foo(t);
                putFLoatLn(y[-100]);
                putIntLn(t);
                putFLoatLn(x);
                putFloat(y[-1]);
                putFloat(y[-2]);
            end
            """
        expect = "1.0\n5\n8.2\n8.25.0"
        self.assertTrue(TestCodeGen.test(input,expect,510))

    def test_if_statement(self):
        input = """
            VAR XYZ: REAL;
            PROCEDURE main();
            VAR ABC: REAL; 
            BEGIN
                ABC := 1.5;
                XYZ := ABC * 0.5 + 2 - 0.1 * (ABC - 1);
                IF XYZ > ABC THEN
                    PUTSTRINGLN("LUAN NGUYEN TRONG");
                ELSE
                    PUTSTRINGLN("VO NGOC QUYNH NHU");                                
            END
            """
        expect = "LUAN NGUYEN TRONG\n"
        self.assertTrue(TestCodeGen.test(input,expect,511))  

    def test_if_statement_1(self):
        input = """
            VAR XYZ: REAL;
            PROCEDURE main();
            VAR ABC: REAL; 
            BEGIN
                ABC := 1.5;
                XYZ := ABC * 0.5 + 2 - 0.1 * (ABC - 1);
                IF XYZ > ABC THEN
                    PUTSTRING("LUAN NGUYEN TRONG");
                putstring("Huynh Thi Oanh Trinh");
                XYZ := XYZ * 0.2;
                if XYZ > ABC then
                    putstring("VO NGOC QUYNH NHU");       
            END
            """
        expect = "LUAN NGUYEN TRONGHuynh Thi Oanh Trinh"
        self.assertTrue(TestCodeGen.test(input,expect,512))   

    def test_if_statement_2(self):
        input = """
            function isPositive(n:integer):boolean;
            begin
                if n > 0 then
                    return TRUE;
                else
                    return FALSE;
            end

            var m: integer;
            procedure main();
            var n: integer;
            begin
                m := 2;
                n := -1000;
                putBoolLn(isPositive(m));
                putBoolLn(isPositive(n));
            end
            """
        expect = "true\nfalse\n"
        self.assertTrue(TestCodeGen.test(input,expect,513))  

    def test_if_statement_3(self):
        input = """
            var t: boolean;
            var c: array[0 .. 2] of integer;
            procedure main();
            begin
                c[0] := 2;
                t := (c[0] > 0) or True or False;
                if c[0] > c[1] then
                begin
                    if t then
                        putSTringLn("PHP");
                    else
                        putStringLn("Python");
                end
                else
                begin
                    putStringLn("Java");
                    if t then
                        putSTringLn("C++");
                    else
                        putStringLn("C");
                end
            end
            """
        expect = "PHP\n"
        self.assertTrue(TestCodeGen.test(input,expect,514))   

    def test_if_statement_4(self):
        input = """
            PROCEDURE main(); 
            var arr: array[-10 .. -2] of integer;
            BEGIN
                for i := -10 to -2 do
                begin
                    arr[i] := i * (-1);
                end
                for i := -10 to -2 do
                begin
                    if (arr[i] mod 2) = 0 then
                        putIntLn(arr[i]);
                end
            END
            var i: integer;
            """
        expect = "10\n8\n6\n4\n2\n"
        self.assertTrue(TestCodeGen.test(input,expect,515))  

    def test_if_statement_5(self):
        input = """
            function foo(n:integer): String;
            begin
                if n > 0 then
                    if n > 10 then
                        return "Javascript";
                    else
                        if n > 5 then
                            return "C";
                        else
                            return "C#";
                else
                    if n < -4 then
                        return "CSS";
                    else
                        return "HTML";
            end 

            procedure main();
            begin
                putStringLn(foo(11));
                putStringLn(foo(-5));
                putStringLn(foo(4));
            end   
        """
        expect = "Javascript\nCSS\nC#\n"
        self.assertTrue(TestCodeGen.test(input,expect,516))   

    def test_if_statement_6(self):
        input = """
            function foo(n:real):string;
            begin
                with m:real; do
                begin
                    m := n * 1.5;
                    if m > 0 then
                    begin
                        if m > 10 then
                            return "PHP";
                        else
                            return "Python";
                    end
                    else
                    begin
                        if m < -10 then
                            if m < -20 then
                                return "Ruby";
                            else
                                return "R";
                        else
                            return "C++";
                    end
                end
            end
            
            procedure main();
            begin
                putStringLn(foo(2.5));
                putStringLn(foo(-1));
                putStringLn(foo(-0.5));
                putStringLn(foo(200));  
            end
            """
        expect = "Python\nC++\nC++\nPHP\n"
        self.assertTrue(TestCodeGen.test(input,expect,517))  

    def test_if_statement_7(self):
        input = """
            procedure foo(n: real);
            var i:integer;
            begin
                for i := 0 to 10 do
                begin
                    if i < n then
                        putIntLn(i);
                    else
                        break;
                end
            end

            procedure main();
            begin
                foo(4.5);
            end
            """
        expect = "0\n1\n2\n3\n4\n"
        self.assertTrue(TestCodeGen.test(input,expect,518))   

    def test_if_statement_8(self):
        input = """
            function fibonancci(n: integer):integer;
            begin
                if n < 0 then
                    return -1;
                if (n = 0) or (N = 1) then
                    return N;
                else
                    return fibonancci(n - 1) + fibonancci(n - 2);
            end
            procedure main();
            var t: array[0 .. 5] of integer;
            begin
                with i: integer; do
                begin
                    for i:= 0 to 5 do
                        t[i] := fibonancci(i);
                    with r: array[0 .. 5] of integer; do
                    begin
                        for i:= 5 downto 0 do
                        begin
                            r[i] := i;
                            if (r[i] <= t[i]) then
                                putFloatLn(i);
                            else
                                putStringLn("Java");
                        end
                    end
                end  
            end
        """
        expect = "5.0\nJava\nJava\nJava\n1.0\n0.0\n"
        self.assertTrue(TestCodeGen.test(input,expect,519))  

    def test_if_statement_9(self):
        input = """
            procedure main();
            var x:array[-2 .. 2] of real;
                i: integer;
            begin
                i := -2;
                while i <= 2 do
                begin
                    x[i] := foo(i);
                    i := i + 1;
                end
                i := -2;
                while i <= 2 do
                begin
                    if x[i] < foo(x[i]) then
                        putString("PHP");
                    else
                        putString("Ruby");
                    i := i + 1;
                end
            end
            function foo(n:real):real;
            begin
                return n * 0.5;
            end
            """
        expect = "PHPPHPRubyRubyRuby"
        self.assertTrue(TestCodeGen.test(input,expect,520))

    def test_loop_statement_1(self):
        input = """
            function counting(n: integer): integer;
            var i, j, dup, count: integer;
            begin
                dup := count := 0;
                for i := 0 to 10 do
                begin
                    for j := 0 to 10 do
                    begin
                        if (arr[i] + arr[j]) = n then
                        begin
                            count := count + 1;
                            if i = j then
                                dup := dup + 1;
                        end
                    end
                end
                return ((count - dup) div 2 + dup);
            end
            var arr: array[0 .. 10] of integer;
            procedure main();
            begin
                with i:integer; do
                begin
                    i := 0;
                    while i <= 10 do
                    begin
                        arr[i] := i;
                        i := i + 1;
                    end
                end
                putIntLn(counting(14));
            end
            """
        expect = "4\n"
        self.assertTrue(TestCodeGen.test(input,expect,521))

    def test_loop_statement_2(self):
        input = """
            function counting(n: integer): integer;
            var i, j, dup, count: integer;
            begin
                dup := count := 0;
                i := 0;
                while i <= 10 do
                begin
                    j := 0;
                    while j <= 10 do
                    begin
                        if (arr[i] + arr[j]) = n then
                        begin
                            count := count + 1;
                            if i = j then
                                dup := dup + 1;
                        end
                        j := j + 1;
                    end
                    i := i + 1;
                end
                return ((count - dup) div 2 + dup);
            end
            var arr: array[0 .. 10] of integer;
            procedure main();
            begin
                with i:integer; do
                begin
                    for i := 0 to 10 do
                        arr[i] := i;
                end
                putIntLn(counting(14));
            end
            """
        expect = "4\n"
        self.assertTrue(TestCodeGen.test(input,expect,522))     

    def test_loop_statement_3(self):
        input = """
            procedure myPutString(s:string);
            begin
                putString(s);
            end
            procedure main();
            var i, j, k, a, b, c:integer;
            begin
                a := b := 2;
                c := 3;
                a := c - b;
                i := 1;
                while i <= a do
                begin
                    for j := 1 to b do
                    begin
                        for k := 1 to c do
                        begin
                            myPutString("KMS");
                        end
                    end 
                    i := i + 1;
                end
            end
            """
        expect = "KMSKMSKMSKMSKMSKMS"
        self.assertTrue(TestCodeGen.test(input,expect,523))   

    def test_loop_statement_4(self):
        input = """
            procedure main();
            var i, j:integer;
            begin
                i := 0;
                while i < 10 do
                begin
                    putInt(i);
                    if i = 7 then
                        break;
                    i := i + 1;
                end
                putStringLn("HCMUT");
            end
            """
        expect = "01234567HCMUT\n"
        self.assertTrue(TestCodeGen.test(input,expect,524))     

    def test_loop_statement_5(self):
        input = """
            function foo(a, b: integer):integer;
            begin
                if a > b then
                    return 0;
                return 1;
            end
            procedure main();
            var j, i: integer;
            begin
                for i := foo(2, 12) to 10 do
                begin
                    if i < 4 then
                        continue;
                    putInt(i);
                end
                putStringLn("HCMUT");
            end
            """
        expect = "45678910HCMUT\n"
        self.assertTrue(TestCodeGen.test(input,expect,525)) 

    def test_loop_statement_6(self):
        input = """
            procedure main();
            var i:integer;
            begin
                i := 2;
                for i := i to 5 do
                begin
                    putInt(i);
                end
            end
            """
        expect = "2345"
        self.assertTrue(TestCodeGen.test(input,expect,526))   

    def test_loop_statement_7(self):
        input = """
            procedure main();
            var i, j:integer;
                t: boolean;
            begin
                t := true;
                for i := 0 to 4 do
                begin
                    j := 1;
                    while j <= 3 do
                    begin
                        putInt(j);
                        if j = 3 then
                        begin
                            t := false;
                            break;
                        end
                        j := j + 1;
                    end
                    if not t then break;
                end
            end   
            """
        expect = "123"
        self.assertTrue(TestCodeGen.test(input,expect,527))  

    def test_loop_statement_8(self):
        input = """
            procedure main();
            var i: integer;
            begin
                i := 0;
                while i < 1000 do
                begin
                    if i >= 10 then
                        return;
                    putInt(i);
                    i := i + 1;
                end
            end
            """
        expect = "0123456789"
        self.assertTrue(TestCodeGen.test(input,expect,528))  

    def test_with_statement_1(self):
        input = """
            var t: array[0 .. 1000] of integer;
            procedure main();
            var t: array[0 .. 2000] of integer;
            begin
                with i:integer;t:array[0 .. 5] of integer; do
                begin
                    i := 0;
                    for i := 0 to 5 do
                        putInt(t[i]);
                end
            end
            """
        expect = "000000"
        self.assertTrue(TestCodeGen.test(input,expect,529))  

    def test_with_statement_2(self):
        input = """
            var t: array[0 .. 10] of integer;
            function foo():real;
            begin
                return 0.0;
            end
            procedure main();
            var x: boolean;
            begin
                x := false;
                with x,t,foo:integer; do
                begin
                    x := t := foo := 2122000;
                    putInt(x);
                    putInt(t);
                    putInt(foo);
                end
            end
            """
        expect = "212200021220002122000"
        self.assertTrue(TestCodeGen.test(input,expect,530))

    def test_with_statement_3(self):
        input = """
            function foo():integer;
            begin
                with t:boolean; do
                begin
                    with h:boolean; do
                    begin
                        with u:boolean; do
                        begin
                            t := true;
                            h := u := not t;
                            if t or h and u then
                                return 0;
                            else
                                return 1;
                        end
                    end
                end
            end

            procedure main();
            begin
                putIntLn(foo());
            end
            """
        expect = "0\n"
        self.assertTrue(TestCodeGen.test(input,expect,531))  

    def test_call_statement_1(self):
        input = """
            procedure foo(a,b,c:string);
            begin
                putString(a);
                putSTRING(b);
                putSTRING(c);
            end
            procedure main();
            begin
                foo("PHP", "Python", "Scala");
            end
            """
        expect = "PHPPythonScala"
        self.assertTrue(TestCodeGen.test(input,expect,532))  

    def test_call_statement_2(self):
        input = """
            procedure foo1();
            var i: integer;
            begin
                for i := 2 to 100 do
                begin
                    if i >= 8 then
                        with j:integer; do
                            break;
                    putInt(i);
                end
                foo2();
            end

            procedure foo2();
            begin
                putString("Ocaml");
                putString("Ada");
            end

            procedure main();
            begin
                foo1();
            end
            """
        expect = "234567OcamlAda"
        self.assertTrue(TestCodeGen.test(input,expect,533))

    def test_call_statement_3(self):
        input = """
            procedure foo(x:array[0 .. 5] of real);
            begin
                with i:integer; do
                    for i := 0 to 5 do
                        putFloat(x[i]);
            end

            procedure main();
            var y: array[0 .. 5] of real;
            begin
                y[0] := 1.5;
                y[1] := -1.5;
                y[2] := y[1] - y[0];
                y[3] := 2;
                y[4] := 10.5;
                y[5] := 2.25;
                foo(y);
            end
            """
        expect = "1.5-1.5-3.02.010.52.25"
        self.assertTrue(TestCodeGen.test(input,expect,534))

    def test_call_statement_4(self):
        input = """
            procedure foo(x:array[0 .. 5] of string);
            begin
                with i:integer; do
                    for i := 0 to 5 do
                        putString(x[i]);
            end

            var y: array[0 .. 5] of string;
            procedure main();
            begin
                foo(y);
            end
            """
        expect = "nullnullnullnullnullnull"
        self.assertTrue(TestCodeGen.test(input,expect,535))

    def test_call_statement_5(self):
        input = """
            procedure foo(x:array[0 .. 5] of integer);
            begin
                with i:integer; do
                    for i := 0 to 5 do
                    begin
                        x[i] := x[i] + 1;
                        putInt(x[i]);
                    end
            end

            procedure main();
            var y: array[0 .. 5] of integer;
            begin
                y[0] := 2;
                y[1] := 12;
                y[2] := 1998;
                y[3] := 16;
                y[4] := 2000;
                y[5] := 11;
                with i:integer; do
                    for i:= 0 to 5 do
                        putInt(y[i]);
                foo(y);
                with i:integer; do
                    for i:= 0 to 5 do
                        putInt(y[i]);
            end
            """
        expect = "212199816200011313199917200112212199816200011"
        self.assertTrue(TestCodeGen.test(input,expect,536))

    def test_call_statement_6(self):
        input = """
            procedure swap(a,b:integer);
            var tmp: integer;
            begin
                tmp := a;
                a := b;
                b := tmp;
            end
            var a:integer;
            procedure main();
            var b: integer;
            begin
                swap(0, 2);
                a := 100;
                b := 200;
                putInt(a);
                putInt(b);
                swap(a, b);
                putInt(a);
                putInt(b);
            end
            """
        expect = "100200100200"
        self.assertTrue(TestCodeGen.test(input,expect,537))

    def test_call_statement_7(self):
        input = """
            procedure swap(a,b:real);
            var tmp: real;
            begin
                tmp := a;
                a := b;
                b := tmp;
            end
            var a:real;
            procedure main();
            var b: real;
            begin
                swap(0.5, 2);
                a := 2.5;
                b := -2.5;
                putFloat(a);
                putFloat(b);
                swap(a, b);
                putFloat(a);
                putFloat(b);
            end
            """
        expect = """2.5-2.52.5-2.5"""
        self.assertTrue(TestCodeGen.test(input,expect,538))

    def test_call_statement_8(self):
        input = """
            procedure foo(x:array[0 .. 2] of boolean);
            var i:integer;
            begin  
                for i := 0 to 2 do
                    x[i] := not x[i];
            end
            var x:array[0 .. 2] of boolean;
            procedure main();
            var i:integer;
            begin
                for i := 0 to 2 do
                    x[i] := i > 1;
                for i := 0 to 2 do
                    putBool(x[i]);
                putLn();
                foo(x);
                for i:= 0 to 2 do
                    putBool(x[i]);
            end
            """
        expect = """falsefalsetrue\nfalsefalsetrue"""
        self.assertTrue(TestCodeGen.test(input,expect,539))

    def test_call_statement_9(self):
        input = """
            procedure foo(n:integer; s:string);
            begin
                putString(s);
                if n = 0 then
                    return;
                foo(n - 1, s);
            end

            procedure main();
            begin
                foo(4, "Clojure");
            end
            """
        expect = """ClojureClojureClojureClojureClojure"""
        self.assertTrue(TestCodeGen.test(input,expect,540))

    def test_call_statement_10(self):
        input = """
            procedure foo(a, b:integer);
            begin
                putIntLn(a);
                putInt(b);
            end

            procedure main();
            var t: array[0 .. 10] of integer;
            begin
                with i: integer; do
                    for i := 0 to 10 do
                        t[i] := fast(i);
                foo(fast(9), t[10]);
            end

            function fast(n:integer):integer;
            begin
                if n = 0 then
                    return 0;
                return (n div 7) + (n mod 7) + fast(n - 1);
            end
            """
        expect = """27\n31"""
        self.assertTrue(TestCodeGen.test(input,expect,541))

    def test_call_statement_11(self):
        input = """
            procedure foo(n:integer);
            begin
                putFloat(n);
            end   
            procedure main();
            var t, h: integer;
            begin
                t := 2;
                h := 12;
                a := 2000;
                foo(h + t div a - h - t mod a + t * t);
            end
            var a:integer;
            """
        expect = """2.0"""
        self.assertTrue(TestCodeGen.test(input,expect,542))

    def test_call_statement_12(self):
        input = """
            procedure foo(n, m:integer; c:boolean);
            begin
                putInt(n);
                putInt(m);
                putBool(c);
            end   
            procedure main();
            var t, h: integer;
            begin
                t := 2;
                h := 12;
                a := 2000;
                foo(----------------t, a + h - t * h div a mod a + h + t - a, (a > t) and (t <= h) or ((h + t) <> a));
            end
            var a:integer;  
            """
        expect = """226true"""
        self.assertTrue(TestCodeGen.test(input,expect,543))        

    def test_binary_op(self):
        input = """
            var a:integer;
            procedure main();
            var m,n,p,q,r:integer;
                s: real;
            begin
                a := 1;
                m := abc() + xyz();
                n := abc() - xyz();
                p := abc() * xyz();
                s := abc() / xyz();
                q := abc() div xyz();
                r := abc() mod xyz();
                putInt(a);
                putInt(m);
                putInt(n);
                putInt(p);
                putInt(q);
                putInt(r);
                putFloat(s);
            end
            function abc():integer;
            begin
                a := a + 1;
                return 2;
            end
            function xyz():integer;
            begin
                return a;
            end
            """
        expect = """74-18020.4"""
        self.assertTrue(TestCodeGen.test(input,expect,544))  

    def test_binary_op_1(self):
        input = """
            function abc():integer;
            begin
                a := a + 1;
                return 2;
            end
            function xyz():integer;
            begin
                a := a - 2;
                return 3;
            end
            function mnp():integer;
            begin
                return a + 2;
            end
            var a:integer;
            procedure main();
            var t:integer;
            begin
                a := 20;
                t := abc() - xyz() + mnp() div abc();
                putInt(t);
                t := xyz() mod mnp() * abc() - mnp();
                putInt(t);
                t := mnp() - mnp() * abc() - xyz() + abc() * xyz() + a;
                putInt(t);
            end
            """
        expect = """9-15-1"""
        self.assertTrue(TestCodeGen.test(input,expect,545))  

    def test_binary_op_2(self):
        input = """
            function abc():real;
            begin
                a := a + 1;
                return 2.5;
            end
            function xyz():real;
            begin
                a := a - 2;
                return 3.2;
            end
            function mnp():integer;
            begin
                return a + 2;
            end
            var a:integer;
            procedure main();
            var t:real;
            begin
                a := 10;
                t := abc() - xyz() + mnp() / abc();
                putFloat(t);
                t := a mod mnp() * abc() - mnp();
                putFloat(t);
                t := mnp() - mnp() / abc() - xyz() + abc() / xyz() + a;
                putFloat(t);
            end   
            """
        expect = """3.712.014.38125"""
        self.assertTrue(TestCodeGen.test(input,expect,546)) 

    def test_binary_op_3(self):
        input = """
            function abc():integer;
            begin
                a := a + 1;
                return 2;
            end
            function xyz():integer;
            begin
                a := a - 2;
                return 3;
            end
            function mnp():integer;
            begin
                return a + 2;
            end
            var a:integer;
            procedure main();
            begin
                a := 0;
                putBool(abc() < mnp());
                putBool(xyz() > a);
            end
            """
        expect = "truetrue"
        self.assertTrue(TestCodeGen.test(input,expect,547))

    def test_binary_op_4(self):
        input = """
            function abc():boolean;
            begin
                a := not a;
                return true;
            end
            function xyz():boolean;
            begin
                return a;
            end
            var a:boolean;
            procedure main();
            begin
                a := true;
                putBool(abc() and xyz());
                putBool(not abc() or xyz());
            end
            """
        expect = "falsetrue"
        self.assertTrue(TestCodeGen.test(input,expect,548))

    def test_binary_op_5(self):
        input = """
            var a, b:integer;
            function x():integer;
            begin
                a := a - 2;
                b := b + 1;
                return b;
            end
            function y():integer;
            begin
                a := a + 1;
                b := b - 1;
                return a;
            end
            function z():boolean;
            begin
                a := a - b + 1;
                return a < b;
            end
            function t():boolean;
            begin
                return b < a;
            end
            procedure main();
            begin
                a := 15;
                b := 6;
                putBool(((x() - y()) > 2) and ((x() div y()) <> (b div a)) or z() and (x() < b) or t() and ((x() mod y()) = 3));
                putInt(a);
                putInt(b);
            end
            """
        expect = "false57"
        self.assertTrue(TestCodeGen.test(input,expect,549))

    def test_binary_op_6(self):
        input = """
            function x():boolean;
            begin
                a := a + 1;
                return true;
            end
            function nx():boolean;
            begin
                a := a + 1;
                return false;
            end
            var a:integer;
            procedure main();
            begin
                a := 20;
                putInt(a);
                putBool(x() or else nx());
                putInt(a);
                putBool(nx() or else x());
                putInt(a);
            end
            """
        expect = "20true21true23"
        self.assertTrue(TestCodeGen.test(input,expect,550))

    def test_binary_op_7(self):
        input = """
            function x():boolean;
            begin
                a := a + 1;
                return true;
            end
            function nx():boolean;
            begin
                a := a + 1;
                return false;
            end
            var a:integer;
            procedure main();
            begin
                a := 20;
                putInt(a);
                putBool(x() or else nx());
                putInt(a);
                putBool(nx() or else x());
                putInt(a);
            end
            """
        expect = "20true21true23"
        self.assertTrue(TestCodeGen.test(input,expect,551))

    def test_binary_op_8(self):
        input = """
            function x():boolean;
            begin
                a := a + 1;
                return true;
            end
            function nx():boolean;
            begin
                a := a + 1;
                return false;
            end
            var a:integer;
            procedure main();
            begin
                a := 20;
                putInt(a);
                putBool(x() and then nx());
                putInt(a);
                putBool(nx() and then x());
                putInt(a);
            end
            """
        expect = "20false22false23"
        self.assertTrue(TestCodeGen.test(input,expect,552))

    def test_binary_op_9(self):
        input = """
            function x():boolean;
            begin
                a := a + 1;
                return true;
            end
            function nx():boolean;
            begin
                a := a + 1;
                return false;
            end
            var a:integer;
            procedure main();
            begin
                a := 20;
                putInt(a);
                putBool(((nx() and x()) or else x() and then nx()) or (x() or else nx() and nx()));
                putInt(a);
            end
            """
        expect = "20true25"
        self.assertTrue(TestCodeGen.test(input,expect,553))

    def test_unary_op(self):
        input = """
            var x:boolean;
            procedure main();
            begin
                x := true;
                putBool(not not not not not not not not not not not not x);
                putString("PPL 2018");
            end
            """
        expect = "truePPL 2018"
        self.assertTrue(TestCodeGen.test(input, expect, 554))

    def test_unary_op_1(self):
        input = """
            var x:integer;
            procedure main();
            begin
                x := 1611931;
                putInt(----------------------x);
                putString("PPL 2018");
            end
            var my_var: array[-2 .. 5] of real;
            """
        expect = "1611931PPL 2018"
        self.assertTrue(TestCodeGen.test(input,expect,555))

    def test_call_statement_13(self):
        input = """
            procedure myPutInts(a, b, c, d:integer);
            begin
                putInt(a);
                putInt(b);
                putInt(c);
                putInt(d);
            end
            function x():integer;
            begin
                a := a + 1;
                return a;
            end
            function y():integer;
            begin
                a := a + 2;
                return a;
            end
            function z():integer;
            begin
                a := a + 3;
                return a;
            end
            var a:integer;
            procedure main();
            begin
                a := 1;
                myPutInts(x(), y(), z(), a);
            end
            """
        expect = "2477"
        self.assertTrue(TestCodeGen.test(input,expect,556))

    def test_call_expr_1(self):
        input = """
            function factorial(n:integer):integer;
            begin
                if (n = 0) or (n = 1) then
                    return 1;
                else
                    return n * factorial(n - 1);
            end
            procedure main();
            var t: integer;
            begin
                t := 6;
                putInt(factorial(4));
                putInt(factorial(t));
            end
            """
        expect = "24720"
        self.assertTrue(TestCodeGen.test(input,expect,557))

    def test_call_expr_2(self):
        input = """
            function sum(n:integer):integer;
            var S:integer;
            begin
                S := 0;
                while n > 0 do
                begin
                    S := S + n;
                    n := n - 1;
                end
                return S;
            end
            procedure main();
            var t:integer;
            begin
                t := 10;
                putInt(sum(t));
                putInt(t);
            end
            """
        expect = "5510"
        self.assertTrue(TestCodeGen.test(input,expect,558))     

    def test_call_expr_3(self):
        input = """
            function toFloat(n:real):real;
            begin
                return n;
            end
            procedure main();
            var f: integer;
            begin
                f := 1611931;
                putFloat(toFloat(5));
                putFloat(toFloat(f));
            end
            """
        expect = "5.01611931.0"
        self.assertTrue(TestCodeGen.test(input,expect,559))    

    def test_call_expr_4(self):
        input = """
            function doubleAndSum(arr:array[0 .. 10] of integer):integer;
            var i, S:integer;
            begin
                S := 0;
                for i := 0 to 10 do
                begin
                    arr[i] := arr[i] * 2;
                    S := S + arr[i];
                end
                return S;
            end
            var arr: array[0 .. 10] of integer;
            procedure main();
            var i: integer;
            begin
                for i := 0 to 10 do
                    arr[i] := i;
                putInt(doubleAndSum(arr));
                putLn();
                for i := 0 to 10 do
                    putInt(arr[i]);
            end
            """
        expect = "110\n012345678910"
        self.assertTrue(TestCodeGen.test(input,expect,560))

    def test_call_expr_5(self):
        input = """
            function mysum(a, b, c, d:integer):integer;
            begin
                return a + b + c + d;
            end
            function x():integer;
            begin
                a := a + 1;
                return a;
            end
            function y():integer;
            begin
                a := a + 2;
                return a;
            end
            function z():integer;
            begin
                a := a + 3;
                return a;
            end
            var a:integer;
            procedure main();
            begin
                a := 1;
                putInt(mysum(x(), y(), z(), a));
            end
            """
        expect = "20"
        self.assertTrue(TestCodeGen.test(input,expect,561))  

    def test_sample_program(self):
        input = """
            function isPrime(n:integer):boolean;
            var i:integer;
            begin
                if n < 2 then
                    return false;
                else
                begin
                    if n = 2 then
                        return true;
                    else
                    begin
                        for i := 2 to (n - 1) do
                            if (n mod i) = 0 then
                                return false;
                        return true;
                    end
                end
            end

            procedure main();
            begin
                putBool(isPrime(2));
                putBool(isPrime(-1));
                putBool(isPrime(7));
                putBool(isPrime(23));
                putBool(isPrime(100));
            end
            """
        expect = "truefalsetruetruefalse"
        self.assertTrue(TestCodeGen.test(input,expect,562))   

    def test_call_expr_6(self):
        input = """
            function getString(n:integer):string;
            begin
                if n > 0 then
                    if n < 10 then
                        return "PHP";
                    else
                        return "Python";
                else
                    if n > -10 then
                        return "C++";
                    else
                        return "Java";
            end

            procedure main();
            begin
                putString(getString(100));
                putString(getString(5));
                putString(getString(-2));
                putString(getString(-20));
            end
            """
        expect = "PythonPHPC++Java"
        self.assertTrue(TestCodeGen.test(input,expect,563))  

    def test_call_expr_7(self):
        input = """
            var t:array[0 .. 6] of integer;
            function getArray():array[0 .. 6] of integer;
            begin
                with i:integer; do
                    for i := 0 to 6 do
                        t[i] := i mod 2;
                return t;
            end

            procedure main();
            var t: integer;
                k: array[0 .. 6] of integer;
            begin
                t := getArray()[2];
                putInt(t);
                k := getArray();
                t := k[6];
                putInt(t);
            end
            """
        expect = "00"
        self.assertTrue(TestCodeGen.test(input,expect,564))   

    def test_call_expr_8(self):
        input = """
            var t:array[0 .. 6] of integer;
            function getArray():array[0 .. 6] of integer;
            begin
                with i:integer; do
                    for i := 0 to 6 do
                        t[i] := i mod 2;
                return t;
            end

            procedure main();
            var y: integer;
                k: array[0 .. 6] of integer;
            begin
                y := getArray()[5];
                putInt(y);
                k := getArray();
                k[2] := 1611931;
                putInt(t[2]);
                y := getArray()[0];
                putInt(k[2]);
            end
            """
        expect = "116119310"
        self.assertTrue(TestCodeGen.test(input,expect,565))

    def test_call_expr_9(self):
        input = """
            var t:array[0 .. 6] of integer;
            function getArray():array[0 .. 6] of integer;
            begin
                with i:integer; do
                    for i := 0 to 6 do
                        t[i] := i mod 2;
                return t;
            end

            procedure main();
            var y: integer;
            begin
                getArray()[2] := 1611931;
                y := t[2];
                putInt(t[2]);
                putInt(y);
            end
            """
        expect = "16119311611931"
        self.assertTrue(TestCodeGen.test(input,expect,566))  

    def test_call_expr_10(self):
        input = """
            var t, l: array[0 .. 6] of integer;
            function foo(n:integer):array[0 .. 6] of integer;
            begin
                if n > 0 then
                    return t;
                else
                    return l;
            end

            procedure initial();
            var i:integer;
            begin
                for i := 0 to 6 do
                begin
                    t[i] := i;
                    l[i] := t[i] * 2;
                end
            end

            procedure main();
            var y: integer;
            begin
                initial();
                y := foo(2)[0];
                putInt(y);
                t[0] := 100;
                y := foo(2)[0];
                putInt(y);
            end
            """
        expect = "0100"
        self.assertTrue(TestCodeGen.test(input,expect,567))  

    def test_call_expr_11(self):
        input = """
            var t, l: array[0 .. 6] of integer;
            function foo(n:integer):array[0 .. 6] of integer;
            begin
                if n > 0 then
                    return t;
                else
                    return l;
            end

            procedure initial();
            var i:integer;
            begin
                for i := 0 to 6 do
                begin
                    t[i] := i;
                    l[i] := t[i] * 2;
                end
            end

            procedure main();
            var y: integer;
            begin
                initial();
                y := foo(-2)[3];
                putInt(y);
                l[3] := -2122000;
                y := foo(-2)[3];
                putInt(y);
            end
            """
        expect = "6-2122000"
        self.assertTrue(TestCodeGen.test(input,expect,568))   

    def test_sample_program_1(self):
        input = """
            function max(x:array[-10 .. -1] of integer):integer;
            var max, i: integer;
            begin
                max := x[-10];
                for i:= -9 to -1 do
                    if x[i] > max then
                        max := x[i];
                return max;
            end
            procedure main();
            var t: array[-10 .. -1] of integer;
            begin
                t[-10] := t[-6] := t[-1] := 25;
                t[-9] := 6;
                t[-7] := 77;
                t[-8] := -222;
                t[-5] := t[-4] := t[-2] := 100;
                t[-3] := 25;
                putInt(max(t));
            end
        """
        expect = "100"
        self.assertTrue(TestCodeGen.test(input,expect,569))  

    def test_sample_program_2(self):
        input = """
            function min(x:array[-10 .. -1] of integer):integer;
            var min, i: integer;
            begin
                min := x[-10];
                for i:= -9 to -1 do
                    if x[i] < min then
                        min := x[i];
                return min;
            end
            procedure main();
            var t: array[-10 .. -1] of integer;
            begin
                t[-10] := t[-6] := t[-1] := 25;
                t[-9] := 6;
                t[-7] := 77;
                t[-8] := -222;
                t[-5] := t[-4] := t[-2] := 100;
                t[-3] := 25;
                putInt(min(t));
            end
            """
        expect = "-222"
        self.assertTrue(TestCodeGen.test(input,expect,570))

    def test_sample_program_3(self):
        input = """
            function max(a,b,c: real):real;
            begin
                if a > b then
                    if a > c then
                        return a;
                    else
                        return c;
                else
                    if b > c then
                        return b;
                    else
                        return c;
            end
            procedure main();
            begin
                putFloat(max(212.5, 1611, -1000.5));
                putFloat(max(2.2, 2.2, 2.2));
                putFloat(max(-10, -10, -10));
            end
            """
        expect = "1611.02.2-10.0"
        self.assertTrue(TestCodeGen.test(input,expect,571))

    def test_sample_program_4(self):
        input = """
            function min(a,b,c: real):real;
            begin
                if a < b then
                    if a < c then
                        return a;
                    else
                        return c;
                else
                    if b < c then
                        return b;
                    else
                        return c;
            end
            procedure main();
            begin
                putFloat(min(212.5, 1611, -1000.5));
                putFloat(min(2.2, 2.2, 2.2));
                putFloat(min(-10, -10, -10));
            end
            """
        expect = "-1000.52.2-10.0"
        self.assertTrue(TestCodeGen.test(input,expect,572))     

    def test_sample_program_5(self):
        input = """
            function pow(a, n:integer):integer;
            var y:integer;
            begin
                if n = 0 then return 1;
                if n = 1 then return a;
                y := pow(a, n div 2);
                if (n mod 2) <> 0 then
                    return a * y * y;
                else
                    return y * y;
            end
            procedure main();
            begin
                putInt(pow(2, 0));
                putInt(pow(3, 3));
                putInt(pow(100, 1));
                putInt(pow(2, 7));
                putInt(pow(5, 2));
            end
            """
        expect = "12710012825"
        self.assertTrue(TestCodeGen.test(input,expect,573))   

    def test_sample_program_6(self):
        input = """
            function foo(a, b: array[0 .. 2] of integer):array[0 .. 5] of integer;
            var res: array[0 .. 5] of integer;
                i: integer;
            begin
                for i:= 0 to 5 do
                begin
                    if i < 3 then
                        res[i] := a[i];
                    else
                        res[i] := b[i - 3];
                end
                return res;
            end
            var a, b: array[0 .. 2] of integer;
            procedure main();
            var i:integer;
            begin
                a[0] := 2;
                a[1] := 12;
                a[2] := 2000;
                b[0] := 16;
                b[1] := 11;
                b[2] := 1998;
                for i := 0 to 6 do
                    putInt(foo(a, b)[i]);
            end
            """
        expect = "212200016111998"
        self.assertTrue(TestCodeGen.test(input,expect,574))     

    def test_sample_program_7(self):
        input = """
            function sum(x: array[0 .. 4] of integer;i:integer):integer;
            begin
                if i = 0 then
                    return x[0];
                return x[i] + sum(x, i - 1);
            end
            procedure main();
            var t: array[0 .. 4] of integer;
            begin
                t[0] := 3;
                t[1] := t[2] := -10;
                t[3] := 4;
                t[4] := 22;
                putInt(sum(t, 4));
            end
            """
        expect = "9"
        self.assertTrue(TestCodeGen.test(input,expect,575)) 

    def test_sample_program_8(self):
        input = """
            function countEven(x:array[0 .. 4] of integer):integer;
            var i,count:integer;
            begin
                count := 0;
                for i:= 0 to 4 do
                    if (x[i] mod 2) = 0 then
                        count := count + 1;
                return count; 
            end
            procedure main();
            var t:array[0 .. 4] of integer;
            begin
                t[0] := 20;
                t[1] := 5;
                t[2] := -6;
                t[4] := 11;
                t[3] := 0;
                putInt(countEven(t));
            end
            """
        expect = "3"
        self.assertTrue(TestCodeGen.test(input,expect,576))   

    def test_sample_program_9(self):
        input = """
            function countOdd(x:array[0 .. 4] of integer):integer;
            var i,count:integer;
            begin
                count := 0;
                for i:= 0 to 4 do
                    if (x[i] mod 2) <> 0 then
                        count := count + 1;
                return count; 
            end
            procedure main();
            var t:array[0 .. 4] of integer;
            begin
                t[0] := 20;
                t[1] := 5;
                t[2] := -6;
                t[4] := 11;
                t[3] := 0;
                putInt(countOdd(t));
            end
            """
        expect = "2"
        self.assertTrue(TestCodeGen.test(input,expect,577))  

    def test_sample_program_10(self):
        input = """
            procedure foo1();
            begin
                a := a + 1;
                foo2();
            end

            procedure foo2();
            begin
                a := a + 1;
                foo3();
            end

            procedure foo3();
            begin
                a := a + 1;
                foo4();
            end

            procedure foo4();
            begin
                a := a + 1;
            end

            var a:integer;
            procedure main();
            begin
                foo1();
                putInt(a);
            end
            """
        expect = "4"
        self.assertTrue(TestCodeGen.test(input,expect,578))  

    def test_sample_program_11(self):
        input = """
            function count(n:integer):integer;
            var d:integer;
            begin
                d := 0;
                while (n > 0) do
                begin
                    d := d + 1;
                    n := n div 10;
                end
                return d;
            end
            procedure main();
            begin
                putInt(count(1611931));
                putInt(count(02122000));
                putInt(count(16111998));
            end
            """
        expect = "778"
        self.assertTrue(TestCodeGen.test(input,expect,579))  

    def test_sample_program_12(self):
        input = """
            function toString(n:integer):string;
            begin
                if n = 1 then
                    return "1";
                else
                    return "0";
            end
            procedure toBits(n:integer);
            begin
                if n = 1 then
                    putString("1");
                else
                begin
                    toBits(n div 2);
                    putString(toString(n mod 2));
                end
            end
            procedure main();
            begin
                toBits(12);
                putLn();
                toBits(7);
                putLn();
                toBits(33);
            end
            """
        expect = "1100\n111\n100001"
        self.assertTrue(TestCodeGen.test(input,expect,580))

    def test_sample_program_13(self):
        input = """
            function pow(a, n:integer):integer;
            var P, i:integer;
            begin
                P := 1;
                for i:= 1 to n do
                    P := P * a;
                return P;
            end
            procedure main();
            begin
                putIntLn(pow(2, 3));
                putIntLn(pow(7, 0));
                putIntLn(pow(5, 7));
            end
            """
        expect = "8\n1\n78125\n"
        self.assertTrue(TestCodeGen.test(input,expect,581))  

    def test_intliteral(self):
        input = """
            procedure main();
            begin
                putInt(0);
                putInt(-1);
                putInt(-100);
                putInt(100000);
                putInt(20000000);
            end
            """
        expect = "0-1-10010000020000000"
        self.assertTrue(TestCodeGen.test(input,expect,582))  

    def test_floatliteral(self):
        input = """
            procedure main();
            begin
                putFloat(0);
                putFloat(-1.3);
                putFloat(-100.2e2);
                putFloat(-7.77);
                putFloat(2222.2222);
            end
            """
        expect = "0.0-1.3-10020.0-7.772222.2222"
        self.assertTrue(TestCodeGen.test(input,expect,583))

    def test_stringliteral(self):
        input = """
            procedure main();
            begin
                putString("PHP");
                putSTring("Python");
                putString("Javascript");
            end
            """
        expect = "PHPPythonJavascript"
        self.assertTrue(TestCodeGen.test(input,expect,584))

    def test_stringliteral_1(self):
        input = """
            procedure main();
            begin
                putString("Java");
                putSTring("Ada");
                putString("Scala");
            end
            """
        expect = "JavaAdaScala"
        self.assertTrue(TestCodeGen.test(input,expect,585))

    def test_stringliteral_2(self):
        input = """
            procedure main();
            begin
                putString("C#");
                putSTring("C++");
                putString("C");
            end
            """
        expect = "C#C++C"
        self.assertTrue(TestCodeGen.test(input,expect,586))

    def test_stringliteral_3(self):
        input = """
            procedure main();
            begin
                putString("Pascal");
                putSTring("Smalltalk");
                putString("Ruby");
            end
            """
        expect = "PascalSmalltalkRuby"
        self.assertTrue(TestCodeGen.test(input,expect,587))

    def test_stringliteral_4(self):
        input = """
            procedure main();
            begin
                putString("Ocaml");
                putSTring("HTML");
                putString("CSS");
            end
            """
        expect = "OcamlHTMLCSS"
        self.assertTrue(TestCodeGen.test(input,expect,588))

    def test_booleanliteral(self):
        input = """
            procedure main();
            begin
                putBool(true and false);
                putBool(true and true);
                putBool(false and false);
            end
            """
        expect = """falsetruefalse"""
        self.assertTrue(TestCodeGen.test(input,expect,589))

    def test_booleanliteral_1(self):
        input = """
            procedure main();
            begin
                putBool(true or false);
                putBool(true or true);
                putBool(false or false);
            end
            """
        expect = """truetruefalse"""
        self.assertTrue(TestCodeGen.test(input,expect,590))

    def test_booleanliteral_2(self):
        input = """
            procedure main();
            begin
                putBool(true or else false);
                putBool(true or else true);
                putBool(false or else false);
            end
            """
        expect = """truetruefalse"""
        self.assertTrue(TestCodeGen.test(input,expect,591))

    def test_booleanliteral_3(self):
        input = """
            procedure main();
            begin
                putBool(true and then false);
                putBool(true and then true);
                putBool(false and then false);
            end
            """
        expect = """falsetruefalse"""
        self.assertTrue(TestCodeGen.test(input,expect,592))

    def test_sample_program_14(self):
        input = """
            procedure main();
            var i: integer;
            begin
                for i:= 0 to 10 do
                    with i:real; do
                        with t:boolean; do
                            with l:string; do
                                with u:array[0 .. 10] of string; do
                                    break;
                putString("EXO");
            end  
            """
        expect = """EXO"""
        self.assertTrue(TestCodeGen.test(input,expect,593))        

    def test_sample_program_15(self):
        input = """
            procedure main();
            begin
                if True then
                    return;
                else
                    return;
            end
            """
        expect = """"""
        self.assertTrue(TestCodeGen.test(input,expect,594))  

    def test_sample_program_16(self):
        input = """
            procedure main();
            begin
                putString("Huynh ");
                putSTring("Thi ");
                putString("Oanh ");
                putString("Trinh");
            end
            """
        expect = """Huynh Thi Oanh Trinh"""
        self.assertTrue(TestCodeGen.test(input,expect,595))  

    def test_sample_program_17(self):
        input = """
            procedure main();
            begin
                putString("Vo ");
                putSTring("Ngoc ");
                putString("Quynh ");
                putString("Nhu");
            end
            """
        expect = """Vo Ngoc Quynh Nhu"""
        self.assertTrue(TestCodeGen.test(input,expect,596))

    def test_sample_program_18(self):
        input = """
            procedure main();
            begin
                putString("Nguyen ");
                putSTring("Trong ");
                putString("Luan");
            end
            """
        expect = """Nguyen Trong Luan"""
        self.assertTrue(TestCodeGen.test(input,expect,597))

    def test_sample_program_19(self):
        input = """
            procedure main();
            begin
                putString("Nguyen ");
                putSTring("Cong ");
                putString("Phuong");
            end
            """
        expect = "Nguyen Cong Phuong"
        self.assertTrue(TestCodeGen.test(input,expect,598))

    def test_sample_program_20(self):
        input = """
            procedure main();
            begin
                putString("Nguyen ");
                putSTring("Quang ");
                putString("Hai");
            end
            """
        expect = "Nguyen Quang Hai"
        self.assertTrue(TestCodeGen.test(input,expect,599))

    def test_sample_program_21(self):
        input = """
        procedure main();
            begin
                putString("Luong ");
                putSTring("Xuan ");
                putString("Truong");
            end
            """
        expect = "Luong Xuan Truong"
        self.assertTrue(TestCodeGen.test(input,expect,600))