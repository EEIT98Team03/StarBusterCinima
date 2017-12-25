package adminstrator.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminstratorService {
	
	@Autowired
	AdminstratorDAO adminstratorDAO;
	
	@Transactional(readOnly=true)
	public AdministratorBean selectByEmail(String email) {
		if(email!=null && email.trim().length()!=0) {
			return adminstratorDAO.selectByEmail(email);
		}
		return null;
	}
	public AdministratorBean checkAdminIdentity(String email,String password) {
		if(email!=null && email.trim().length()!=0 && password!=null && password.trim().length()!=0) {
			AdministratorBean select = this.selectByEmail(email);
			if (select != null) {
				String dbEmail = select.getEmail();
				String dbPassword = select.getPassword();

				if (dbEmail.equals(email) && dbPassword.equals(password)) {
					return select;
				}
			}
		}
		return null;
	}
}
