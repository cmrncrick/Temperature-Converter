program main

    ! Use all from temperature_utils module
    use temperature_utils

    implicit none

    ! Define needed variables
    real :: inputTemp, outputTemp
    character(len=1) :: fromUnit, toUnit
    character(len=20) :: tempInput
    integer :: io_status

    do

        ! Getting From Unit Information
        print *, "Choose unit to convert from: (f)ahrenheit, (c)elsius, (k)elvin or (q) to quit"

        ! Read first character from user input
        read(*, '(A1)') fromUnit

        select case (fromUnit)

            ! Checking for proper input of fromUnit
            case ('f', 'c', 'k')

                do
                    ! Getting input temp data from user
                    print *, "Enter temperature value to convert or (q) to quit"

                    ! Need to ensure it is a real num type
                    read(*, '(A)', IOSTAT=io_status) tempInput

                    ! If the user wants to quit
                    if (trim(tempInput) == 'q') then 

                        print *, "Quitting"

                        stop 
                    end if

                    ! Converting 
                    read(tempInput, *, IOSTAT=io_status) inputTemp

                    ! If the user put in NaN
                    if (io_status == 0) then
                        print *, inputTemp
                        exit
                    else 
                        write(*, *) "Invalid Input. Please enter a number."
                    end if

                end do

                do

                    ! Ask user what unit to convert to
                    print *, "What unit do you want to convert to: (f)ahrenheit, (c)elsius, (k)elvin or (q) to quit"

                    ! Read first character from user input
                    read(*, '(A1)') toUnit

                    select case (toUnit)

                        ! Checking for proper toUnit input
                        case ('f', 'c', 'k', 'q')

                            if (toUnit == 'q') then

                                print *, "Quitting"

                                exit
                            
                            end if

                            ! Performing actions based on user input
                            select case (fromUnit) 

                                ! Converting from fahrenheit
                                case ('f')
                                    if (toUnit == 'c') then
                                        call fahrenheitToCelsius(inputTemp, outputTemp)

                                    else
                                        call fahrenheitToKelvin(inputTemp, outputTemp)
                                    end if

                                    stop !exit

                                ! Converting from celsius
                                case ('c')
                                    if (toUnit == 'f') then 
                                        call celsiusToFahrenheit(inputTemp, outputTemp)

                                    else
                                        call celsiusToKelvin(inputTemp, outputTemp)
                                    end if

                                    stop !exit

                                ! Converting from kelvin
                                case ('k')
                                    if (toUnit == 'f') then
                                        call kelvinToFahrenheit(inputTemp, outputTemp)

                                    else
                                        call kelvinToCelsius(inputTemp, outputTemp)
                                    end if

                                    stop !exit
                                
                                ! Default value if other than unit or quit command
                                case default

                                    print *, "Not a valid input!"

                            end select
                        
                        case default

                            print *, "Not a valid input!"
                            cycle

                    ! toUnit end
                    end select

                end do 
            
            case ('q')

                print *, "Quitting"

                exit
            
            ! If the user inputs a wrong value for fromUnit
            case default

                print *, "Not a valid input!"
                cycle

            ! end select
        
        ! fromUnit end 
        end select

    end do

end program main


        