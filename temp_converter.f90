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

        ! Getting input temp data from user
        print *, "Enter temperature value to convert or (q) to quit"

        ! Need to ensure it is a real num type
        read(*, *) inputTemp

        ! Ask user what unit to convert to
        print *, "What unit do you want to convert to: (f)ahrenheit, (c)elsius, (k)elvin or (q) to quit"

        ! Read first character from user input
        read(*, '(A1)') toUnit

        ! Performing actions based on user input
        select case (fromUnit) 

            ! Converting from fahrenheit
            case ('f')
                if (toUnit == 'c') then
                    call fahrenheitToCelsius(inputTemp, outputTemp)

                else
                    call fahrenheitToKelvin(inputTemp, outputTemp)
                end if

                exit

            ! Converting from celsius
            case ('c')
                if (toUnit == 'f') then 
                    call celsiusToFahrenheit(inputTemp, outputTemp)

                else
                    call celsiusToKelvin(inputTemp, outputTemp)
                end if

                exit

            ! Converting from kelvin
            case ('k')
                if (toUnit == 'f') then
                    call kelvinToFahrenheit(inputTemp, outputTemp)

                else
                    call kelvinToCelsius(inputTemp, outputTemp)
                end if

                exit

            ! Quit program if needed
            case ('q')

                print *, "Quitting"

                exit
            
            ! Default value if other than unit or quit command
            case default

                print *, "Not a valid input!"

        end select

    end do

end program main


        