(defrule glaucoma_test_80pct "This tests whether the disease is glaucoma" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(medical_history(pre_existing "diabetic"))
=>
(assert (diagnosis(name glaucoma_80pct)))
(printout t "80% chance the patient has GLAUCOMA, recommend laser surgery or eye drops" crlf)
)

(defrule glaucoma_test_60pct "This tests whether the disease is glaucoma with 60% confidence" 
	(symptom(name "tearing"))
	(observation(name "excessive tearing"))
	(tonometry_result(result "longer than normal"))
	(not (medical_history(pre_existing "diabetic")))
=>
(assert (diagnosis(name glaucoma_60pct)))
(printout t "60% chance patient has GLAUCOMA, recommend diabetic test" crlf)
)

(defrule cataract_test "This tests cataract disease"
(symptom(name "poor color perception"|"loss of night vision"|"blurred vision"|"halos around bright light"))
(observation (name "Patient is sensitive to light and glare"))
(slit_lamp_result(result "positive"))
=>
(assert (diagnosis(name cataract)))
(printout t "Patient has CATARACT, recommend anti-glare sunglasses or magnifying lenses" crlf)
)

(defrule macular_degeneration_test "This tests Macular degeneration disease"
(symptom(name "loss of vision"))
(patient (age "55"))
(goldmann_perimeter_result(result "positive"))
=>
(assert (diagnosis(name retinal_degeneration)))
(printout t "Patient has Macular degeneration, recommend anti-VEGF therapy" crlf)
)

(defrule diabetic_retinopathy_test "This tests Diabetic retinopathy disease"
(symptom(name "redness"|"pain"|"itching"|"oozing"|"swelling"))
(medical_history (pre_existing "diabetic"))
(ophthalmoscopy_result(result "positive"))
=>
(assert (diagnosis(name diabetic_retinopathy)))
(printout t "Patient has Diabetic retinopathy, recommend photocoagulation" crlf)
)

(defrule keratoconus_test "This tests Keratoconus disease"
(symptom(name "loss of vision"|""))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name keratoconus)))
(printout t "Patient has Keratoconus, recommend eye glasses, intacs, collagen cross-linking or corneal transplant" crlf)
)

(defrule  dry_eye_test "This tests Dry eye disease"
(symptom(name "loss of vision"))
(patient (age "55"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name dry_eye)))
(printout t "Patient has Dry eye, recommend eyedrops or gel inserts and ointments" crlf)
)

(defrule  conjunctivitis_pinkeye_test "This tests Conjunctivitis (pinkeye) disease"
(symptom(name "redness and pain in the eye"|"skin irritation around the eye"|"swelling or itchiness around the eyes"))
(patient (age "55"))
(retinal_examination_result(result "positive"))
=>
(assert (diagnosis(name dry_eye)))
(printout t "Patient has Conjunctivitis (pinkeye), recommend antibiotic eye drops and ointments" crlf)
)