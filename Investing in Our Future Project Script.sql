-- How does government spending on health and education affect health outcomes and education attainment in a given country?
-- Looking the years from 2004 to 2013
-- Indicators we are using:
	-- USA vs. Canada	
	-- does higher spending or higher budgets mean better health outcomes and education attainment?
	-- or is there another factor into why those things are better?
	-- hypothesis: yes, higher spending on health and education affects the outcomes positively.
	-- better health outcomes? - life expectancy, mortality rate

-- Health Expenditure per capita (per person) = SH.XPD.PCAP *******************************
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorName = 'Health expenditure per capita (current US$)'
AND "Year" BETWEEN 2004 AND 2013

-- Health expenditure, public (% of government expenditure) = SH.XPD.PUBL.GX.ZS *******************************
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorCode = ('SH.XPD.PUBL.GX.ZS') 
AND "Year" BETWEEN 2004 AND 2013

-- Life expectancy at birth, total (years) = SP.DYN.LE00.IN *******************************
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorCode = ('SP.DYN.LE00.IN') 
AND "Year" BETWEEN 2004 AND 2013

-- mortality rate, infant = SP.DYN.IMRT.IN *******************************
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorCode = 'SP.DYN.IMRT.IN' 
AND "Year" BETWEEN 2004 AND 2013

-- Population ages 65 and above (% of total) = SP.POP.65UP.TO.ZS *******************************
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorCode = 'SP.POP.65UP.TO.ZS' 
AND "Year" BETWEEN 2004 AND 2013

-- Incidence of tuberculosis (per 100,000 people) SH.TBS.INCD
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorCode = 'SH.TBS.INCD' 
AND "Year" BETWEEN 2004 AND 2013

-- Cause of death, by non-communicable diseases (% of total) = SH.DTH.NCOM.ZS -- INCOMPLETE DATA (ONLY 2012)
SELECT *
FROM Indicators i
WHERE IndicatorCode = 'SH.DTH.NCOM.ZS'
AND CountryCode IN ('USA', 'CAN') AND "Year" BETWEEN 2004 AND 2013

--Immunization, DPT (% of children ages 12-23 months) = SH.IMM.IDPT **********************
SELECT *
FROM Indicators i
WHERE IndicatorCode = 'SH.IMM.IDPT'
AND CountryCode IN ('USA', 'CAN') AND "Year" BETWEEN 2004 AND 2013

--Immunization, measles (% of children ages 12-23 months) = SH.IMM.MEAS -- incomplete, only 2012
SELECT *
FROM Indicators i
WHERE IndicatorCode = 'SH.DTH.NCOM.ZS'
AND CountryCode IN ('USA', 'CAN') AND "Year" BETWEEN 2004 AND 2013




SELECT *
FROM Indicators i
WHERE CountryCode IN ('CAN', 'USA')
AND IndicatorName LIKE '%immuni%' AND "Year" BETWEEN 2004 AND 2013


SELECT *
FROM Indicators i
WHERE CountryCode IN ('CAN', 'USA')
AND IndicatorName LIKE '%expenditure%' AND "Year" BETWEEN 2004 AND 2013


--***************************************** EDUCATION *******************************************************
-- adjusted savings: education expenditure current us$ = NY.ADJ.AEDU.CD ******
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorCode = 'NY.ADJ.AEDU.CD' 
AND "Year" BETWEEN 2004 AND 2013

-- Government expenditure on education as % of GDP (%) = SE.XPD.TOTL.GD.ZS
-- Government expenditure per primary student as % of GDP per capita (%) = SE.XPD.PRIM.PC.ZS
-- Government expenditure per secondary student as % of GDP per capita (%) = SE.XPD.SECO.PC.ZS


-- Current education expenditure, total (% of total expenditure in public institutions) = SE.XPD.CTOT.ZS
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SE.XPD.CTOT.ZS'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013 -- missing 2004, 2012, AND 2013.. :/

--Expenditure on education as % of total government expenditure (%) -- missing canada 2004, 2012, 2013
SELECT *
FROM Indicators i
WHERE IndicatorCode = 'SE.XPD.TOTL.GB.ZS'
AND CountryCode IN ('USA', 'CAN') AND "Year" BETWEEN 2004 AND 2013

-- Labor force, total = SL.TLF.TOTL.IN -- calculate % of total which is labor force total
-- Labor force with primary education (% of total) = SL.TLF.PRIM.ZS -- missing... UGH for USA.
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SL.TLF.PRIM.ZS'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013

-- Labor force with secondary education (% of total) = SL.TLF.SECO.ZS -- missing data.. for USA
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SL.TLF.SECO.ZS'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013


-- Unemployment with primary education (% of total unemployment) = SL.UEM.PRIM.ZS ************
-- Unemployment with secondary education (% of total unemployment) = SL.UEM.SECO.ZS ************
SELECT *
FROM Indicators
WHERE IndicatorCode 
	IN ('SL.UEM.PRIM.ZS', 'SL.UEM.SECO.ZS') 
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013
ORDER BY "Year"

-- Net enrolment rate, primary, both sexes (%) = SE.PRM.NENR -- incomplete.. :/ for Canada.
-- Net enrolment rate, secondary, both sexes (%) = SE.SEC.NENR
SELECT *
FROM Indicators
WHERE IndicatorCode 
	IN ('SE.PRM.NENR', 'SE.SEC.NENR') 
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013

-- Enrolment in primary education, both sexes(number) = SE.PRM.ENRL -- MISSING DATA (2012 and 2013 canada)
-- Enrolment in secondary general, both sexes (number) = SE.SEC.ENRL.GC -- missing all canada data... fucking hell.
SELECT *
FROM Indicators
WHERE IndicatorCode IN ('SE.PRM.ENRL', 'SE.SEC.ENRL.GC')
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013





-- JUST TO LOOK AT POPULATION OF BOTH COUNTRIES ---
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SP.POP.TOTL' AND CountryCode IN ('USA', 'CAN') 
AND "Year" BETWEEN 2004 AND 2013





-- education expenditure includes all education levels, but i'm only using primary and secondary
-- missing data for expenditure for each education level.. 
SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorName LIKE '%expenditure%'
WHERE CountryCode IN ('USA','CAN') AND IndicatorCode = 'SE.XPD.TERT.ZS'
--'SE.XPD.SECO.ZS','SE.XPD.PRIM.ZS'
AND "Year" BETWEEN 2004 AND 2013
-- education attainment? - (lower secondary completion rate, total both sexes = indicator code: SE.SEC.CMPT.LO.ZS), 
	--(primary completion rate, total both sexes = indicatorcode: SE.PRM.CMPT.ZS), (school enrollment tertiary)
		-- adult literacy rate? nothing for usa and canada..--
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SE.PRM.CMPT.ZS'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013
ORDER BY IndicatorCode 

-- Gross enrolment ratio, primary, both sexes (%) = SE.PRM.ENRR -- missing 2013 canada.
-- Gross enrolment ratio, secondary, both sexes (%) = SE.SEC.ENRR -- missing canada 2004, 2013 canada.
SELECT *
FROM Indicators
WHERE IndicatorCode IN ('SE.PRM.ENRR', 'SE.SEC.ENRR') 
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013
ORDER BY IndicatorCode 

--Net enrolment rate, primary, both sexes (%) = SE.PRM.NENR -- incomplete
--Net enrolment rate, secondary, both sexes (%) = SE.SEC.NENR -- incomplete (missing a lot for canada)
SELECT *
FROM Indicators
WHERE IndicatorCode IN ('SE.PRM.NENR', 'SE.SEC.NENR') 
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013
-- Teachers in primary education, both sexes (number) SE.PRM.TCHR
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SE.PRM.TCHR'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013

-- Share of youth not in education, employment, or training, total (% of youth population) = SL.UEM.NEET.ZS 
-- missing usa only 2013.
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SL.UEM.NEET.ZS'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013


SELECT *
FROM Indicators i
WHERE CountryCode IN ('USA','CAN') 
AND IndicatorName LIKE '%population%'
AND "Year" BETWEEN 2004 AND 2013

--Population, ages 0-14 (% of total) = SP.POP.0014.TO.ZS
SELECT *
FROM Indicators
WHERE IndicatorCode = 'SP.POP.0014.TO.ZS'
AND CountryCode IN ('USA', 'CAN')
AND "Year" BETWEEN 2004 AND 2013
