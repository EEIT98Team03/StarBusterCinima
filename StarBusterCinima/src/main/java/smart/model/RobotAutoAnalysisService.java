package smart.model;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RobotAutoAnalysisService {
	@Transactional(readOnly=true)
	public void method() {
		
	}
}
