program main

    ! Use all from temperature_utils module
    use temperature_utils

    implicit none

    ! Define needed variables
    real :: inputTemp, outputTemp
    character(len=1) :: fromUnit, toUnit

    do

        ! Getting From Unit Information
        print *, "Choose unit to convert from: (f)ahrenheit, (c)elsius, (k)elvin or (q) to quit"

        ! Read first character from user input
        read(*, '(A1)') fromUnit

        ! Performing actions based on user input
        select case (fromUnit) 

            ! If we have proper from unit variable
            case ('f', 'c', 'k')

                print *, "Enter temperature value to convert or (q) to quit"

                ! Need to ensure it is a real num type
                read(*, *) inputTemp

                print *, inputTemp

                exit

            ! Quit program if needed
            case ('q')

                exit
            
            ! Default value if other than unit or quit command
            case default

                print *, "Not a valid input!"

        end select

    end do

end program main


        