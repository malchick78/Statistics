                                         The SAS System        10:46 Friday, December 5, 2003   1

                                       The ARIMA Procedure

                                  Maximum Likelihood Estimation

                                 Standard                 Approx
    Parameter      Estimate         Error    t Value    Pr > |t|     Lag    Variable    Shift

    MA1,1           0.90785       0.05382      16.87      <.0001       1    ywine           0
    MA1,2           0.07543       0.07280       1.04      0.3001       2    ywine           0
    MA1,3          -0.35968       0.07074      -5.08      <.0001       3    ywine           0
    MA1,4           0.24914       0.07391       3.37      0.0007       4    ywine           0
    MA1,5          -0.10820       0.05504      -1.97      0.0493       5    ywine           0
    MA2,1           0.73564       0.04111      17.89      <.0001      12    ywine           0
    NUM1            0.10129       0.05252       1.93      0.0538       0    s1              0
    NUM2            0.40022       0.09469       4.23      <.0001       0    ctrl            0
    NUM3            0.09663       0.07530       1.28      0.1994       0    p1              0
    DEN1,1         -0.70332       0.28372      -2.48      0.0132       1    p1              0


                                 Variance Estimate      0.010289
                                 Std Error Estimate     0.101434
                                 AIC                    -581.021
                                 SBC                    -542.556
                                 Number of Residuals         346


                               Correlations of Parameter Estimates

               Variable              ywine     ywine     ywine     ywine     ywine
               Parameter             MA1,1     MA1,2     MA1,3     MA1,4     MA1,5

               ywine       MA1,1     1.000    -0.674    -0.069     0.253    -0.136
               ywine       MA1,2    -0.674     1.000    -0.446    -0.223     0.258
               ywine       MA1,3    -0.069    -0.446     1.000    -0.457    -0.046
               ywine       MA1,4     0.253    -0.223    -0.457     1.000    -0.679
               ywine       MA1,5    -0.136     0.258    -0.046    -0.679     1.000
               ywine       MA2,1     0.034     0.001    -0.059     0.014     0.023
               s1           NUM1     0.031    -0.024    -0.025     0.022    -0.020
               ctrl         NUM2     0.011     0.070    -0.023    -0.028     0.073
               p1           NUM3     0.043    -0.105     0.078     0.030    -0.058
               p1         DEN1,1     0.027    -0.069     0.020     0.074    -0.084

                               Correlations of Parameter Estimates

               Variable              ywine        s1      ctrl        p1        p1
               Parameter             MA2,1      NUM1      NUM2      NUM3    DEN1,1

               ywine       MA1,1     0.034     0.031     0.011     0.043     0.027
               ywine       MA1,2     0.001    -0.024     0.070    -0.105    -0.069
               ywine       MA1,3    -0.059    -0.025    -0.023     0.078     0.020
               ywine       MA1,4     0.014     0.022    -0.028     0.030     0.074
               ywine       MA1,5     0.023    -0.020     0.073    -0.058    -0.084
               ywine       MA2,1     1.000     0.004    -0.154     0.045     0.031
                                         The SAS System        10:46 Friday, December 5, 2003   2

                                       The ARIMA Procedure

                               Correlations of Parameter Estimates

               Variable              ywine        s1      ctrl        p1        p1
               Parameter             MA2,1      NUM1      NUM2      NUM3    DEN1,1

               s1           NUM1     0.004     1.000     0.008    -0.183    -0.111
               ctrl         NUM2    -0.154     0.008     1.000    -0.077    -0.132
               p1           NUM3     0.045    -0.183    -0.077     1.000     0.729
               p1         DEN1,1     0.031    -0.111    -0.132     0.729     1.000


                               Autocorrelation Check of Residuals

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6        0.00      0    <.0001     0.021     0.004     0.012     0.025    -0.018    -0.010
   12       19.49      6    0.0034    -0.040     0.074     0.171    -0.066    -0.009     0.109
   18       20.32     12    0.0613    -0.030    -0.025     0.007     0.001     0.013     0.022
   24       23.41     18    0.1754    -0.046    -0.007    -0.052    -0.030    -0.047    -0.019
   30       29.55     24    0.2000    -0.062     0.011     0.004     0.027    -0.018    -0.105
   36       32.93     30    0.3256     0.014     0.010    -0.066    -0.063    -0.007    -0.011
   42       34.89     36    0.5213    -0.020    -0.027     0.014     0.042     0.025    -0.037
   48       36.86     42    0.6955     0.034    -0.002    -0.023    -0.038     0.018     0.038


                                    Model for variable ywine

                                Period(s) of Differencing    1,12

                                   No mean term in this model.


                                     Moving Average Factors

  Factor 1:  1 - 0.90785 B**(1) - 0.07543 B**(2) + 0.35968
             B**(3) - 0.24914 B**(4) + 0.1082 B**(5)
  Factor 2:  1 - 0.73564 B**(12)


                                         Input Number 1

                              Input Variable                     s1
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.101293


                                         Input Number 2

                              Input Variable                   ctrl
                              Period(s) of Differencing        1,12
                                         The SAS System        10:46 Friday, December 5, 2003   3

                                       The ARIMA Procedure

                                         Input Number 2

                              Overall Regression Factor    0.400223


                                         Input Number 3

                              Input Variable                     p1
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.096626


                                       Denominator Factors

                                  Factor 1:  1 + 0.70332 B**(1)
                                         The SAS System        10:46 Friday, December 5, 2003   4

                                       The ARIMA Procedure

                                  Name of Variable = RESIDUAL

                               Mean of Working Series     0.00069
                               Standard Deviation        0.103565
                               Number of Observations         346


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0      0.010726        1.00000    |                    |********************|             0
    1    0.00015142        0.01412    |                  . | .                  |      0.053760
    2    0.00025601        0.02387    |                  . | .                  |      0.053771
    3    0.00023987        0.02236    |                  . | .                  |      0.053802
    4    0.00054103        0.05044    |                  . |*.                  |      0.053829
    5    -0.0001574        -.01468    |                  . | .                  |      0.053965
    6    0.00007992        0.00745    |                  . | .                  |      0.053976
    7    -0.0003381        -.03152    |                  .*| .                  |      0.053979
    8    0.00090648        0.08451    |                  . |**                  |      0.054033
    9     0.0018871        0.17594    |                  . |****                |      0.054413
   10    -0.0006550        -.06107    |                  .*| .                  |      0.056033
   11    7.99172E-6        0.00075    |                  . | .                  |      0.056225
   12     0.0012610        0.11757    |                  . |**                  |      0.056225
   13    -0.0001816        -.01693    |                  . | .                  |      0.056932
   14    -0.0002613        -.02436    |                  . | .                  |      0.056946
   15    0.00014840        0.01384    |                  . | .                  |      0.056976
   16    0.00004387        0.00409    |                  . | .                  |      0.056986
   17    0.00024925        0.02324    |                  . | .                  |      0.056987
   18    0.00022401        0.02089    |                  . | .                  |      0.057014
   19    -0.0004745        -.04424    |                  .*| .                  |      0.057036
   20    -0.0000235        -.00219    |                  . | .                  |      0.057135
   21    -0.0004355        -.04061    |                  .*| .                  |      0.057136
   22    -0.0004319        -.04027    |                  .*| .                  |      0.057219
   23    -0.0004297        -.04006    |                  .*| .                  |      0.057301
   24    -0.0001897        -.01769    |                  . | .                  |      0.057382

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.01339    |                  . | .                  |
                  2       -0.05594    |                  .*| .                  |
                  3        0.03579    |                  . |*.                  |
                  4       -0.03170    |                  .*| .                  |
                  5        0.00993    |                  . | .                  |
                  6        0.00107    |                  . | .                  |
                  7        0.04303    |                  . |*.                  |
                                         The SAS System        10:46 Friday, December 5, 2003   5

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8       -0.07002    |                  .*| .                  |
                  9       -0.18290    |                ****| .                  |
                 10        0.07113    |                  . |*.                  |
                 11        0.00510    |                  . | .                  |
                 12       -0.14059    |                 ***| .                  |
                 13        0.02166    |                  . | .                  |
                 14        0.01965    |                  . | .                  |
                 15       -0.03238    |                  .*| .                  |
                 16       -0.00383    |                  . | .                  |
                 17       -0.00032    |                  . | .                  |
                 18       -0.00157    |                  . | .                  |
                 19        0.00711    |                  . | .                  |
                 20        0.01872    |                  . | .                  |
                 21        0.07340    |                  . |*.                  |
                 22        0.00561    |                  . | .                  |
                 23        0.02656    |                  . |*.                  |
                 24        0.03552    |                  . |*.                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.01412    |                  . | .                  |
                  2        0.02367    |                  . | .                  |
                  3        0.02172    |                  . | .                  |
                  4        0.04934    |                  . |*.                  |
                  5       -0.01705    |                  . | .                  |
                  6        0.00510    |                  . | .                  |
                  7       -0.03327    |                  .*| .                  |
                  8        0.08371    |                  . |**                  |
                  9        0.17837    |                  . |****                |
                 10       -0.07022    |                  .*| .                  |
                 11       -0.00787    |                  . | .                  |
                 12        0.10916    |                  . |**                  |
                 13       -0.03245    |                  .*| .                  |
                 14       -0.02100    |                  . | .                  |
                 15        0.01626    |                  . | .                  |
                 16        0.00081    |                  . | .                  |
                 17       -0.00463    |                  . | .                  |
                 18        0.00002    |                  . | .                  |
                 19       -0.01651    |                  . | .                  |
                 20       -0.02636    |                  .*| .                  |
                 21       -0.08155    |                  **| .                  |
                 22       -0.00993    |                  . | .                  |
                 23       -0.02965    |                  .*| .                  |
                 24       -0.03833    |                  .*| .                  |
                                         The SAS System        10:46 Friday, December 5, 2003   6

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6        1.44      6    0.9636     0.014     0.024     0.022     0.050    -0.015     0.007
   12       21.71     12    0.0409    -0.032     0.085     0.176    -0.061     0.001     0.118
   18       22.47     18    0.2120    -0.017    -0.024     0.014     0.004     0.023     0.021
   24       25.12     24    0.3994    -0.044    -0.002    -0.041    -0.040    -0.040    -0.018
                                         The SAS System        10:46 Friday, December 5, 2003   7

                                       The ARIMA Procedure

                                   Name of Variable = square

                               Mean of Working Series    0.010726
                               Standard Deviation        0.028828
                               Number of Observations         346


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0    0.00083108        1.00000    |                    |********************|             0
    1    0.00012332        0.14839    |                  . |***                 |      0.053760
    2    0.00017438        0.20982    |                  . |****                |      0.054931
    3    0.00018020        0.21683    |                  . |****                |      0.057201
    4    0.00008069        0.09709    |                  . |**                  |      0.059529
    5     5.0797E-7        0.00061    |                  . | .                  |      0.059985
    6    0.00005800        0.06978    |                  . |*.                  |      0.059985
    7    0.00001156        0.01391    |                  . | .                  |      0.060219
    8    0.00003248        0.03908    |                  . |*.                  |      0.060228
    9    0.00004182        0.05032    |                  . |*.                  |      0.060301
   10    0.00002958        0.03560    |                  . |*.                  |      0.060423
   11    4.53233E-6        0.00545    |                  . | .                  |      0.060483
   12    0.00010370        0.12477    |                  . |**                  |      0.060485
   13    0.00001882        0.02265    |                  . | .                  |      0.061224
   14    0.00001400        0.01684    |                  . | .                  |      0.061248
   15    0.00002365        0.02846    |                  . |*.                  |      0.061262
   16    2.79849E-6        0.00337    |                  . | .                  |      0.061300
   17      1.203E-6        0.00145    |                  . | .                  |      0.061300
   18    0.00002721        0.03275    |                  . |*.                  |      0.061300
   19    -0.0000112        -.01352    |                  . | .                  |      0.061351
   20    -7.6083E-6        -.00915    |                  . | .                  |      0.061360
   21    0.00004694        0.05648    |                  . |*.                  |      0.061364
   22    0.00001358        0.01634    |                  . | .                  |      0.061514
   23    -4.6456E-6        -.00559    |                  . | .                  |      0.061526
   24    0.00003287        0.03955    |                  . |*.                  |      0.061528

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.03339    |                  .*| .                  |
                  2       -0.17789    |                ****| .                  |
                  3       -0.18647    |                ****| .                  |
                  4       -0.01635    |                  . | .                  |
                  5        0.10534    |                  . |**                  |
                  6        0.00878    |                  . | .                  |
                  7       -0.02182    |                  . | .                  |
                                         The SAS System        10:46 Friday, December 5, 2003   8

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8       -0.04579    |                  .*| .                  |
                  9        0.01643    |                  . | .                  |
                 10        0.03283    |                  . |*.                  |
                 11        0.02805    |                  . |*.                  |
                 12       -0.11670    |                  **| .                  |
                 13       -0.01495    |                  . | .                  |
                 14        0.02644    |                  . |*.                  |
                 15        0.03329    |                  . |*.                  |
                 16        0.00760    |                  . | .                  |
                 17       -0.02876    |                  .*| .                  |
                 18       -0.01955    |                  . | .                  |
                 19        0.03567    |                  . |*.                  |
                 20        0.03277    |                  . |*.                  |
                 21       -0.04777    |                  .*| .                  |
                 22       -0.01689    |                  . | .                  |
                 23        0.01300    |                  . | .                  |
                 24       -0.00169    |                  . | .                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.14839    |                  . |***                 |
                  2        0.19203    |                  . |****                |
                  3        0.17324    |                  . |***                 |
                  4        0.01824    |                  . | .                  |
                  5       -0.09052    |                  **| .                  |
                  6        0.02142    |                  . | .                  |
                  7        0.00157    |                  . | .                  |
                  8        0.04226    |                  . |*.                  |
                  9        0.03576    |                  . |*.                  |
                 10        0.00846    |                  . | .                  |
                 11       -0.02563    |                  .*| .                  |
                 12        0.10797    |                  . |**                  |
                 13       -0.00195    |                  . | .                  |
                 14       -0.02418    |                  . | .                  |
                 15       -0.01851    |                  . | .                  |
                 16       -0.01583    |                  . | .                  |
                 17        0.01541    |                  . | .                  |
                 18        0.02942    |                  . |*.                  |
                 19       -0.01976    |                  . | .                  |
                 20       -0.02592    |                  .*| .                  |
                 21        0.05154    |                  . |*.                  |
                 22        0.01698    |                  . | .                  |
                 23       -0.01412    |                  . | .                  |
                 24        0.00188    |                  . | .                  |
                                         The SAS System        10:46 Friday, December 5, 2003   9

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6       44.64      6    <.0001     0.148     0.210     0.217     0.097     0.001     0.070
   12       52.24     12    <.0001     0.014     0.039     0.050     0.036     0.005     0.125
   18       53.22     18    <.0001     0.023     0.017     0.028     0.003     0.001     0.033
   24       55.19     24    0.0003    -0.014    -0.009     0.056     0.016    -0.006     0.040
