package admin.ass.hole;
public class Student {
    private String Name;
    private String Gender;
    private String Age;
    private String Phone;
    private String Mail;
    private String Major;
    private String Classnumber;
    private String Hometown;
    private int Num;
    public Student(){
        super();
    }
    public void setName(String name){
        this.Name=name;
    }

    public String getName() {
        return Name;
    }
    public void setGender(String gender){
        this.Gender=gender;
    }

    public String getGender() {
        return Gender;
    }
    public void setAge(String age){
        this.Age=age;
    }

    public String getAge() {
        return Age;
    }
    public void setPhone(String phone){
        this.Phone=phone;
    }

    public String getPhone() {
        return Phone;
    }
    public void setMail(String mail){
        this.Mail=mail;
    }

    public String getMail() {
        return Mail;
    }
    public void setMajor(String major){
        this.Major=major;
    }
    public String getMajor(){
        return Major;
    }
    public void setClassnumber(String classnumber){
        this.Classnumber= classnumber;
    }
    public String getClassnumber(){
        return Classnumber;
    }
    public void setHometown(String hometown){
        this.Hometown=hometown;
    }
    public String getHometown(){
        return Hometown;
    }
    public void setNum(int num){
        this.Num=num;
    }
    public int getNum() {
        return Num;
    }
    public Student(String name,String age,String gender,String phone,String mail,String major,String classnumber,String hometown,int num) {
        this.Name=name;
        this.Age=age;
        this.Gender=gender;
        this.Phone=phone;
        this.Mail=mail;
        this.Major=major;
        this.Classnumber=classnumber;
        this.Hometown=hometown;
        this.Num=num;
    }
}
