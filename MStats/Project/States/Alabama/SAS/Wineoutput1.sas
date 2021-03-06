                                         The SAS System     16:21 Wednesday, January 28, 2004   1

                                       The ARIMA Procedure

                                  Maximum Likelihood Estimation

                                 Standard                 Approx
    Parameter      Estimate         Error    t Value    Pr > |t|     Lag    Variable    Shift

    MA1,1           0.84586       0.02902      29.15      <.0001       1    ywine           0
    MA2,1           0.73238       0.04078      17.96      <.0001      12    ywine           0
    NUM1            0.50941       0.07206       7.07      <.0001       0    s1              0
    NUM2            0.35696       0.08032       4.44      <.0001       0    s2              0
    NUM3            0.45583       0.13248       3.44      0.0006       0    ctrl            0
    NUM4            0.72842       0.13473       5.41      <.0001       0    p2              0
    DEN1,1          0.15180       0.17964       0.85      0.3981       1    p2              0


                                 Variance Estimate      0.020633
                                 Std Error Estimate     0.143642
                                 AIC                    -343.255
                                 SBC                     -316.33
                                 Number of Residuals         346


                               Correlations of Parameter Estimates

     Variable              ywine     ywine        s1        s2      ctrl        p2        p2
     Parameter             MA1,1     MA2,1      NUM1      NUM2      NUM3      NUM4    DEN1,1

     ywine       MA1,1     1.000    -0.030     0.024     0.050     0.022     0.000    -0.000
     ywine       MA2,1    -0.030     1.000     0.020     0.050    -0.215    -0.089    -0.026
     s1           NUM1     0.024     0.020     1.000     0.030     0.007    -0.015    -0.013
     s2           NUM2     0.050     0.050     0.030     1.000    -0.083    -0.322    -0.317
     ctrl         NUM3     0.022    -0.215     0.007    -0.083     1.000    -0.044     0.055
     p2           NUM4     0.000    -0.089    -0.015    -0.322    -0.044     1.000     0.051
     p2         DEN1,1    -0.000    -0.026    -0.013    -0.317     0.055     0.051     1.000


                               Autocorrelation Check of Residuals

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6        3.35      4    0.5014     0.012     0.034    -0.001     0.061    -0.064    -0.017
   12       15.64     10    0.1104     0.004    -0.134     0.016    -0.096     0.059     0.060
   18       17.19     16    0.3736     0.026    -0.040    -0.037     0.007     0.024     0.001
   24       30.63     22    0.1040    -0.105    -0.022     0.074    -0.041     0.068    -0.114
   30       39.98     28    0.0664     0.042    -0.081     0.060    -0.069    -0.023     0.087
   36       56.29     34    0.0095    -0.124    -0.004    -0.082     0.013    -0.142    -0.001
   42       63.18     40    0.0112    -0.062     0.026    -0.010     0.008     0.038     0.107
   48       72.47     46    0.0077     0.119    -0.013    -0.036    -0.008     0.078    -0.039
                                         The SAS System     16:21 Wednesday, January 28, 2004   2

                                       The ARIMA Procedure

                                    Model for variable ywine

                                Period(s) of Differencing    1,12

                                   No mean term in this model.


                                      Moving Average Factors

                                  Factor 1:  1 - 0.84586 B**(1)
                                  Factor 2:  1 - 0.73238 B**(12)


                                         Input Number 1

                              Input Variable                     s1
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.509411


                                         Input Number 2

                              Input Variable                     s2
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.356964


                                         Input Number 3

                              Input Variable                   ctrl
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.455826


                                         Input Number 4

                              Input Variable                     p2
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.728423


                                       Denominator Factors

                                   Factor 1:  1 - 0.1518 B**(1)
                                         The SAS System     16:21 Wednesday, January 28, 2004   3

                                       The ARIMA Procedure

                                  Name of Variable = RESIDUAL

                               Mean of Working Series    -0.00264
                               Standard Deviation        0.142539
                               Number of Observations         346


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0      0.020317        1.00000    |                    |********************|             0
    1    0.00027269        0.01342    |                  . | .                  |      0.053760
    2    0.00069363        0.03414    |                  . |*.                  |      0.053770
    3    2.19254E-6        0.00011    |                  . | .                  |      0.053833
    4     0.0012706        0.06254    |                  . |*.                  |      0.053833
    5    -0.0012787        -.06294    |                  .*| .                  |      0.054042
    6    -0.0003528        -.01736    |                  . | .                  |      0.054254
    7    0.00007235        0.00356    |                  . | .                  |      0.054270
    8    -0.0027163        -.13370    |                 ***| .                  |      0.054270
    9    0.00033855        0.01666    |                  . | .                  |      0.055214
   10    -0.0019589        -.09641    |                  **| .                  |      0.055229
   11     0.0011737        0.05777    |                  . |*.                  |      0.055713
   12     0.0011941        0.05877    |                  . |*.                  |      0.055886
   13    0.00049963        0.02459    |                  . | .                  |      0.056064
   14    -0.0008354        -.04112    |                  .*| .                  |      0.056095
   15    -0.0007746        -.03813    |                  .*| .                  |      0.056182
   16    0.00011212        0.00552    |                  . | .                  |      0.056257
   17    0.00045473        0.02238    |                  . | .                  |      0.056259
   18    -5.3929E-6        -.00027    |                  . | .                  |      0.056284
   19    -0.0021797        -.10728    |                  **| .                  |      0.056284
   20    -0.0004806        -.02366    |                  . | .                  |      0.056872
   21     0.0014571        0.07172    |                  . |*.                  |      0.056901
   22    -0.0008499        -.04183    |                  .*| .                  |      0.057161
   23     0.0013618        0.06702    |                  . |*.                  |      0.057250
   24    -0.0023339        -.11487    |                  **| .                  |      0.057476

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.05540    |                  .*| .                  |
                  2       -0.02505    |                  .*| .                  |
                  3       -0.02688    |                  .*| .                  |
                  4       -0.08544    |                  **| .                  |
                  5        0.11510    |                  . |**                  |
                  6        0.00476    |                  . | .                  |
                  7       -0.05220    |                  .*| .                  |
                                         The SAS System     16:21 Wednesday, January 28, 2004   4

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8        0.12952    |                  . |***                 |
                  9        0.00442    |                  . | .                  |
                 10        0.11253    |                  . |**                  |
                 11       -0.04162    |                  .*| .                  |
                 12       -0.09035    |                  **| .                  |
                 13       -0.04314    |                  .*| .                  |
                 14        0.08386    |                  . |**                  |
                 15        0.01566    |                  . | .                  |
                 16        0.03678    |                  . |*.                  |
                 17       -0.03394    |                  .*| .                  |
                 18        0.00039    |                  . | .                  |
                 19        0.11855    |                  . |**                  |
                 20       -0.00030    |                  . | .                  |
                 21       -0.08017    |                  **| .                  |
                 22        0.03052    |                  . |*.                  |
                 23       -0.06724    |                  .*| .                  |
                 24        0.13672    |                  . |***                 |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.01342    |                  . | .                  |
                  2        0.03397    |                  . |*.                  |
                  3       -0.00079    |                  . | .                  |
                  4        0.06147    |                  . |*.                  |
                  5       -0.06486    |                  .*| .                  |
                  6       -0.01972    |                  . | .                  |
                  7        0.00842    |                  . | .                  |
                  8       -0.13788    |                 ***| .                  |
                  9        0.02958    |                  . |*.                  |
                 10       -0.09307    |                  **| .                  |
                 11        0.05857    |                  . |*.                  |
                 12        0.08295    |                  . |**                  |
                 13       -0.00334    |                  . | .                  |
                 14       -0.03317    |                  .*| .                  |
                 15       -0.05841    |                  .*| .                  |
                 16       -0.01460    |                  . | .                  |
                 17        0.04403    |                  . |*.                  |
                 18       -0.02074    |                  . | .                  |
                 19       -0.09169    |                  **| .                  |
                 20       -0.01962    |                  . | .                  |
                 21        0.08883    |                  . |**                  |
                 22       -0.03910    |                  .*| .                  |
                 23        0.06520    |                  . |*.                  |
                 24       -0.15273    |                 ***| .                  |
                                         The SAS System     16:21 Wednesday, January 28, 2004   5

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6        3.35      6    0.7634     0.013     0.034     0.000     0.063    -0.063    -0.017
   12       15.60     12    0.2102     0.004    -0.134     0.017    -0.096     0.058     0.059
   18       17.16     18    0.5124     0.025    -0.041    -0.038     0.006     0.022    -0.000
   24       30.77     24    0.1607    -0.107    -0.024     0.072    -0.042     0.067    -0.115
                                         The SAS System     16:21 Wednesday, January 28, 2004   6

                                       The ARIMA Procedure

                                   Name of Variable = square

                               Mean of Working Series    0.020324
                               Standard Deviation        0.035999
                               Number of Observations         346


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0     0.0012960        1.00000    |                    |********************|             0
    1    0.00029627        0.22861    |                  . |*****               |      0.053760
    2    0.00027233        0.21014    |                  . |****                |      0.056500
    3    0.00019657        0.15168    |                  . |***                 |      0.058716
    4    0.00012880        0.09939    |                  . |**                  |      0.059837
    5    0.00009133        0.07047    |                  . |*.                  |      0.060313
    6    0.00006306        0.04866    |                  . |*.                  |      0.060550
    7    0.00018640        0.14383    |                  . |***                 |      0.060663
    8    0.00026183        0.20203    |                  . |****                |      0.061641
    9    0.00033344        0.25729    |                 .  |*****               |      0.063526
   10    0.00034288        0.26457    |                 .  |*****               |      0.066469
   11    0.00023135        0.17852    |                 .  |****                |      0.069446
   12    0.00022723        0.17534    |                 .  |****                |      0.070760
   13    0.00013743        0.10605    |                 .  |**.                 |      0.072005
   14    0.00004707        0.03632    |                 .  |* .                 |      0.072455
   15    0.00014038        0.10832    |                 .  |**.                 |      0.072508
   16    0.00007949        0.06133    |                 .  |* .                 |      0.072974
   17    0.00009672        0.07463    |                 .  |* .                 |      0.073123
   18    0.00026538        0.20478    |                 .  |****                |      0.073342
   19    0.00022530        0.17385    |                 .  |***                 |      0.074977
   20    0.00008817        0.06803    |                 .  |* .                 |      0.076133
   21    0.00018403        0.14200    |                 .  |***                 |      0.076308
   22    0.00008215        0.06339    |                 .  |* .                 |      0.077068
   23    0.00017670        0.13634    |                 .  |***                 |      0.077219
   24    0.00010679        0.08240    |                 .  |**.                 |      0.077911

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.06354    |                  .*| .                  |
                  2       -0.08460    |                  **| .                  |
                  3       -0.02861    |                  .*| .                  |
                  4       -0.05544    |                  .*| .                  |
                  5        0.02517    |                  . |*.                  |
                  6        0.09130    |                  . |**                  |
                  7       -0.04816    |                  .*| .                  |
                                         The SAS System     16:21 Wednesday, January 28, 2004   7

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8       -0.03715    |                  .*| .                  |
                  9       -0.09560    |                  **| .                  |
                 10       -0.12130    |                  **| .                  |
                 11       -0.00114    |                  . | .                  |
                 12       -0.06768    |                  .*| .                  |
                 13       -0.00873    |                  . | .                  |
                 14        0.08763    |                  . |**                  |
                 15       -0.03669    |                  .*| .                  |
                 16        0.04840    |                  . |*.                  |
                 17        0.04886    |                  . |*.                  |
                 18       -0.11441    |                  **| .                  |
                 19       -0.03977    |                  .*| .                  |
                 20        0.10009    |                  . |**                  |
                 21       -0.02670    |                  .*| .                  |
                 22        0.05772    |                  . |*.                  |
                 23       -0.07219    |                  .*| .                  |
                 24       -0.03208    |                  .*| .                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.22861    |                  . |*****               |
                  2        0.16658    |                  . |***                 |
                  3        0.07983    |                  . |**                  |
                  4        0.02452    |                  . | .                  |
                  5        0.01004    |                  . | .                  |
                  6        0.00374    |                  . | .                  |
                  7        0.12181    |                  . |**                  |
                  8        0.15605    |                  . |***                 |
                  9        0.17368    |                  . |***                 |
                 10        0.14335    |                  . |***                 |
                 11        0.02593    |                  . |*.                  |
                 12        0.04669    |                  . |*.                  |
                 13        0.00140    |                  . | .                  |
                 14       -0.05047    |                  .*| .                  |
                 15        0.06029    |                  . |*.                  |
                 16       -0.01927    |                  . | .                  |
                 17       -0.03782    |                  .*| .                  |
                 18        0.10727    |                  . |**                  |
                 19        0.03087    |                  . |*.                  |
                 20       -0.10584    |                  **| .                  |
                 21        0.04393    |                  . |*.                  |
                 22       -0.03775    |                  .*| .                  |
                 23        0.09058    |                  . |**                  |
                 24        0.03654    |                  . |*.                  |
                                         The SAS System     16:21 Wednesday, January 28, 2004   8

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6       47.84      6    <.0001     0.229     0.210     0.152     0.099     0.070     0.049
   12      141.01     12    <.0001     0.144     0.202     0.257     0.265     0.179     0.175
   18      168.62     18    <.0001     0.106     0.036     0.108     0.061     0.075     0.205
   24      199.90     24    <.0001     0.174     0.068     0.142     0.063     0.136     0.082
