                                         The SAS System      17:40 Thursday, December 4, 2003   1

                                       The ARIMA Procedure

                                  Maximum Likelihood Estimation

                                 Standard                 Approx
    Parameter      Estimate         Error    t Value    Pr > |t|     Lag    Variable    Shift

    MA1,1           0.62283       0.04461      13.96      <.0001      12    ywine           0
    NUM1            0.83707       0.04771      17.54      <.0001       0    s1              0
    NUM2            0.79690       0.11601       6.87      <.0001       0    ctrl            0
    NUM3            1.72554       0.14769      11.68      <.0001       0    p1              0
    DEN1,1          0.62256       0.04586      13.58      <.0001       1    p1              0


                                 Variance Estimate      0.031356
                                 Std Error Estimate     0.177075
                                 AIC                    -205.842
                                 SBC                    -186.595
                                 Number of Residuals         347


                               Correlations of Parameter Estimates

               Variable              ywine        s1      ctrl        p1        p1
               Parameter             MA1,1      NUM1      NUM2      NUM3    DEN1,1

               ywine       MA1,1     1.000     0.052    -0.101    -0.005    -0.020
               s1           NUM1     0.052     1.000    -0.391    -0.069    -0.252
               ctrl         NUM2    -0.101    -0.391     1.000    -0.009     0.020
               p1           NUM3    -0.005    -0.069    -0.009     1.000    -0.484
               p1         DEN1,1    -0.020    -0.252     0.020    -0.484     1.000


                               Autocorrelation Check of Residuals

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6        2.11      5    0.8337     0.004     0.004     0.051     0.005    -0.058    -0.000
   12        9.20     11    0.6034    -0.012     0.052     0.051     0.103     0.061    -0.001
   18       18.09     17    0.3832     0.096     0.057    -0.016     0.026     0.103     0.016
   24       32.23     23    0.0954     0.002     0.096     0.059    -0.091     0.121     0.048
   30       33.40     29    0.2618     0.008    -0.034    -0.021     0.021    -0.015     0.028
   36       54.67     35    0.0182     0.170    -0.051     0.017     0.026     0.034    -0.146
   42       57.45     41    0.0456     0.044     0.006    -0.032     0.015     0.038     0.049
   48       60.56     47    0.0885     0.000    -0.008     0.038    -0.059    -0.022     0.047


                                    Model for variable ywine

                                 Period(s) of Differencing    12

                                   No mean term in this model.
                                         The SAS System      17:40 Thursday, December 4, 2003   2

                                       The ARIMA Procedure

                                      Moving Average Factors

                                  Factor 1:  1 - 0.62283 B**(12)


                                         Input Number 1

                              Input Variable                     s1
                              Period(s) of Differencing          12
                              Overall Regression Factor    0.837072


                                         Input Number 2

                              Input Variable                   ctrl
                              Period(s) of Differencing          12
                              Overall Regression Factor    0.796901


                                         Input Number 3

                              Input Variable                     p1
                              Period(s) of Differencing          12
                              Overall Regression Factor    1.725545


                                       Denominator Factors

                                  Factor 1:  1 - 0.62256 B**(1)
                                         The SAS System      17:40 Thursday, December 4, 2003   3

                                       The ARIMA Procedure

                                  Name of Variable = RESIDUAL

                               Mean of Working Series    0.024097
                               Standard Deviation        0.174736
                               Number of Observations         347


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0      0.030533        1.00000    |                    |********************|             0
    1    -0.0004578        -.01499    |                  . | .                  |      0.053683
    2    -0.0005307        -.01738    |                  . | .                  |      0.053695
    3     0.0010288        0.03369    |                  . |*.                  |      0.053711
    4    -0.0004325        -.01417    |                  . | .                  |      0.053772
    5    -0.0023502        -.07697    |                  **| .                  |      0.053783
    6    -0.0005605        -.01836    |                  . | .                  |      0.054099
    7    -0.0009862        -.03230    |                  .*| .                  |      0.054117
    8     0.0010313        0.03378    |                  . |*.                  |      0.054173
    9    0.00099694        0.03265    |                  . |*.                  |      0.054233
   10     0.0025608        0.08387    |                  . |**                  |      0.054290
   11     0.0012920        0.04232    |                  . |*.                  |      0.054662
   12    -0.0006085        -.01993    |                  . | .                  |      0.054756
   13     0.0024212        0.07930    |                  . |**                  |      0.054777
   14     0.0011885        0.03892    |                  . |*.                  |      0.055107
   15    -0.0010327        -.03382    |                  .*| .                  |      0.055186
   16    0.00029146        0.00955    |                  . | .                  |      0.055246
   17     0.0026452        0.08664    |                  . |**                  |      0.055251
   18    -0.0000659        -.00216    |                  . | .                  |      0.055641
   19    -0.0004857        -.01591    |                  . | .                  |      0.055641
   20     0.0024567        0.08046    |                  . |**                  |      0.055654
   21     0.0013069        0.04280    |                  . |*.                  |      0.055989
   22    -0.0033282        -.10900    |                  **| .                  |      0.056083
   23     0.0032324        0.10587    |                  . |**                  |      0.056690
   24     0.0010092        0.03305    |                  . |*.                  |      0.057257

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.02121    |                  . | .                  |
                  2        0.01182    |                  . | .                  |
                  3        0.01617    |                  . | .                  |
                  4        0.03338    |                  . |*.                  |
                  5        0.05649    |                  . |*.                  |
                  6        0.03595    |                  . |*.                  |
                  7        0.06520    |                  . |*.                  |
                                         The SAS System      17:40 Thursday, December 4, 2003   4

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8       -0.04287    |                  .*| .                  |
                  9       -0.04090    |                  .*| .                  |
                 10       -0.04964    |                  .*| .                  |
                 11       -0.04138    |                  .*| .                  |
                 12        0.00591    |                  . | .                  |
                 13       -0.07661    |                  **| .                  |
                 14       -0.04498    |                  .*| .                  |
                 15        0.01489    |                  . | .                  |
                 16       -0.02914    |                  .*| .                  |
                 17       -0.07863    |                  **| .                  |
                 18       -0.02081    |                  . | .                  |
                 19       -0.00036    |                  . | .                  |
                 20       -0.06756    |                  .*| .                  |
                 21       -0.03782    |                  .*| .                  |
                 22        0.09265    |                  . |**                  |
                 23       -0.09077    |                  **| .                  |
                 24       -0.02655    |                  .*| .                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.01499    |                  . | .                  |
                  2       -0.01761    |                  . | .                  |
                  3        0.03318    |                  . |*.                  |
                  4       -0.01349    |                  . | .                  |
                  5       -0.07636    |                  **| .                  |
                  6       -0.02238    |                  . | .                  |
                  7       -0.03477    |                  .*| .                  |
                  8        0.03716    |                  . |*.                  |
                  9        0.03223    |                  . |*.                  |
                 10        0.08284    |                  . |**                  |
                 11        0.04077    |                  . |*.                  |
                 12       -0.02261    |                  . | .                  |
                 13        0.08036    |                  . |**                  |
                 14        0.04686    |                  . |*.                  |
                 15       -0.01053    |                  . | .                  |
                 16        0.01528    |                  . | .                  |
                 17        0.08970    |                  . |**                  |
                 18        0.01215    |                  . | .                  |
                 19       -0.01493    |                  . | .                  |
                 20        0.07387    |                  . |*.                  |
                 21        0.04299    |                  . |*.                  |
                 22       -0.10306    |                  **| .                  |
                 23        0.09553    |                  . |**                  |
                 24        0.02819    |                  . |*.                  |
                                         The SAS System      17:40 Thursday, December 4, 2003   5

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6        2.87      6    0.8246    -0.015    -0.017     0.034    -0.014    -0.077    -0.018
   12        7.35     12    0.8336    -0.032     0.034     0.033     0.084     0.042    -0.020
   18       13.39     18    0.7680     0.079     0.039    -0.034     0.010     0.087    -0.002
   24       25.59     24    0.3745    -0.016     0.080     0.043    -0.109     0.106     0.033
                                         The SAS System      17:40 Thursday, December 4, 2003   6

                                       The ARIMA Procedure

                                   Name of Variable = square

                               Mean of Working Series    0.031113
                               Standard Deviation        0.044075
                               Number of Observations         347


                                         Autocorrelations

  Lag    Covariance    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1      Std Error

    0     0.0019426        1.00000    |                    |********************|             0
    1    0.00014193        0.07306    |                  . |*.                  |      0.053683
    2    0.00019724        0.10154    |                  . |**                  |      0.053969
    3    -0.0000447        -.02304    |                  . | .                  |      0.054516
    4    0.00017342        0.08927    |                  . |**                  |      0.054544
    5    0.00025959        0.13363    |                  . |***                 |      0.054964
    6    0.00009562        0.04922    |                  . |*.                  |      0.055892
    7    0.00024179        0.12447    |                  . |**                  |      0.056017
    8    -6.4349E-6        -.00331    |                  . | .                  |      0.056808
    9    0.00004541        0.02338    |                  . | .                  |      0.056809
   10    -0.0000501        -.02581    |                  .*| .                  |      0.056837
   11    -0.0000219        -.01129    |                  . | .                  |      0.056870
   12    -0.0000779        -.04012    |                  .*| .                  |      0.056877
   13    -0.0000222        -.01145    |                  . | .                  |      0.056958
   14    0.00009914        0.05104    |                  . |*.                  |      0.056965
   15    -0.0001217        -.06262    |                  .*| .                  |      0.057097
   16    -0.0000915        -.04708    |                  .*| .                  |      0.057294
   17    -0.0001288        -.06632    |                  .*| .                  |      0.057406
   18    0.00003243        0.01670    |                  . | .                  |      0.057626
   19    0.00001381        0.00711    |                  . | .                  |      0.057640
   20    -0.0001718        -.08842    |                  **| .                  |      0.057642
   21    0.00003698        0.01904    |                  . | .                  |      0.058032
   22    -0.0000459        -.02362    |                  . | .                  |      0.058050
   23    8.03027E-6        0.00413    |                  . | .                  |      0.058078
   24    -0.0000164        -.00845    |                  . | .                  |      0.058079

                                  "." marks two standard errors


                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1       -0.05053    |                  .*| .                  |
                  2       -0.07766    |                  **| .                  |
                  3        0.07929    |                  . |**                  |
                  4       -0.07512    |                  **| .                  |
                  5       -0.10782    |                  **| .                  |
                  6       -0.02929    |                  .*| .                  |
                  7       -0.10355    |                  **| .                  |
                                         The SAS System      17:40 Thursday, December 4, 2003   7

                                       The ARIMA Procedure

                                     Inverse Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  8        0.00574    |                  . | .                  |
                  9        0.01016    |                  . | .                  |
                 10        0.01022    |                  . | .                  |
                 11        0.01019    |                  . | .                  |
                 12        0.06210    |                  . |*.                  |
                 13       -0.00559    |                  . | .                  |
                 14       -0.04380    |                  .*| .                  |
                 15        0.03098    |                  . |*.                  |
                 16        0.02771    |                  . |*.                  |
                 17        0.04954    |                  . |*.                  |
                 18       -0.04096    |                  .*| .                  |
                 19       -0.01955    |                  . | .                  |
                 20        0.08721    |                  . |**                  |
                 21       -0.03998    |                  .*| .                  |
                 22       -0.00927    |                  . | .                  |
                 23        0.00977    |                  . | .                  |
                 24       -0.01474    |                  . | .                  |


                                     Partial Autocorrelations

                Lag    Correlation    -1 9 8 7 6 5 4 3 2 1 0 1 2 3 4 5 6 7 8 9 1

                  1        0.07306    |                  . |*.                  |
                  2        0.09671    |                  . |**                  |
                  3       -0.03735    |                  .*| .                  |
                  4        0.08489    |                  . |**                  |
                  5        0.13043    |                  . |***                 |
                  6        0.01449    |                  . | .                  |
                  7        0.10533    |                  . |**                  |
                  8       -0.02020    |                  . | .                  |
                  9       -0.01497    |                  . | .                  |
                 10       -0.03672    |                  .*| .                  |
                 11       -0.03775    |                  .*| .                  |
                 12       -0.06223    |                  .*| .                  |
                 13       -0.00961    |                  . | .                  |
                 14        0.05307    |                  . |*.                  |
                 15       -0.06036    |                  .*| .                  |
                 16       -0.03618    |                  .*| .                  |
                 17       -0.02380    |                  . | .                  |
                 18        0.02705    |                  . |*.                  |
                 19        0.01920    |                  . | .                  |
                 20       -0.08314    |                  **| .                  |
                 21        0.04079    |                  . |*.                  |
                 22        0.01160    |                  . | .                  |
                 23       -0.00857    |                  . | .                  |
                 24        0.01583    |                  . | .                  |
                                         The SAS System      17:40 Thursday, December 4, 2003   8

                                       The ARIMA Procedure

                              Autocorrelation Check for White Noise

   To        Chi-             Pr >
  Lag      Square     DF     ChiSq    --------------------Autocorrelations--------------------

    6       15.67      6    0.0156     0.073     0.102    -0.023     0.089     0.134     0.049
   12       22.26     12    0.0347     0.124    -0.003     0.023    -0.026    -0.011    -0.040
   18       27.21     18    0.0752    -0.011     0.051    -0.063    -0.047    -0.066     0.017
   24       30.50     24    0.1688     0.007    -0.088     0.019    -0.024     0.004    -0.008
