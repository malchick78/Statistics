                                         The SAS System      16:42 Thursday, December 4, 2003   1

                                       The ARIMA Procedure

                                  Maximum Likelihood Estimation

                                 Standard                 Approx
    Parameter      Estimate         Error    t Value    Pr > |t|     Lag    Variable    Shift

    MA1,1           0.98410       0.04818      20.43      <.0001       1    yspir           0
    MA1,2          -0.14945       0.06727      -2.22      0.0263       2    yspir           0
    MA1,3          -0.41364       0.06755      -6.12      <.0001       3    yspir           0
    MA1,4           0.38797       0.04856       7.99      <.0001       4    yspir           0
    MA2,1           0.86756       0.03356      25.85      <.0001      12    yspir           0
    NUM1           -0.05881       0.02510      -2.34      0.0191       0    s1              0
    NUM2            0.08395       0.02079       4.04      <.0001       0    ctrl            0
    NUM3           -0.03733       0.02893      -1.29      0.1970       0    p1              0
    DEN1,1         -0.79033       0.20701      -3.82      0.0001       1    p1              0


                                 Variance Estimate      0.001853
                                 Std Error Estimate     0.043044
                                 AIC                    -1291.21
                                 SBC                     -1255.7
                                 Number of Residuals         382


                               Correlations of Parameter Estimates

               Variable              yspir     yspir     yspir     yspir     yspir
               Parameter             MA1,1     MA1,2     MA1,3     MA1,4     MA2,1

               yspir       MA1,1     1.000    -0.682     0.191     0.051    -0.199
               yspir       MA1,2    -0.682     1.000    -0.640     0.185     0.099
               yspir       MA1,3     0.191    -0.640     1.000    -0.688    -0.081
               yspir       MA1,4     0.051     0.185    -0.688     1.000    -0.039
               yspir       MA2,1    -0.199     0.099    -0.081    -0.039     1.000
               s1           NUM1    -0.069    -0.069    -0.007    -0.100     0.071
               ctrl         NUM2    -0.027     0.126    -0.093     0.006     0.093
               p1           NUM3     0.033    -0.124     0.190    -0.108    -0.008
               p1         DEN1,1     0.005     0.047    -0.083     0.034    -0.018

                               Correlations of Parameter Estimates

                    Variable                 s1      ctrl        p1        p1
                    Parameter              NUM1      NUM2      NUM3    DEN1,1

                    yspir       MA1,1    -0.069    -0.027     0.033     0.005
                    yspir       MA1,2    -0.069     0.126    -0.124     0.047
                    yspir       MA1,3    -0.007    -0.093     0.190    -0.083
                    yspir       MA1,4    -0.100     0.006    -0.108     0.034
                    yspir       MA2,1     0.071     0.093    -0.008    -0.018
                    s1           NUM1     1.000    -0.020    -0.155     0.103
                    ctrl         NUM2    -0.020     1.000    -0.002    -0.015
                    p1           NUM3    -0.155    -0.002     1.000    -0.706
                                         The SAS System      16:42 Thursday, December 4, 2003   2

                                       The ARIMA Procedure

                               Correlations of Parameter Estimates

                    Variable                 s1      ctrl        p1        p1
                    Parameter              NUM1      NUM2      NUM3    DEN1,1

                    p1         DEN1,1     0.103    -0.015    -0.706     1.000


                               Autocorrelation Check of Residuals

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6       12.99      1    0.0003    -0.049     0.002     0.032    -0.136     0.012     0.106
   12       51.78      7    <.0001    -0.104     0.014     0.203    -0.127     0.094     0.146
   18       82.71     13    <.0001    -0.126     0.218    -0.014    -0.047     0.077    -0.076
   24      111.02     19    <.0001    -0.130     0.056     0.067    -0.039     0.184    -0.098
   30      130.60     25    <.0001     0.010     0.162    -0.082     0.052     0.034    -0.102
   36      153.37     31    <.0001    -0.013     0.104    -0.059     0.026     0.121    -0.156
   42      195.69     37    <.0001     0.219     0.006    -0.105     0.199    -0.002    -0.016
   48      226.55     43    <.0001     0.046    -0.021    -0.032     0.247    -0.072    -0.032


                                    Model for variable yspir

                                Period(s) of Differencing    1,12

                                   No mean term in this model.


                                     Moving Average Factors

         Factor 1:  1 - 0.9841 B**(1) + 0.14945 B**(2) + 0.41364 B**(3) - 0.38797 B**(4)
         Factor 2:  1 - 0.86756 B**(12)


                                         Input Number 1

                              Input Variable                     s1
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    -0.05881


                                         Input Number 2

                              Input Variable                   ctrl
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    0.083947
                                         The SAS System      16:42 Thursday, December 4, 2003   3

                                       The ARIMA Procedure

                                         Input Number 3

                              Input Variable                     p1
                              Period(s) of Differencing        1,12
                              Overall Regression Factor    -0.03733


                                       Denominator Factors

                                  Factor 1:  1 + 0.79033 B**(1)
                                         The SAS System      16:42 Thursday, December 4, 2003   4

                                       The ARIMA Procedure

                                  Name of Variable = RESIDUAL

                               Mean of Working Series    -0.00511
                               Standard Deviation         0.04337
                               Number of Observations         382


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0     0.0018809        1.00000    |                    |********************|             0
    1    -0.0001045        -.05553    |                  .*| .                  |      0.051164
    2    -0.0000305        -.01623    |                  . | .                  |      0.051322
    3    0.00001402        0.00745    |                  . | .                  |      0.051335
    4    -0.0002568        -.13653    |                 ***| .                  |      0.051338
    5    -1.7144E-6        -.00091    |                  . | .                  |      0.052280
    6    0.00016269        0.08649    |                  . |**                  |      0.052280
    7    -0.0002428        -.12910    |                 ***| .                  |      0.052653
    8    -1.4362E-6        -.00076    |                  . | .                  |      0.053476
    9    0.00035786        0.19025    |                  . |****                |      0.053476
   10    -0.0002589        -.13766    |                 ***| .                  |      0.055219
   11    0.00013391        0.07119    |                  . |*.                  |      0.056110
   12    0.00024204        0.12868    |                  . |***                 |      0.056346
   13    -0.0002534        -.13473    |                 ***| .                  |      0.057110
   14    0.00038146        0.20280    |                  . |****                |      0.057937
   15    -0.0000599        -.03185    |                  .*| .                  |      0.059766
   16    -0.0001203        -.06396    |                  .*| .                  |      0.059810
   17    0.00009851        0.05238    |                  . |*.                  |      0.059989
   18    -0.0001662        -.08838    |                  **| .                  |      0.060109
   19    -0.0002874        -.15279    |                 ***| .                  |      0.060448
   20    0.00007133        0.03792    |                  . |*.                  |      0.061451
   21    0.00009549        0.05077    |                  . |*.                  |      0.061512
   22    -0.0000773        -.04111    |                  .*| .                  |      0.061621
   23    0.00032116        0.17075    |                  . |***                 |      0.061693
   24    -0.0002045        -.10875    |                 .**|  .                 |      0.062918

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.02403    |                  . | .                  |
                  2        0.00371    |                  . | .                  |
                  3        0.10602    |                  . |**                  |
                  4        0.03202    |                  . |*.                  |
                  5        0.00620    |                  . | .                  |
                  6       -0.07045    |                  .*| .                  |
                  7        0.06847    |                  . |*.                  |
                                         The SAS System      16:42 Thursday, December 4, 2003   5

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8       -0.00256    |                  . | .                  |
                  9       -0.16301    |                 ***| .                  |
                 10        0.03998    |                  . |*.                  |
                 11       -0.03888    |                  .*| .                  |
                 12       -0.10054    |                  **| .                  |
                 13        0.04433    |                  . |*.                  |
                 14       -0.13028    |                 ***| .                  |
                 15        0.04628    |                  . |*.                  |
                 16       -0.00363    |                  . | .                  |
                 17       -0.00258    |                  . | .                  |
                 18        0.08257    |                  . |**                  |
                 19        0.07347    |                  . |*.                  |
                 20        0.04349    |                  . |*.                  |
                 21       -0.04515    |                  .*| .                  |
                 22        0.01182    |                  . | .                  |
                 23       -0.03628    |                  .*| .                  |
                 24        0.03798    |                  . |*.                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.05553    |                  .*| .                  |
                  2       -0.01938    |                  . | .                  |
                  3        0.00548    |                  . | .                  |
                  4       -0.13659    |                 ***| .                  |
                  5       -0.01634    |                  . | .                  |
                  6        0.08219    |                  . |**                  |
                  7       -0.12269    |                  **| .                  |
                  8       -0.03119    |                  .*| .                  |
                  9        0.19299    |                  . |****                |
                 10       -0.10833    |                  **| .                  |
                 11        0.03045    |                  . |*.                  |
                 12        0.14522    |                  . |***                 |
                 13       -0.07452    |                  .*| .                  |
                 14        0.16939    |                  . |***                 |
                 15       -0.02922    |                  .*| .                  |
                 16        0.01706    |                  . | .                  |
                 17        0.01723    |                  . | .                  |
                 18       -0.10697    |                  **| .                  |
                 19       -0.08789    |                  **| .                  |
                 20       -0.05015    |                  .*| .                  |
                 21        0.05783    |                  . |*.                  |
                 22       -0.01330    |                  . | .                  |
                 23        0.04145    |                  . |*.                  |
                 24       -0.04314    |                  .*| .                  |
                                         The SAS System      16:42 Thursday, December 4, 2003   6

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6       11.46      6    0.0751    -0.056    -0.016     0.007    -0.137    -0.001     0.086
   12       48.26     12    <.0001    -0.129    -0.001     0.190    -0.138     0.071     0.129
   18       78.16     18    <.0001    -0.135     0.203    -0.032    -0.064     0.052    -0.088
   24      106.67     24    <.0001    -0.153     0.038     0.051    -0.041     0.171    -0.109
                                         The SAS System      16:42 Thursday, December 4, 2003   7

                                       The ARIMA Procedure

                                   Name of Variable = square

                               Mean of Working Series    0.001907
                               Standard Deviation        0.003408
                               Number of Observations         382


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0    0.00001162        1.00000    |                    |********************|             0
    1    3.85612E-7        0.03319    |                  . |*.                  |      0.051164
    2    2.05944E-6        0.17728    |                  . |****                |      0.051221
    3    2.79351E-7        0.02405    |                  . | .                  |      0.052803
    4    2.07904E-6        0.17897    |                  . |****                |      0.052831
    5    2.86395E-6        0.24653    |                  . |*****               |      0.054395
    6    3.67648E-7        0.03165    |                  . |*.                  |      0.057245
    7    1.06265E-6        0.09147    |                  . |**                  |      0.057291
    8     4.1838E-7        0.03601    |                  . |*.                  |      0.057672
    9    1.38641E-6        0.11934    |                  . |**                  |      0.057731
   10    6.87611E-7        0.05919    |                  . |*.                  |      0.058373
   11    1.31769E-6        0.11343    |                  . |**                  |      0.058530
   12    1.17007E-7        0.01007    |                  . | .                  |      0.059103
   13    8.01511E-7        0.06899    |                  . |*.                  |      0.059107
   14    -4.6879E-8        -.00404    |                  . | .                  |      0.059318
   15    4.64824E-7        0.04001    |                  . |*.                  |      0.059319
   16    4.77464E-7        0.04110    |                  . |*.                  |      0.059389
   17     -6.935E-9        -.00060    |                  . | .                  |      0.059464
   18    -8.5576E-8        -.00737    |                  . | .                  |      0.059464
   19    -4.3255E-7        -.03723    |                  .*| .                  |      0.059466
   20    5.75516E-7        0.04954    |                  . |*.                  |      0.059527
   21    -1.2922E-7        -.01112    |                  . | .                  |      0.059635
   22    5.20089E-8        0.00448    |                  . | .                  |      0.059640
   23     -3.969E-7        -.03417    |                  .*| .                  |      0.059641
   24    -8.6601E-8        -.00745    |                  . | .                  |      0.059692

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.01521    |                  . | .                  |
                  2       -0.11963    |                  **| .                  |
                  3        0.06370    |                  . |*.                  |
                  4       -0.12566    |                 ***| .                  |
                  5       -0.21399    |                ****| .                  |
                  6        0.06334    |                  . |*.                  |
                  7       -0.00192    |                  . | .                  |
                                         The SAS System      16:42 Thursday, December 4, 2003   8

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8       -0.01648    |                  . | .                  |
                  9       -0.00747    |                  . | .                  |
                 10       -0.02437    |                  . | .                  |
                 11       -0.07161    |                  .*| .                  |
                 12        0.01666    |                  . | .                  |
                 13       -0.03632    |                  .*| .                  |
                 14        0.01482    |                  . | .                  |
                 15        0.02073    |                  . | .                  |
                 16       -0.01082    |                  . | .                  |
                 17       -0.00096    |                  . | .                  |
                 18        0.04330    |                  . |*.                  |
                 19        0.01986    |                  . | .                  |
                 20       -0.03325    |                  .*| .                  |
                 21        0.01021    |                  . | .                  |
                 22        0.00353    |                  . | .                  |
                 23        0.00446    |                  . | .                  |
                 24        0.00872    |                  . | .                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.03319    |                  . |*.                  |
                  2        0.17637    |                  . |****                |
                  3        0.01379    |                  . | .                  |
                  4        0.15161    |                  . |***                 |
                  5        0.24545    |                  . |*****               |
                  6       -0.02755    |                  .*| .                  |
                  7        0.01496    |                  . | .                  |
                  8        0.01230    |                  . | .                  |
                  9        0.02774    |                  . |*.                  |
                 10       -0.00454    |                  . | .                  |
                 11        0.08651    |                  . |**                  |
                 12       -0.02785    |                  .*| .                  |
                 13        0.01315    |                  . | .                  |
                 14       -0.04399    |                  .*| .                  |
                 15       -0.01499    |                  . | .                  |
                 16        0.00571    |                  . | .                  |
                 17       -0.01491    |                  . | .                  |
                 18       -0.04070    |                  .*| .                  |
                 19       -0.03169    |                  .*| .                  |
                 20        0.03310    |                  . |*.                  |
                 21       -0.01216    |                  . | .                  |
                 22       -0.00668    |                  . | .                  |
                 23       -0.00488    |                  . | .                  |
                 24       -0.00973    |                  . | .                  |
                                         The SAS System      16:42 Thursday, December 4, 2003   9

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6       49.25      6    <.0001     0.033     0.177     0.024     0.179     0.247     0.032
   12       65.14     12    <.0001     0.091     0.036     0.119     0.059     0.113     0.010
   18       68.38     18    <.0001     0.069    -0.004     0.040     0.041    -0.001    -0.007
   24       70.49     24    <.0001    -0.037     0.050    -0.011     0.004    -0.034    -0.007