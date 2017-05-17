package org.apache.collab.monitor.server.model;

import java.util.Enumeration;
import java.util.Vector;

public class TeamListBean {
	
	public Enumeration getTeamDetails()
	{
		Vector v= new Vector();
		v.add("TeamJack");
		v.add("TeamGem");
		v.add("TeamJill");
		v.add("TeamAttack");
		Enumeration enum1= v.elements();
		return enum1;
	}

}
