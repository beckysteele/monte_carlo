Program monte_carlo
        Implicit none

        INTERFACE
                FUNCTION F(X)
                REAL::F,X
                END FUNCTION F
        END INTERFACE


        !--- Declarations ---
        Real::A,B,SUM,rand,H
        Integer::I,N

        !--- Read from terminal with a space between inputs
        Write(*,*) 'Enter the starting point A and hit ENTER or RETURN:'
        Read(*,*)A
        Write(*,*) 'Enter the endpoint B and hit ENTER or RETURN:'
        Read(*,*)B
        Write(*,*) 'Enter the value of N:'
        Read(*,*)N

        H=(B-A)/N

        Write(*,*) 'This is the value of H:', H

        CALL RANDOM_SEED

        !--- Beginning of Monte-Carlo integration
        DO I = 1,N
                CALL RANDOM_NUMBER(rand)
                SUM = SUM + F(rand)
        END DO

        SUM = SUM*H

        !--- Read from a file

        !--- Program Statements
        !--- Writing to a file
       Open(10,FILE='monte_carlo.output')
        Write(10,*) 'From starting point A=', A, ' to endpoint B=', B, ' with N=', N, 'the approxim$
        Close(10)

End Program monte_carlo
