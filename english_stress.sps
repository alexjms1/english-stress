SET DECIMAL=DOT.

DATA LIST FILE= "C:/Users/ajame/Dropbox/English_stress/english_stress.txt"  free (",")
ENCODING="Locale"
/ seq * ip (A15) start (A15) finish (A15) browser (A20) os (A57) status 
 * sex (F8.0) urban (F8.0) wealth_class (F8.0) country (F8.0) 
 still_abroad (F8.0) duration (F8.0) major (F8.0) traveled_before 
 (F8.0) overall_score (F8.0) speaking_score (F8.0) Q12_A1 Q13_A1 
 Q14_A1 Q15_A1 Q17_A1 Q18_A1 Q19_A1 Q20_A1 Q21_A1 Q22_A1 Q23_A1 Q24_A1 
 Q25_A1 Q26_A1 Q27_A1 Q28_A1 Q29_A1 Q30_A1 Q31_A1 Q32_A1 Q33_A1 Q34_A1 
 Q35_A1 Q36_A1 Q37_A1 Q38_A1 Q39_A1 Q40_A1 Q41_A1 Q42_A1 Q43_A1 Q44_A1 
 Q45_A1 Q47_A1 native_friends call_native_friends * sex_native (F8.0) 
 sex_chinese (F8.0) community bars_chinese bars_native * 
 wealth_class_trimmed (F8.0) duration_numeric * took_test (F8.0) 
 overall_score_numeric overall_score_numeric_trimmed * 
 overall_score_takers (F8.0) overall_score_trimmed (F8.0) 
 overall_score_trimmed_takers (F8.0) took_speaking_test (F8.0) 
 speaking_score_numeric speaking_score_numeric_trimmed * 
 speaking_score_takers (F8.0) speaking_score_trimmed (F8.0) 
 speaking_score_trimmed_takers (F8.0) confidence stress 
 test_scores_less_trimmed_numeric * good_sample_countries (F8.0) 
 friends_factor (F8.0) 
  .

VARIABLE LABELS
seq "seq" 
 ip "ip" 
 start "start" 
 finish "finish" 
 browser "browser" 
 os "os" 
 status "status" 
 sex "sex" 
 urban "urban" 
 wealth_class "wealth_class" 
 country "country" 
 still_abroad "still_abroad" 
 duration "duration" 
 major "major" 
 traveled_before "traveled_before" 
 overall_score "overall_score" 
 speaking_score "speaking_score" 
 Q12_A1 "Q12_A1" 
 Q13_A1 "Q13_A1" 
 Q14_A1 "Q14_A1" 
 Q15_A1 "Q15_A1" 
 Q17_A1 "Q17_A1" 
 Q18_A1 "Q18_A1" 
 Q19_A1 "Q19_A1" 
 Q20_A1 "Q20_A1" 
 Q21_A1 "Q21_A1" 
 Q22_A1 "Q22_A1" 
 Q23_A1 "Q23_A1" 
 Q24_A1 "Q24_A1" 
 Q25_A1 "Q25_A1" 
 Q26_A1 "Q26_A1" 
 Q27_A1 "Q27_A1" 
 Q28_A1 "Q28_A1" 
 Q29_A1 "Q29_A1" 
 Q30_A1 "Q30_A1" 
 Q31_A1 "Q31_A1" 
 Q32_A1 "Q32_A1" 
 Q33_A1 "Q33_A1" 
 Q34_A1 "Q34_A1" 
 Q35_A1 "Q35_A1" 
 Q36_A1 "Q36_A1" 
 Q37_A1 "Q37_A1" 
 Q38_A1 "Q38_A1" 
 Q39_A1 "Q39_A1" 
 Q40_A1 "Q40_A1" 
 Q41_A1 "Q41_A1" 
 Q42_A1 "Q42_A1" 
 Q43_A1 "Q43_A1" 
 Q44_A1 "Q44_A1" 
 Q45_A1 "Q45_A1" 
 Q47_A1 "Q47_A1" 
 native_friends "native_friends" 
 call_native_friends "call_native_friends" 
 sex_native "sex_native" 
 sex_chinese "sex_chinese" 
 community "community" 
 bars_chinese "bars_chinese" 
 bars_native "bars_native" 
 wealth_class_trimmed "wealth_class_trimmed" 
 duration_numeric "duration_numeric" 
 took_test "took_test" 
 overall_score_numeric "overall_score_numeric" 
 overall_score_numeric_trimmed "overall_score_numeric_trimmed" 
 overall_score_takers "overall_score_takers" 
 overall_score_trimmed "overall_score_trimmed" 
 overall_score_trimmed_takers "overall_score_trimmed_takers" 
 took_speaking_test "took_speaking_test" 
 speaking_score_numeric "speaking_score_numeric" 
 speaking_score_numeric_trimmed "speaking_score_numeric_trimmed" 
 speaking_score_takers "speaking_score_takers" 
 speaking_score_trimmed "speaking_score_trimmed" 
 speaking_score_trimmed_takers "speaking_score_trimmed_takers" 
 confidence "confidence" 
 stress "stress" 
 test_scores_less_trimmed_numeric "test_scores_less_trimmed_numeric" 
 good_sample_countries "good_sample_countries" 
 friends_factor "friends_factor" 
 .

VALUE LABELS
/
sex 
1 "Male" 
 2 "Female" 
/
urban 
1 "Country" 
 2 "Urban" 
/
wealth_class 
1 "Lower Class" 
 2 "Lower-middle class" 
 3 "Middle class" 
 4 "Upper-middle class" 
 5 "Upper class" 
 6 "Extremely Wealthy" 
/
country 
1 "USA" 
 2 "Canada" 
 3 "UK / Ireland" 
 4 "Australia / New Zealand" 
 5 "Germany / France / Holland" 
 6 "Korea / Japan / Singapore" 
 7 "Other" 
/
still_abroad 
1 "Still abroad" 
 2 "Already returned" 
/
duration 
1 "0.5 years" 
 2 "1 year" 
 3 "1.5 years" 
 4 "2 years" 
 5 "3 Years" 
 6 "4 years or more" 
/
major 
1 "STEM" 
 2 "Social sciences" 
 3 "Business" 
 4 "Arts" 
 5 "Languages" 
 6 "Other" 
/
traveled_before 
1 "Never abroad before" 
 2 "Abroad before" 
/
overall_score 
1 "IELTS 4.5 TOEFL 32-34" 
 2 "IELTS 5 TOEFL 35-45" 
 3 "IELTS 5.5 TOEFL 46-59" 
 4 "IELTS 6 TOEFL 60-78" 
 5 "IELTS 6.5 TOEFL 79-93" 
 6 "IELTS 7 TOEFL 94-101" 
 7 "IELTS 7.5 TOEFL 102-109" 
 8 "IELTS 8 TOEFL 110-114" 
 9 "IELTS 8.5 TOEFL 115-117" 
 10 "IELTS 9 TOEFL 118-120" 
 11 "Did not take" 
/
speaking_score 
1 "IELTS 4.5 TOEFL 12-13" 
 2 "IELTS 5 TOEFL 14-15" 
 3 "IELTS 5.5 TOEFL 16-18" 
 4 "IELTS 6 TOEFL 19-20" 
 5 "IELTS 6.5 TOEFL 21-22" 
 6 "IELTS 7 TOEFL 23" 
 7 "IELTS 7.5 TOEFL 24-25" 
 8 "IELTS 8 TOEFL 26-27" 
 9 "IELTS 8.5 TOEFL 28-29" 
 10 "IELTS 9 TOEFL 30" 
 11 "Did not take" 
/
sex_native 
1 "No" 
 2 "Yes" 
/
sex_chinese 
1 "No" 
 2 "Yes" 
/
wealth_class_trimmed 
1 "Lower Class" 
 2 "Lower-middle class" 
 3 "Middle class" 
 4 "Upper-middle class" 
 5 "Upper class" 
 6 "Extremely Wealthy" 
/
took_test 
1 "Did not take test" 
 2 "Took test" 
/
overall_score_takers 
1 "IELTS 4.5 TOEFL 32-34" 
 2 "IELTS 5 TOEFL 35-45" 
 3 "IELTS 5.5 TOEFL 46-59" 
 4 "IELTS 6 TOEFL 60-78" 
 5 "IELTS 6.5 TOEFL 79-93" 
 6 "IELTS 7 TOEFL 94-101" 
 7 "IELTS 7.5 TOEFL 102-109" 
 8 "IELTS 8 TOEFL 110-114" 
 9 "IELTS 8.5 TOEFL 115-117" 
 10 "IELTS 9 TOEFL 118-120" 
/
overall_score_trimmed 
1 "IELTS 5.5 TOEFL 46-59" 
 2 "IELTS 6 TOEFL 60-78" 
 3 "IELTS 6.5 TOEFL 79-93" 
 4 "IELTS 7 TOEFL 94-101" 
 5 "IELTS 7.5 TOEFL 102-109" 
 6 "IELTS 8 TOEFL 110-114" 
 7 "Did not take" 
/
overall_score_trimmed_takers 
1 "IELTS 5.5 TOEFL 46-59" 
 2 "IELTS 6 TOEFL 60-78" 
 3 "IELTS 6.5 TOEFL 79-93" 
 4 "IELTS 7 TOEFL 94-101" 
 5 "IELTS 7.5 TOEFL 102-109" 
 6 "IELTS 8 TOEFL 110-114" 
/
took_speaking_test 
1 "Did not take test" 
 2 "Took test" 
/
speaking_score_takers 
1 "IELTS 4.5 TOEFL 12-13" 
 2 "IELTS 5 TOEFL 14-15" 
 3 "IELTS 5.5 TOEFL 16-18" 
 4 "IELTS 6 TOEFL 19-20" 
 5 "IELTS 6.5 TOEFL 21-22" 
 6 "IELTS 7 TOEFL 23" 
 7 "IELTS 7.5 TOEFL 24-25" 
 8 "IELTS 8 TOEFL 26-27" 
 9 "IELTS 8.5 TOEFL 28-29" 
 10 "IELTS 9 TOEFL 30" 
/
speaking_score_trimmed 
1 "IELTS 5.5 TOEFL 16-18" 
 2 "IELTS 6 TOEFL 19-20" 
 3 "IELTS 6.5 TOEFL 21-22" 
 4 "IELTS 7 TOEFL 23" 
 5 "IELTS 7.5 TOEFL 24-25" 
 6 "IELTS 8 TOEFL 26-27" 
 7 "Did not take" 
/
speaking_score_trimmed_takers 
1 "IELTS 5.5 TOEFL 16-18" 
 2 "IELTS 6 TOEFL 19-20" 
 3 "IELTS 6.5 TOEFL 21-22" 
 4 "IELTS 7 TOEFL 23" 
 5 "IELTS 7.5 TOEFL 24-25" 
 6 "IELTS 8 TOEFL 26-27" 
/
good_sample_countries 
1 "Lower sample" 
 2 "Higher sample" 
/
friends_factor 
1 "1" 
 2 "2" 
 3 "3" 
 4 "4" 
 5 "5" 
.
VARIABLE LEVEL wealth_class, duration, overall_score, speaking_score, 
 wealth_class_trimmed, overall_score_takers, overall_score_trimmed, 
 overall_score_trimmed_takers, speaking_score_takers, 
 speaking_score_trimmed, speaking_score_trimmed_takers 
 (ordinal).
VARIABLE LEVEL seq, status, Q12_A1, Q13_A1, Q14_A1, Q15_A1, Q17_A1, Q18_A1, Q19_A1, 
 Q20_A1, Q21_A1, Q22_A1, Q23_A1, Q24_A1, Q25_A1, Q26_A1, Q27_A1, 
 Q28_A1, Q29_A1, Q30_A1, Q31_A1, Q32_A1, Q33_A1, Q34_A1, Q35_A1, 
 Q36_A1, Q37_A1, Q38_A1, Q39_A1, Q40_A1, Q41_A1, Q42_A1, Q43_A1, 
 Q44_A1, Q45_A1, Q47_A1, native_friends, call_native_friends, 
 community, bars_chinese, bars_native, duration_numeric, 
 overall_score_numeric, overall_score_numeric_trimmed, 
 speaking_score_numeric, speaking_score_numeric_trimmed, confidence, 
 stress, test_scores_less_trimmed_numeric 
 (scale).

EXECUTE.
