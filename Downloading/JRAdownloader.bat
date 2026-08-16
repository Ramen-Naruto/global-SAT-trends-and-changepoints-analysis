cd /d "C:\pathtodata\JRA55 Data"

:: DOS batch script to download selected files from rda.ucar.edu using Wget
::
:: Experienced Wget Users: add additional command-line flags here
::   Use the -r (--recursive) option with care
set opts=-N
::
set cert_opt=
:: If you get a certificate verification error (version 1.10 or higher),
:: uncomment the following line:
::set cert_opt=--no-check-certificate
::
:: download the file(s)
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2002/anl_surf.011_tmp.reg_tl319.200201_200212
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2002/anl_surf.051_spfh.reg_tl319.200201_200212
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2003/anl_surf.011_tmp.reg_tl319.200301_200312
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2003/anl_surf.051_spfh.reg_tl319.200301_200312
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2004/anl_surf.011_tmp.reg_tl319.200401_200412
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2004/anl_surf.051_spfh.reg_tl319.200401_200412
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2005/anl_surf.011_tmp.reg_tl319.200501_200512
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2005/anl_surf.051_spfh.reg_tl319.200501_200512
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2006/anl_surf.011_tmp.reg_tl319.200601_200612
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2006/anl_surf.051_spfh.reg_tl319.200601_200612
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2007/anl_surf.011_tmp.reg_tl319.200701_200712
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2007/anl_surf.051_spfh.reg_tl319.200701_200712
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2008/anl_surf.011_tmp.reg_tl319.200801_200812
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2008/anl_surf.051_spfh.reg_tl319.200801_200812
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2009/anl_surf.011_tmp.reg_tl319.200901_200912
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2009/anl_surf.051_spfh.reg_tl319.200901_200912
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2010/anl_surf.011_tmp.reg_tl319.201001_201012
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2010/anl_surf.051_spfh.reg_tl319.201001_201012
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2011/anl_surf.011_tmp.reg_tl319.201101_201112
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2011/anl_surf.051_spfh.reg_tl319.201101_201112
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2012/anl_surf.011_tmp.reg_tl319.201201_201212
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2012/anl_surf.051_spfh.reg_tl319.201201_201212
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2013/anl_surf.011_tmp.reg_tl319.201301_201312
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2013/anl_surf.051_spfh.reg_tl319.201301_201312
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2014/anl_surf.011_tmp.reg_tl319.201401_201412
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2014/anl_surf.051_spfh.reg_tl319.201401_201412
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2015/anl_surf.011_tmp.reg_tl319.201501_201512
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2015/anl_surf.051_spfh.reg_tl319.201501_201512
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2016/anl_surf.011_tmp.reg_tl319.201601_201612
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2016/anl_surf.051_spfh.reg_tl319.201601_201612
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2017/anl_surf.011_tmp.reg_tl319.201701_201712
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2017/anl_surf.051_spfh.reg_tl319.201701_201712
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2018/anl_surf.011_tmp.reg_tl319.201801_201812
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2018/anl_surf.051_spfh.reg_tl319.201801_201812
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2019/anl_surf.011_tmp.reg_tl319.201901_201912
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2019/anl_surf.051_spfh.reg_tl319.201901_201912
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2020/anl_surf.011_tmp.reg_tl319.202001_202012
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2020/anl_surf.051_spfh.reg_tl319.202001_202012
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2021/anl_surf.011_tmp.reg_tl319.202101_202112
wget %cert_opt% %opts% https://data.rda.ucar.edu/d628001/anl_surf/2021/anl_surf.051_spfh.reg_tl319.202101_202112


