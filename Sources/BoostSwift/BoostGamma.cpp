#include "include/BoostGammaInv.h"
#include "BoostGammaInvCpp.h"

double gamma_p_inv(double a, double p) {
    return boostswift::gamma_p_inv(a, p);
}
