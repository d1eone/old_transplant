#### Library Loading ####
library(RCurl)
library(jsonlite)

#### Constants and Definitions ####
api_url='https://redcap.partners.org/redcap/api/'
ClinGen_token= '988B6AE24F596A66026E82D50D0796FB'

#### ClinGen API Pull of St. Georges (SGRQ) ####
## Data is from Full St. George's instrument (NOT SGRQ-I)

work3.ILD = postForm(
  uri=api_url,
  token= ClinGen_token,
  content='record',
  format='json',
  type='flat',
  'fields[0]'='bwhild_id',
  'fields[1]'='id',
  'fields[2]'='mrn',
  'fields[3]'='gender',
  'fields[4]'='familyid',
  'fields[5]'='familyname',
  'fields[6]'='demo_last',
  'fields[7]'='smoking_age_reg',
  'fields[8]'='smoked_cigarettes',
  'fields[9]'='packs_per_day',
  'fields[10]'='smoking_cigarettes_now',
  'fields[11]'='age_stop_smoking',
  'fields[12]'='smoking_history',
  'fields[13]'='pack_day',
  'fields[14]'='yearstar',
  'fields[15]'='yearstop',
  'events[0]'='screening_arm_2',
  rawOrLabel='raw',
  rawOrLabelHeaders='raw',
  exportCheckboxLabel='false',
  exportSurveyFields='false',
  exportDataAccessGroups='false',
  returnFormat='json',
  filterLogic='[icf_signature(4)] = 1'#SELECTS those CONSENTED to Clincal Genetics Study (ILD)
)


temp <- postForm(
    uri='https://redcap.partners.org/redcap/api/',
    token='988B6AE24F596A66026E82D50D0796FB',
    content='record',
    format='json',
    type='flat',
    'fields[0]'='bwhild_id',
    'fields[1]'='id',
    'fields[2]'='sgrq_1',
    'fields[3]'='sgrq_2',
    'fields[4]'='sgrq_3',
    'fields[5]'='sgrq_4',
    'fields[6]'='sgrq_5',
    'fields[7]'='sgrq_6',
    'fields[8]'='sgrq_7',
    'fields[9]'='sgrq_8',
    'fields[10]'='sgrq_affects',
    'fields[11]'='sgrq_current_health',
    'fields[12]'='sgrq_final',
    'fields[13]'='sgrq_sect_1_1',
    'fields[14]'='sgrq_sect_1_2',
    'fields[15]'='sgrq_sect_2_1',
    'fields[16]'='sgrq_sect_2_2',
    'fields[17]'='sgrq_sect_2_3',
    'fields[18]'='sgrq_sect_2_4',
    'fields[19]'='sgrq_sect_2_5',
    'fields[20]'='sgrq_sect_2_6',
    'fields[21]'='sgrq_sect_2_7',
    'fields[22]'='sgrq_sect_3_1',
    'fields[23]'='sgrq_sect_3_2',
    'fields[24]'='sgrq_sect_3_3',
    'fields[25]'='sgrq_sect_3_4',
    'fields[26]'='sgrq_sect_3_5',
    'fields[27]'='sgrq_sect_3_6',
    'fields[28]'='sgrq_sect_4_1',
    'fields[29]'='sgrq_sect_4_2',
    'fields[30]'='sgrq_sect_4_3',
    'fields[31]'='sgrq_sect_4_4',
    'fields[32]'='sgrq_sect_4_5',
    'fields[33]'='sgrq_sect_4_6',
    'fields[34]'='sgrq_sect_4_7',
    'fields[35]'='sgrq_sect_4_8',
    'fields[36]'='sgrq_sect_5_1',
    'fields[37]'='sgrq_sect_5_2',
    'fields[38]'='sgrq_sect_5_3',
    'fields[39]'='sgrq_sect_5_4',
    'fields[40]'='sgrq_sect_6_1',
    'fields[41]'='sgrq_sect_6_2',
    'fields[42]'='sgrq_sect_6_3',
    'fields[43]'='sgrq_sect_6_4',
    'fields[44]'='sgrq_sect_6_5',
    'fields[45]'='sgrq_sect_6_6',
    'fields[46]'='sgrq_sect_6_7',
    'fields[47]'='sgrq_sect_6_8',
    'fields[48]'='sgrq_sect_6_9',
    'fields[49]'='sgrq_sect_7_1',
    'fields[50]'='sgrq_sect_7_2',
    'fields[51]'='sgrq_sect_7_3',
    'fields[52]'='sgrq_sect_7_4',
    'fields[53]'='sgrq_sect_7_5',
    'fields[54]'='sgrq_section_1',
    'fields[55]'='sgrq_section_2',
    filterLogic='[icf_signature(4)] = 1', #SELECTS those CONSENTED to Clincal Genetics Study (ILD)
    rawOrLabel='raw',
    rawOrLabelHeaders='raw',
    exportCheckboxLabel='false',
    exportSurveyFields='false',
    exportDataAccessGroups='false',
    returnFormat='json'
  )
SGRQ_ILD = fromJSON(temp)



