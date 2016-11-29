CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  start TIMESTAMP,
  lenght INTEGER,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);

CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
