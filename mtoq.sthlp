{smcl}
{right:version:  1.0.0}
{cmd:help mtoq} {right:December 24, 2018}
{hline}

{title:Title}

{p 4 8}{cmd:mtoq}  -  transfer the monthly data to quarterly data by egen calculation {p_end}


{title:Syntax}

{p 8 15 2}
{cmd:mtoq}
{cmd:varlist(min=1)} 
{cmd:,} 
{cmd:by(stockID timeID)}
[{cmd:Statistics(string)}]


{title:Description}

{p 4 4 2} {cmd: varlist} is the variable object to transform. {p_end}

{p 4 4 2} {cmd: by} is the grouping variable, and it's almost stock id and time id. {p_end}

{p 4 4 2} {cmd: Statistics} is the option in egen, and it's usually mean or sum, where the default is mean. {p_end}

{title:Example}
 {p 4 8 2}{stata "mtoq LogReturn, by(stkcd ym) s(sum)" :. mtoq LogReturn, by(stkcd ym) s(sum)} {p_end}



{title:Author}

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: *
*                                                                                *
*  DevinChu                                                                      *
*  Department of Finance and Insurance, School of Business, NanJing University   *
*  Email: zhuhong_bing@163.com                                                   *
*                                                                                *
*::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
