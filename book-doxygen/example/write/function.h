


/**
 * \brief Function argument example
 *
 * \param[in]      param1 First argument.
 * \param[out]      param2 Second argument.
 * \param[in,out] param3 Third argument.
 */
int param(string param1, int* param2, double* param3);

/**
 * \brief Multiple parameter with single param tag.
 * \param x,y,z Coordinates of the position in 3D space.
 * \param t     Time of event.
 */
void param2(double x,double y,double z,double t);

/**
 * \brief
 *
 * \verbatim
 * for(int a=0; i < 10; i++)
 * 	j = i/j;
 * \endverbatim
 */
int verbatim(string str);
