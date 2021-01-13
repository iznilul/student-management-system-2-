package admin.ass.hole;

public class User {
    private String UserName;
    private String Password;
    public User(){
        super();
    }
    public User(String userName, String password){
        this.UserName=userName;
        this.Password= password;
    }

    public void setUserName(String userName) {
        this.UserName = userName;
    }
    public String getUserName(){
        return UserName;
    }
    public void setPassword(String password){
        this.Password=password;
    }
    public String getPassword(){
        return Password;
    }
}
