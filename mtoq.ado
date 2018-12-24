
capture program drop mtoq
program define mtoq
version 14.0
syntax varlist(min=1), by(string) [Statistics(string)]
	
	*a.default setting
	if("`statistics'"==""){
		local statistics "mean"
	}
	
	*b.decomposite the `by' into 2 parts
	local n=wordcount("`by'")
	if(`n'==1){
		local panelid ""
		local timeid `by'
	}
	else{
		tokenize `by'
		local panelid `1'
		local timeid  `2'
	}
	
	*c.time index convertion
	tempvar t1
	gen `t1' = dofm(`timeid')
	gen tq   = qofd(`t1')
	format tq %tq
	
	*d.egen funcion to calculation
	foreach var in `varlist'{
		bys `panelid' tq: egen q_`var'=`statistics'(`var')
	}
	
end


*mtoq Ri, by(stkcd ym) S(mean)

