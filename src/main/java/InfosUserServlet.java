
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import fr.devavance.metier.beans.User;
import fr.devavance.metier.beans.Users;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bouchaib.lemaire
 */
@WebServlet(urlPatterns = {"/infos"})
public class InfosUserServlet extends HttpServlet {

     
    public final static String KEY_USER = "user";
    public final static String KEY_USERS = "users";
    public final static String KEY_USER_NAME = "user_name";
    public final static String KEY_PROFIL = "profil";
    public final static String KEY_PASSWORD = "password";
    public final static String KEY_AUTH = "auth";
    private Users users;
    
    /**
     * Create a new User Alan
     * @return  User 
     */
    public User createNewUser() {
        // User alan = new User("alan", "mp2023t", "admin", false);
        User alan = new User();
        alan.setUserName("alan");
        alan.setProfil("admin");
        alan.setPassword("mp2023t");
        alan.setAuth(true);
        return alan;
    }
    

    @Override
    public void init() throws ServletException {

        users = new Users();

        users.add(new User("farida", "admin", "pass1"));
        users.add(new User("paul", "user", "pass2"));
        users.add(new User("amina", "admin", "pass1"));
        users.add(new User("karim", "user", "pass1"));
        users.add(new User("jefferson", "password", "pass2"));


        // Farida a été authentifié
        users.get(0).setAuth(true);
        
        users.get(4).setAuth(true);
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        User alan = createNewUser();
        
        request.setAttribute("User", alan);
        request.getSession().setAttribute("users", users);
        
        getServletContext().getRequestDispatcher("/infos_user.jsp").forward(request, response);
    
    }
}
