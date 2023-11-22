package DAO;
import java.util.List;

import Model.Appointment;;
public interface InterfaceAppoint {
	 public List<Appointment> getAll();
	 public int addAppointment(Appointment appointment);
	 public Appointment findAppointment(int id);
	 public boolean deleteAppointment(int id);
	 public boolean editAppointment(Appointment appointment);
}
