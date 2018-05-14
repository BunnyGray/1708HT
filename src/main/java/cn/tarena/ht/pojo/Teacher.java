package cn.tarena.ht.pojo;

public class Teacher extends BaseEntity {
    private String jobNo;
    private String name;
    private String gender;
    private String jobTitle;
    private String cardNo;
    private String phoneNo;
    private String qqNo;
    private String wechatNo;
    private String email;
    private String passwd;
    private String teacherType;
    private String type = "2";

    @Override
    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "Teacher{" + "jobNo='" + jobNo + '\'' + ", name='" + name + '\'' + ", gender='" + gender + '\'' + ", jobTitle='" + jobTitle + '\'' + ", cardNo='" + cardNo + '\'' + ", phoneNo='" + phoneNo + '\'' + ", qqNo='" + qqNo + '\'' + ", wechatNo='" + wechatNo + '\'' + ", email='" + email + '\'' + ", passwd='" + passwd + '\'' + ", teacherType='" + teacherType + '\'' + '}';
    }

    public String getJobNo() {
        return jobNo;
    }

    public void setJobNo(String jobNo) {
        this.jobNo = jobNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getQqNo() {
        return qqNo;
    }

    public void setQqNo(String qqNo) {
        this.qqNo = qqNo;
    }

    public String getWechatNo() {
        return wechatNo;
    }

    public void setWechatNo(String wechatNo) {
        this.wechatNo = wechatNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getTeacherType() {
        return teacherType;
    }

    public void setTeacherType(String teacherType) {
        this.teacherType = teacherType;
    }
}