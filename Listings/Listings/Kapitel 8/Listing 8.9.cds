-- Listing 8.9.sql
-- Beispiel f�r die Definition einer CDS-Tabellenfunktion

 
@EndUserText.label: 'Country texts'
define table function z_country_text
with parameters 
@Environment.systemField: #CLIENT mandt:mandt,
@Environment.systemField: #SYSTEM_LANGUAGE sy_langu:langu
returns {
  mandt:mandt;
  country:land1;
  text:landx50; 
}
implemented by method zjb_cl_country=>get_country_text;
