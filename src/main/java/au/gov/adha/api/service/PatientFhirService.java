package au.gov.adha.api.service;

import org.hl7.fhir.r4.model.Patient;


public interface PatientFhirService {

    public void heavyProcessing(Patient patient);
    
    public Patient getPatientById(String id);

    public Patient saveOrUpdatePatient(Patient patient);

    public void deletePatient(String id);
}