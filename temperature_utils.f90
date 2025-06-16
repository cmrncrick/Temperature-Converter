module temperature_utils

    implicit none

    private

    public :: celsiusToFahrenheit, celsiusToKelvin, fahrenheitToCelsius, fahrenheitToKelvin, kelvinToCelsius, kelvinToFahrenheit

contains
    
    ! Conversion of C to F
    subroutine celsiusToFahrenheit(c, f)
        ! F = (C * 9 / 5) + 32

        real, intent(in) :: c
        real, intent(out) :: f

        f = (c * 9 / 5) + 32    

        print '(A, f10.2)', "Conversion to F: ", f
    end subroutine celsiusToFahrenheit

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ! Conversion of C to K
    subroutine celsiusToKelvin(c, k)
        ! K = C + 273.15

        real, intent(in) :: c
        real, intent(out) :: k

        k = c + 273.15

        print '(A, f10.2)', "Conversion to K: ", k
    end subroutine celsiusToKelvin

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ! Conversion of F to C
    subroutine fahrenheitToCelsius(f, c)
        ! C = (F - 32) * 5 / 9

        real, intent(in) :: f
        real, intent(out) :: c

        c = (f - 32) * 5 / 9

        print '(A, f10.2)', "Conversion to C: ", c
    end subroutine fahrenheitToCelsius

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ! Conversion of F to K
    subroutine fahrenheitToKelvin(f, k)
        ! K = (F - 32) * 5 / 9 + 273.15

        real, intent(in) :: f
        real, intent(out) :: k

        k = (f - 32) * 5 / 9 + 273.15

        print '(A, f10.2)', "Conversion to K: ", k
    end subroutine fahrenheitToKelvin

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ! Conversion of K to C
    subroutine kelvinToCelsius(k, c)
        ! C = K - 273.15

        real, intent(in) :: k
        real, intent(out) :: c

        c = k - 273.15
        
        print '(A, f10.2)', "Conversion to C: ", c
    end subroutine kelvinToCelsius

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    ! Conversion of K to F
    subroutine kelvinToFahrenheit(k , f)
        ! F = (K - 273.15) * 9 / 5 + 32

        real, intent(in) :: k
        real, intent(out) :: f

        f = (k - 273.15) * 9 / 5 + 32

        print '(A, f10.2)', "Conversion to F: ", f
    end subroutine kelvinToFahrenheit

end module temperature_utils